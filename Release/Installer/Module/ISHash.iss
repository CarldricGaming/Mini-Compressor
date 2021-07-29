[code]

  type
    THashProgress = function(Filename: Pansichar; FileSize: Extended; OverallProgress,FileProgress: Integer): Boolean;
    THandleHashes = function(Filename: Pansichar; FileSize: Extended; FileProgress, TotalFiles, FilesProcessed, StatusCode: Integer): Boolean;

  const
  DCP_MD5 = 1;
  DCP_SHA1 = 2;
  DCP_SHA256 = 4;
  DCP_SHA512 = 8;

  DCP_INVALID_HASH_ALGORITHM = -4;
  DCP_HASH_OK = 0;
  DCP_FILE_NOT_FOUND = -3;
  DCP_FILE_HASHING_ABORTED = -1;
  DCP_BAD_FILE_HASH= -2;
  DCP_ERROR_GENERAL = -5;
  DCP_HASHES_IN_PROGRESS = 1;

  function CheckFileHash(const Filename,HashHex: PAnsichar; PctOfTotal: extended; callback: THashProgress; DCP_Hash: integer): integer;
  external 'CheckFileHash@files:ISHash.dll stdcall delayload';

  //Filename: Filename of which you need to check its integrity through the source hash value
  //HashHex:  Hash value in hexadecimal number representation (for SHA-1 it's 40 digits long)
  //PctOfTotal: Percentage of total files size (for 1 file the value is 100)
  //callback: Address of callback function that returns boolean value and the OverallProgress & FileProgress values from main function
  //DCP_Hash:
  //
  //          DCP_MD5 = 1;
  //          DCP_SHA1 = 2;
  //          DCP_SHA256 = 4;
  //          DCP_SHA512 = 8; 
  //
  //Callback function values:
  //
  //OverallProgress: 1000 is the max value returned
  //FileProgress: 1000 is the max value returned
  //Filename: Filename of current file
  //Filesize: size of current file in bytes

  function GetFileHash(const Filename: PAnsichar; var HashHex: Pansichar; const DCP_Hash: integer): integer;
  external 'GetFileHash@files:ISHash.dll stdcall delayload';

  //Filename: Filename of which you get hash hex string value
  //HashHex: returned variable value in hexadecimal number representation
  //DCP_Hash:
  //
  //          DCP_MD5 = 1;
  //          DCP_SHA1 = 2;
  //          DCP_SHA256 = 4;
  //          DCP_SHA512 = 8; 
  //
  // DCP_INVALID_HASH_ALGORITHM = -4;
  // DCP_HASH_OK = 0;
  // DCP_ERROR_GENERAL = -5;
  // DCP_FILE_NOT_FOUND = -3;

   procedure CheckHashesFromFile(const Filename, BasePath: Pansichar; callback: THandleHashes; LogFile: Boolean);
   external 'CheckHashesFromFile@files:ISHash.dll stdcall delayload';

   //Filename: Filename of checksums file. The extension must be .md5, .sha1, .sha256, .sha512
   //BasePath: Absolute path (it will be combined with processing files relative path)
   //callback: Address of callback function
   //LogFile:  True to generate status log of processed files (it will be saved where checksums file is located), false otherwise
   //
   //DCP_HASH_OK = 0;
   //DCP_FILE_NOT_FOUND = -3;
   //DCP_FILE_HASHING_ABORTED = -1;
   //DCP_BAD_FILE_HASH= -2;
   //DCP_ERROR_GENERAL = -5;
   //DCP_HASHES_IN_PROGRESS = 1;