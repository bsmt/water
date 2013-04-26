#include "SteamRemoteStorage010.h"
#include <stdio.h>

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

bool SteamRemoteStorage010::FileWrite(const char *pchFile, const void *pvData, int32 cubData)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileWrite");
    NSData *toWrite = [NSData dataWithBytes:pvData length:cubData];
    [this->cloud writeData:toWrite toFile:
     [NSString stringWithUTF8String:pchFile]];
    
    return true;
}

int32 SteamRemoteStorage010::FileRead(const char *pchFile, void *pvData, int32 cubDataToRead)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileRead");
    return [this->cloud readDataFromFile:
            [NSString stringWithUTF8String:pchFile]
                              intoBuffer:pvData length:cubDataToRead];
}

bool SteamRemoteStorage010::FileForget(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileForget");
    return true;
}

bool SteamRemoteStorage010::FileDelete(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileDelete");
    [this->cloud deleteFile:[NSString stringWithUTF8String:pchFile]];
    return true;
}

SteamAPICall_t SteamRemoteStorage010::FileShare(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileShare");
    return 0;
}

bool SteamRemoteStorage010::SetSyncPlatforms(const char *pchFile,
                                             ERemoteStoragePlatform eRemoteStoragePlatform)
{
    DDLogCVerbose(@"SteamRemoteStorage010::SetSyncPlatforms");
    return true;
}

GID_t SteamRemoteStorage010::FileWriteStreamOpen(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileWriteStreamOpen");
    return [this->cloud IDForFile:[NSString stringWithUTF8String:pchFile]];
}

EResult SteamRemoteStorage010::FileWriteStreamWriteChunk(GID_t hStream,
                                                         const void *pvData,
                                                         int32 cubData)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileWriteStreamWriteChunk");
    [this->cloud appendData:
     [NSData dataWithBytes:pvData length:cubData] toID:(int)hStream];
    return k_EResultOK;
}

EResult SteamRemoteStorage010::FileWriteStreamClose(GID_t hStream)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileWriteStreamClose");
    return k_EResultOK;
}

EResult SteamRemoteStorage010::FileWriteStreamCancel(GID_t hStream)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileWriteStreamCancel");
    return k_EResultOK;
}

bool SteamRemoteStorage010::FileExists(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FileExists");
    return [this->cloud fileExists:[NSString stringWithUTF8String:pchFile]];
}

bool SteamRemoteStorage010::FilePersisted(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::FilePersisted");
    return true;
}

int32 SteamRemoteStorage010::GetFileSize(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetFileSize");
    NSData *fileData = [this->cloud dataFromFile:
                        [NSString stringWithUTF8String:pchFile]];
    
    return [fileData length];
}

int64 SteamRemoteStorage010::GetFileTimestamp(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetFileTimestamp");
    return 0;
}

ERemoteStoragePlatform SteamRemoteStorage010::GetSyncPlatforms(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetSyncPlatforms");
    return k_ERemoteStoragePlatformOSX;
}

int32 SteamRemoteStorage010::GetFileCount()
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetFileCount");
    return [this->cloud fileCount];
}

const char * SteamRemoteStorage010::GetFileNameAndSize(int iFile,
                                                       int32 *pnFileSizeInBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetFileNameAndSize");
    NSString *file = [this->cloud fileNameForID:iFile];
    
    NSData *fileData = [this->cloud dataFromFile:file];
    *pnFileSizeInBytes = [fileData length];
    
    return [file UTF8String];
}

bool SteamRemoteStorage010::GetQuota(int32 *pnTotalBytes,
                                     int32 *puAvailableBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetQuota");
    return false;
}

bool SteamRemoteStorage010::IsCloudEnabledForAccount()
{
    DDLogCVerbose(@"SteamRemoteStorage010::IsCloudEnabledForAccount");
    return false;
}

bool SteamRemoteStorage010::IsCloudEnabledForApp()
{
    DDLogCVerbose(@"SteamRemoteStorage010::IsCloudEnabledForApp");
    return false;
}

void SteamRemoteStorage010::SetCloudEnabledForApp(bool bEnabled)
{
    DDLogCVerbose(@"SteamRemoteStorage010::SetCloudEnabledForApp");
    return;
}

SteamAPICall_t SteamRemoteStorage010::UGCDownload(UGCHandle_t hContent, uint32 uUnk)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UGCDownload");
    return 0;
}

bool SteamRemoteStorage010::GetUGCDownloadProgress(UGCHandle_t hContent,
                                                   uint32 *puDownloadedBytes,
                                                   uint32 *puTotalBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetUGCDownloadProgress");
    return false;
}

bool SteamRemoteStorage010::GetUGCDetails(UGCHandle_t hContent, AppId_t *pnAppID,
                                          char **ppchName,
                                          int32 *pnFileSizeInBytes,
                                          CSteamID *pSteamIDOwner)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetUGCDetails");
    return false;
}

int32 SteamRemoteStorage010::UGCRead(UGCHandle_t hContent, void *pvData,
                                     int32 cubDataToRead, uint32 uOffset)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UGCRead");
    return 0;
}

int32 SteamRemoteStorage010::GetCachedUGCCount()
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetCachedUGCCount");
    return 0;
}

