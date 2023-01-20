unit uTotalCpuUsagePct;

interface

  function GetTotalCpuUsagePct : Double;

implementation

uses
  SysUtils, DateUtils, Windows, PsAPI, TlHelp32, ShellAPI, Generics.Collections;

type
  TProcessID = DWORD;

  TSystemTimesRec = record
    KernelTime: TFileTIme;
    UserTime: TFileTIme;
  end;

  TProcessTimesRec = record
    KernelTime: TFileTIme;
    UserTime: TFileTIme;
  end;

  TProcessCpuUsage = class
    LastSystemTimes: TSystemTimesRec;
    LastProcessTimes: TProcessTimesRec;
    ProcessCPUusagePercentage: Double;
  end;

  TProcessCpuUsageList = TObjectDictionary<TProcessID, TProcessCpuUsage>;

var
  LatestProcessCpuUsageCache : TProcessCpuUsageList;
  LastQueryTime : TDateTime;

(* -------------------------------------------------------------------------- *)

function GetRunningProcessIDs: TArray<TProcessID>;
var
  SnapProcHandle: THandle;
  ProcEntry: TProcessEntry32;
  NextProc: Boolean;
begin
  SnapProcHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if SnapProcHandle <> INVALID_HANDLE_VALUE then
  begin
    try
      ProcEntry.dwSize := SizeOf(ProcEntry);
      NextProc := Process32First(SnapProcHandle, ProcEntry);
      while NextProc do
      begin
        SetLength(Result, Length(Result) + 1);
        Result[Length(Result) - 1] := ProcEntry.th32ProcessID;
        NextProc := Process32Next(SnapProcHandle, ProcEntry);
      end;
    finally
      CloseHandle(SnapProcHandle);
    end;
    TArray.Sort<TProcessID>(Result);
  end;
end;

(* -------------------------------------------------------------------------- *)

function GetProcessCpuUsagePct(ProcessID: TProcessID): Double;
  function SubtractFileTime(FileTime1: TFileTIme; FileTime2: TFileTIme): TFileTIme;
  begin
    Result := TFileTIme(Int64(FileTime1) - Int64(FileTime2));
  end;

var
  ProcessCpuUsage: TProcessCpuUsage;
  ProcessHandle: THandle;
  SystemTimes: TSystemTimesRec;
  SystemDiffTimes: TSystemTimesRec;
  ProcessDiffTimes: TProcessTimesRec;
  ProcessTimes: TProcessTimesRec;

  SystemTimesIdleTime: TFileTime;
  ProcessTimesCreationTime: TFileTime;
  ProcessTimesExitTime: TFileTime;
begin
  Result := 0.0;

  LatestProcessCpuUsageCache.TryGetValue(ProcessID, ProcessCpuUsage);
  if ProcessCpuUsage = nil then
  begin
    ProcessCpuUsage := TProcessCpuUsage.Create;
    LatestProcessCpuUsageCache.Add(ProcessID, ProcessCpuUsage);
  end;
  // method from:
  // http://www.philosophicalgeek.com/2009/01/03/determine-cpu-usage-of-current-process-c-and-c/
  ProcessHandle := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, False, ProcessID);
  if ProcessHandle <> 0 then
  begin
    try
      if GetSystemTimes(SystemTimesIdleTime, SystemTimes.KernelTime, SystemTimes.UserTime) then
      begin
        SystemDiffTimes.KernelTime := SubtractFileTime(SystemTimes.KernelTime, ProcessCpuUsage.LastSystemTimes.KernelTime);
        SystemDiffTimes.UserTime := SubtractFileTime(SystemTimes.UserTime, ProcessCpuUsage.LastSystemTimes.UserTime);
        ProcessCpuUsage.LastSystemTimes := SystemTimes;
        if GetProcessTimes(ProcessHandle, ProcessTimesCreationTime, ProcessTimesExitTime, ProcessTimes.KernelTime, ProcessTimes.UserTime) then
        begin
          ProcessDiffTimes.KernelTime := SubtractFileTime(ProcessTimes.KernelTime, ProcessCpuUsage.LastProcessTimes.KernelTime);
          ProcessDiffTimes.UserTime := SubtractFileTime(ProcessTimes.UserTime, ProcessCpuUsage.LastProcessTimes.UserTime);
          ProcessCpuUsage.LastProcessTimes := ProcessTimes;
          if (Int64(SystemDiffTimes.KernelTime) + Int64(SystemDiffTimes.UserTime)) > 0 then
            Result := (Int64(ProcessDiffTimes.KernelTime) + Int64(ProcessDiffTimes.UserTime)) / (Int64(SystemDiffTimes.KernelTime) + Int64(SystemDiffTimes.UserTime)) * 100;
        end;
      end;
    finally
      CloseHandle(ProcessHandle);
    end;
  end;
end;

(* -------------------------------------------------------------------------- *)

procedure DeleteNonExistingProcessIDsFromCache(const RunningProcessIDs : TArray<TProcessID>);
var
  FoundKeyIdx: Integer;
  Keys: TArray<TProcessID>;
  n: Integer;
begin
  Keys := LatestProcessCpuUsageCache.Keys.ToArray;
  for n := Low(Keys) to High(Keys) do
  begin
    if not TArray.BinarySearch<TProcessID>(RunningProcessIDs, Keys[n], FoundKeyIdx) then
      LatestProcessCpuUsageCache.Remove(Keys[n]);
  end;
end;

(* -------------------------------------------------------------------------- *)

function GetTotalCpuUsagePct(): Double;
var
  ProcessID: TProcessID;
  RunningProcessIDs : TArray<TProcessID>;
begin
  Result := 0.0;
  RunningProcessIDs := GetRunningProcessIDs;

  DeleteNonExistingProcessIDsFromCache(RunningProcessIDs);

  for ProcessID in RunningProcessIDs do
    Result := Result + GetProcessCpuUsagePct( ProcessID );

end;

(* -------------------------------------------------------------------------- *)

initialization
  LatestProcessCpuUsageCache := TProcessCpuUsageList.Create( [ doOwnsValues ] );
  // init:
  GetTotalCpuUsagePct;
finalization
  LatestProcessCpuUsageCache.Free;
end.