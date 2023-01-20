unit XHashNet;

interface

const
// Algorithm
  H_CRC32         = 1;
  H_MD5           = 2;
  H_SHA1          = 3;
  H_SHA256        = 4;
  H_SHA512        = 5;
  H_SHA512_256    = 6;
  H_SHA3_256      = 7;
  H_SHA3_512      = 8;
  H_BLAKE2_128    = 9;
  H_BLAKE2_256    = 10;
  H_BLAKE3_256    = 11;
  H_HAVAL3_128    = 12;
  H_HAVAL3_256    = 13;
  H_RIPEMD_128    = 14;
  H_RIPEMD_256    = 15;
  H_TIGER_128     = 16;
  H_TIGER_192     = 17;
  H_TIGER2_128    = 18;
  H_TIGER2_192    = 19;
  H_MURMURHASH_32 = 20;
  H_XXHASH_32     = 21;

// Error level
  H_HASH_OK                 = 0;
  H_HASHES_IN_PROGRESS      = 1;
  H_FILE_HASHING_DONE       = 2;
  H_PROCESS_DONE            = 3;
  H_PROCESS_ABORTED         = -1;
  H_BAD_FILE_HASH           = -2;
  H_FILE_NOT_FOUND          = -3;
  H_INVALID_HASH_ALGORITHM  = -4;
  H_ERROR_GENERAL           = -5;
  H_INTERNAL_ERROR          = -6;
  H_HASH_GENERATE_ERROR     = -7;
  H_INVALID_HASHHEX         = -8;
  H_INVALID_CHECKSUM_FILE   = -9;
  H_INVALID_DIRECTORY       = -10;
  H_HASH_VERIFY_ERROR       = -11;
  H_CANNOT_CREATE_HASH_FILE = -12;
  H_EMPTY_DIRECTORY         = -13;
  H_INPUT_FILE_NOT_FOUND    = -14;
  H_CANNOT_CREATE_LOG_FILE  = -15;

// Log Mgs ID
  H_LOGMSG_ID_EXPECTEDHASH    = 100;
  H_LOGMSG_ID_CALCULATEDHASH  = 200;
  H_LOGMSG_ID_STATUS          = 300;
  H_LOGMSG_ID_FILENOTFOUND    = 400;
  H_LOGMSG_ID_BADHASH         = 500;
  H_LOGMSG_ID_HASHOK          = 600;
  H_LOGMSG_ID_NULL            = 700;

// Format Str
  VC_STATUS_MSG      = '%d / %d   Ok:  %d   Bad:  %d   Missing:  %d';
  VC_GEN_STATUS_MSG  = '%d / %d';
  VC_CURFILE         = '%s';
  VC_CURPOS          = '%s / %s';
  VC_CURPCT          = '%s%%';

type
  TSingleHashCallback = function(FileName: WideString; FileSize: Extended;
    FileProgress, StatusCode: Integer): Boolean of object;

  TMultiHashCallback = function(FileName: WideString; FileSize: Extended;
    FileProgress, TotalProgress, TotalFiles, FileCounted, StatusCode: Integer):
    Boolean of object;


function CalculateHashesForDir(ChecksumFile, BasePath: WideString;
  HashAlgo: Integer; Callback: TMultiHashCallback): Integer; stdcall;
  external 'XHashNext.dll';

function VerifyHashesFromFile(ChecksumFile, BasePath: WideString;
  HashAlgo: Integer; LogFile: Boolean; Callback: TMultiHashCallback): Integer; stdcall;
  external 'XHashNext.dll';

function VerifyHashesAutoFromFile(ChecksumFile, BasePath: WideString;
  LogFile: Boolean; Callback: TMultiHashCallback): Integer; stdcall;
  external 'XHashNext.dll';

// For Single Files //
function CalculateFileHash(const FileName: WideString; const HashAlgo: Integer;
  Callback: TSingleHashCallback): WideString; stdcall;
  external 'XHashNext.dll';

function VerifyFileHash(FileName, HashHexStr: WideString;
  HashAlgo: Integer; LogFile: Boolean; Callback: TSingleHashCallback): Integer; stdcall;
  external 'XHashNext.dll';
//

function SetHashLogMessage(const MessageText: WideString; const MsgID: Integer): Boolean; stdcall;
  external 'XHashNext.dll';

procedure SetHashLogFile(const FileName: WideString); stdcall;
  external 'XHashNext.dll';

procedure StopHashProcess; stdcall;
  external 'XHashNext.dll';

procedure PauseHashProcess; stdcall;
  external 'XHashNext.dll';

procedure ResumeHashProcess; stdcall;
  external 'XHashNext.dll';

function ByteOrTb(const Float: extended): WideString; stdcall;
  external 'XHashNext.dll';

implementation

end.