UGCHandle_t SteamRemoteStorage010::GetCachedUGCHandle(int32 iCachedContent)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetCachedUGCHandle");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::PublishWorkshopFile(const char *pchFile,
                                                          const char *pchPreviewFile,
                                                          AppId_t nConsumerAppId,
                                                          const char *pchTitle,
                                                          const char *pchDescription,
                                                          ERemoteStoragePublishedFileVisibility eVisibility,
                                                          SteamParamStringArray_t *pTags,
                                                          EWorkshopFileType
                                                          eWorkshopFileType)
{
    DDLogCVerbose(@"SteamRemoteStorage010::PublishWorkshopFile");
    return 0;
}

JobID_t SteamRemoteStorage010::CreatePublishedFileUpdateRequest(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::CreatePublishedFileUpdateRequest");
    return 0;
}

bool SteamRemoteStorage010::UpdatePublishedFileFile(JobID_t hUpdateRequest,
                                                    const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileFile");
    return false;
}

bool SteamRemoteStorage010::UpdatePublishedFilePreviewFile(JobID_t hUpdateRequest,
                                                           const char *pchPreviewFile)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFilePreviewFile");
    return false;
}

bool SteamRemoteStorage010::UpdatePublishedFileTitle(JobID_t hUpdateRequest,
                                                     const char *pchTitle)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileTitle");
    return false;
}

bool SteamRemoteStorage010::UpdatePublishedFileDescription(JobID_t hUpdateRequest,
                                                           const char *pchDescription)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileDescription");
    return false;
}

bool SteamRemoteStorage010::UpdatePublishedFileVisibility(JobID_t hUpdateRequest,
                                                          ERemoteStoragePublishedFileVisibility eVisibility)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileVisibility");
    return false;
}

bool SteamRemoteStorage010::UpdatePublishedFileTags(JobID_t hUpdateRequest,
                                                    SteamParamStringArray_t *pTags)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileTags");
    return false;
}

SteamAPICall_t SteamRemoteStorage010::CommitPublishedFileUpdate(JobID_t hUpdateRequest)
{
    DDLogCVerbose(@"SteamRemoteStorage010::CommitPublishedFileUpdate");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::GetPublishedFileDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetPublishedFileDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::DeletePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::DeletePublishedFile");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::EnumerateUserPublishedFiles(uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage010::EnumerateUserPublishedFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::SubscribePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::SubscribePublishedFile");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::EnumerateUserSubscribedFiles(uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage010::EnumerateUserSubscribedFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::UnsubscribePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UnsubscribePublishedFile");
    return 0;
}

bool SteamRemoteStorage010::UpdatePublishedFileSetChangeDescription(JobID_t hUpdateRequest,
                                                                    const char *cszDescription)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdatePublishedFileSetChangeDescription");
    return false;
}

SteamAPICall_t SteamRemoteStorage010::GetPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetPublishedItemVoteDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::UpdateUserPublishedItemVote(PublishedFileId_t unPublishedFileId,
                                                                  bool bVoteUp)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UpdateUserPublishedItemVote");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::GetUserPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage010::GetUserPublishedItemVoteDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::EnumerateUserSharedWorkshopFiles(AppId_t nAppId,
                                                                       CSteamID creatorSteamID,
                                                                       uint32 uStartIndex,
                                                                       SteamParamStringArray_t * pRequiredTags,
                                                                       SteamParamStringArray_t * pExcludedTags)
{
    DDLogCVerbose(@"SteamRemoteStorage010::EnumerateUserSharedWorkshopFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::PublishVideo(EWorkshopVideoProvider eVideoProvider,
                                                   const char *cszVideoAccountName,
                                                   const char *cszVideoIdentifier,
                                                   const char *cszFileName, AppId_t nConsumerAppId,
                                                   const char *cszTitle,
                                                   const char *cszDescription,
                                                   ERemoteStoragePublishedFileVisibility eVisibility,
                                                   SteamParamStringArray_t *pTags)
{
    DDLogCVerbose(@"SteamRemoteStorage010::PublishVideo");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::SetUserPublishedFileAction(PublishedFileId_t unPublishedFileId,
                                                                 EWorkshopFileAction eAction)
{
    DDLogCVerbose(@"SteamRemoteStorage010::SetUserPublishedFileAction");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::EnumeratePublishedFilesByUserAction(EWorkshopFileAction eAction,
                                                                          uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage010::EnumeratePublishedFilesByUserAction");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::EnumeratePublishedWorkshopFiles(EWorkshopEnumerationType eType,
                                                                      uint32 uStartIndex,
                                                                      uint32 cDays,
                                                                      uint32 cCount,
                                                                      SteamParamStringArray_t *pTags,
                                                                      SteamParamStringArray_t *pUserTags)
{
    DDLogCVerbose(@"SteamRemoteStorage010::EnumeratePublishedWorkshopFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage010::UGCDownloadToLocation(UGCHandle_t hContent,
                                                            const char *cszLocation,
                                                            uint32 uUnk)
{
    DDLogCVerbose(@"SteamRemoteStorage010::UGCDownloadToLocation");
    return 0;
}
