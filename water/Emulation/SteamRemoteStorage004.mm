#include "SteamRemoteStorage004.h"
#include <stdio.h>

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

bool SteamRemoteStorage004::FileWrite(const char *pchFile, const void *pvData, int32 cubData)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileWrite");
    NSData *toWrite = [NSData dataWithBytes:pvData length:cubData];
    [this->cloud writeData:toWrite toFile:
     [NSString stringWithUTF8String:pchFile]];
    
    return true;
}

int32 SteamRemoteStorage004::FileRead(const char *pchFile, void *pvData, int32 cubDataToRead)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileRead");
    return [this->cloud readDataFromFile:
            [NSString stringWithUTF8String:pchFile]
                              intoBuffer:pvData length:cubDataToRead];
}

bool SteamRemoteStorage004::FileForget(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileForget");
    return true;
}

bool SteamRemoteStorage004::FileDelete(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileDelete");
    [this->cloud deleteFile:[NSString stringWithUTF8String:pchFile]];
    return true;
}

SteamAPICall_t SteamRemoteStorage004::FileShare(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileShare");
    return 0;
}

bool SteamRemoteStorage004::SetSyncPlatforms(const char *pchFile,
                                             ERemoteStoragePlatform eRemoteStoragePlatform)
{
    DDLogCVerbose(@"SteamRemoteStorage004::SetSyncPlatforms");
    return true;
}

bool SteamRemoteStorage004::FileExists(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FileExists");
    return [this->cloud fileExists:[NSString stringWithUTF8String:pchFile]];
}

bool SteamRemoteStorage004::FilePersisted(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::FilePersisted");
    return true;
}

int32 SteamRemoteStorage004::GetFileSize(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetFileSize");
    NSData *fileData = [this->cloud dataFromFile:
                        [NSString stringWithUTF8String:pchFile]];
    
    return [fileData length];
}

int64 SteamRemoteStorage004::GetFileTimestamp(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetFileTimestamp");
    return [this->cloud posixTimestampForFile:[NSString stringWithUTF8String:pchFile]];
    return 0;
}

ERemoteStoragePlatform SteamRemoteStorage004::GetSyncPlatforms(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetSyncPlatforms");
    return k_ERemoteStoragePlatformOSX;
}

int32 SteamRemoteStorage004::GetFileCount()
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetFileCount");
    return [this->cloud fileCount];
}

const char * SteamRemoteStorage004::GetFileNameAndSize(int iFile,
                                                       int32 *pnFileSizeInBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetFileNameAndSize");
    NSString *file = [this->cloud fileNameForID:iFile];
    
    NSData *fileData = [this->cloud dataFromFile:file];
    *pnFileSizeInBytes = [fileData length];
    
    return [file UTF8String];
}

bool SteamRemoteStorage004::GetQuota(int32 *pnTotalBytes,
                                     int32 *puAvailableBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetQuota");
    return false;
}

bool SteamRemoteStorage004::IsCloudEnabledForAccount()
{
    DDLogCVerbose(@"SteamRemoteStorage004::IsCloudEnabledForAccount");
    return false;
}

bool SteamRemoteStorage004::IsCloudEnabledForApp()
{
    DDLogCVerbose(@"SteamRemoteStorage004::IsCloudEnabledForApp");
    return false;
}

void SteamRemoteStorage004::SetCloudEnabledForApp(bool bEnabled)
{
    DDLogCVerbose(@"SteamRemoteStorage004::SetCloudEnabledForApp");
    return;
}

SteamAPICall_t SteamRemoteStorage004::UGCDownload(UGCHandle_t hContent)
{
    DDLogCVerbose(@"SteamRemoteStorage004::UGCDownload");
    return 0;
}

bool SteamRemoteStorage004::GetUGCDetails(UGCHandle_t hContent, AppId_t *pnAppID,
                                          char **ppchName,
                                          int32 *pnFileSizeInBytes,
                                          CSteamID *pSteamIDOwner)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetUGCDetails");
    return false;
}

int32 SteamRemoteStorage004::UGCRead(UGCHandle_t hContent, void *pvData,
                                     int32 cubDataToRead)
{
    DDLogCVerbose(@"SteamRemoteStorage004::UGCRead");
    return 0;
}

int32 SteamRemoteStorage004::GetCachedUGCCount()
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetCachedUGCCount");
    return 0;
}

UGCHandle_t SteamRemoteStorage004::GetCachedUGCHandle(int32 iCachedContent)
{
    DDLogCVerbose(@"SteamRemoteStorage004::GetCachedUGCHandle");
    return 0;
}
