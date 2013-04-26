#include "SteamRemoteStorage007.h"
#include <stdio.h>

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

bool SteamRemoteStorage007::FileWrite(const char *pchFile, const void *pvData, int32 cubData)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileWrite");
    NSData *toWrite = [NSData dataWithBytes:pvData length:cubData];
    [this->cloud writeData:toWrite toFile:
     [NSString stringWithUTF8String:pchFile]];
    
    return true;
}

int32 SteamRemoteStorage007::FileRead(const char *pchFile, void *pvData, int32 cubDataToRead)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileRead");
    return [this->cloud readDataFromFile:
            [NSString stringWithUTF8String:pchFile]
                              intoBuffer:pvData length:cubDataToRead];
}

bool SteamRemoteStorage007::FileForget(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileForget");
    return true;
}

bool SteamRemoteStorage007::FileDelete(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileDelete");
    [this->cloud deleteFile:[NSString stringWithUTF8String:pchFile]];
    return true;
}

SteamAPICall_t SteamRemoteStorage007::FileShare(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileShare");
    return 0;
}

bool SteamRemoteStorage007::SetSyncPlatforms(const char *pchFile,
                                             ERemoteStoragePlatform eRemoteStoragePlatform)
{
    DDLogCVerbose(@"SteamRemoteStorage007::SetSyncPlatforms");
    return true;
}

bool SteamRemoteStorage007::FileExists(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FileExists");
    return [this->cloud fileExists:[NSString stringWithUTF8String:pchFile]];
}

bool SteamRemoteStorage007::FilePersisted(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::FilePersisted");
    return true;
}

int32 SteamRemoteStorage007::GetFileSize(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetFileSize");
    NSData *fileData = [this->cloud dataFromFile:
                        [NSString stringWithUTF8String:pchFile]];
    
    return [fileData length];
}

int64 SteamRemoteStorage007::GetFileTimestamp(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetFileTimestamp");
    return [this->cloud posixTimestampForFile:[NSString stringWithUTF8String:pchFile]];
    return 0;
}

ERemoteStoragePlatform SteamRemoteStorage007::GetSyncPlatforms(const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetSyncPlatforms");
    return k_ERemoteStoragePlatformOSX;
}

int32 SteamRemoteStorage007::GetFileCount()
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetFileCount");
    return [this->cloud fileCount];
}

const char * SteamRemoteStorage007::GetFileNameAndSize(int iFile,
                                                       int32 *pnFileSizeInBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetFileNameAndSize");
    NSString *file = [this->cloud fileNameForID:iFile];
    
    NSData *fileData = [this->cloud dataFromFile:file];
    *pnFileSizeInBytes = [fileData length];
    
    return [file UTF8String];
}

bool SteamRemoteStorage007::GetQuota(int32 *pnTotalBytes,
                                     int32 *puAvailableBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetQuota");
    return false;
}

bool SteamRemoteStorage007::IsCloudEnabledForAccount()
{
    DDLogCVerbose(@"SteamRemoteStorage007::IsCloudEnabledForAccount");
    return false;
}

bool SteamRemoteStorage007::IsCloudEnabledForApp()
{
    DDLogCVerbose(@"SteamRemoteStorage007::IsCloudEnabledForApp");
    return false;
}

void SteamRemoteStorage007::SetCloudEnabledForApp(bool bEnabled)
{
    DDLogCVerbose(@"SteamRemoteStorage007::SetCloudEnabledForApp");
    return;
}

SteamAPICall_t SteamRemoteStorage007::UGCDownload(UGCHandle_t hContent)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UGCDownload");
    return 0;
}

bool SteamRemoteStorage007::GetUGCDownloadProgress(UGCHandle_t hContent,
                                                   uint32 *puDownloadedBytes,
                                                   uint32 *puTotalBytes)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetUGCDownloadProgress");
    return false;
}

bool SteamRemoteStorage007::GetUGCDetails(UGCHandle_t hContent, AppId_t *pnAppID,
                                          char **ppchName,
                                          int32 *pnFileSizeInBytes,
                                          CSteamID *pSteamIDOwner)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetUGCDetails");
    return false;
}

int32 SteamRemoteStorage007::UGCRead(UGCHandle_t hContent, void *pvData,
                                     int32 cubDataToRead)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UGCRead");
    return 0;
}

int32 SteamRemoteStorage007::GetCachedUGCCount()
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetCachedUGCCount");
    return 0;
}

UGCHandle_t SteamRemoteStorage007::GetCachedUGCHandle(int32 iCachedContent)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetCachedUGCHandle");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::PublishWorkshopFile(const char *pchFile,
                                                          const char *pchPreviewFile,
                                                          AppId_t nConsumerAppId,
                                                          const char *pchTitle,
                                                          const char *pchDescription,
                                                          ERemoteStoragePublishedFileVisibility eVisibility,
                                                          SteamParamStringArray_t *pTags,
                                                          EWorkshopFileType
                                                          eWorkshopFileType)
{
    DDLogCVerbose(@"SteamRemoteStorage007::PublishWorkshopFile");
    return 0;
}

JobID_t SteamRemoteStorage007::CreatePublishedFileUpdateRequest(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::CreatePublishedFileUpdateRequest");
    return 0;
}

bool SteamRemoteStorage007::UpdatePublishedFileFile(JobID_t hUpdateRequest,
                                                    const char *pchFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileFile");
    return false;
}

bool SteamRemoteStorage007::UpdatePublishedFilePreviewFile(JobID_t hUpdateRequest,
                                                           const char *pchPreviewFile)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFilePreviewFile");
    return false;
}

bool SteamRemoteStorage007::UpdatePublishedFileTitle(JobID_t hUpdateRequest,
                                                     const char *pchTitle)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileTitle");
    return false;
}

bool SteamRemoteStorage007::UpdatePublishedFileDescription(JobID_t hUpdateRequest,
                                                           const char *pchDescription)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileDescription");
    return false;
}

bool SteamRemoteStorage007::UpdatePublishedFileVisibility(JobID_t hUpdateRequest,
                                                          ERemoteStoragePublishedFileVisibility eVisibility)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileVisibility");
    return false;
}

bool SteamRemoteStorage007::UpdatePublishedFileTags(JobID_t hUpdateRequest,
                                                    SteamParamStringArray_t *pTags)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileTags");
    return false;
}

SteamAPICall_t SteamRemoteStorage007::CommitPublishedFileUpdate(JobID_t hUpdateRequest)
{
    DDLogCVerbose(@"SteamRemoteStorage007::CommitPublishedFileUpdate");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::GetPublishedFileDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetPublishedFileDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::DeletePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::DeletePublishedFile");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::EnumerateUserPublishedFiles(uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage007::EnumerateUserPublishedFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::SubscribePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::SubscribePublishedFile");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::EnumerateUserSubscribedFiles(uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage007::EnumerateUserSubscribedFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::UnsubscribePublishedFile(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UnsubscribePublishedFile");
    return 0;
}

bool SteamRemoteStorage007::UpdatePublishedFileSetChangeDescription(JobID_t hUpdateRequest,
                                                                    const char *cszDescription)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdatePublishedFileSetChangeDescription");
    return false;
}

SteamAPICall_t SteamRemoteStorage007::GetPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetPublishedItemVoteDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::UpdateUserPublishedItemVote(PublishedFileId_t unPublishedFileId,
                                                                  bool bVoteUp)
{
    DDLogCVerbose(@"SteamRemoteStorage007::UpdateUserPublishedItemVote");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::GetUserPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId)
{
    DDLogCVerbose(@"SteamRemoteStorage007::GetUserPublishedItemVoteDetails");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::EnumerateUserSharedWorkshopFiles(AppId_t nAppId,
                                                                       CSteamID creatorSteamID,
                                                                       uint32 uStartIndex,
                                                                       SteamParamStringArray_t * pRequiredTags,
                                                                       SteamParamStringArray_t * pExcludedTags)
{
    DDLogCVerbose(@"SteamRemoteStorage007::EnumerateUserSharedWorkshopFiles");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::PublishVideo(EWorkshopVideoProvider eVideoProvider,
                                                   const char *cszVideoAccountName,
                                                   const char *cszVideoIdentifier,
                                                   const char *cszFileName, AppId_t nConsumerAppId,
                                                   const char *cszTitle,
                                                   const char *cszDescription,
                                                   ERemoteStoragePublishedFileVisibility eVisibility,
                                                   SteamParamStringArray_t *pTags)
{
    DDLogCVerbose(@"SteamRemoteStorage007::PublishVideo");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::SetUserPublishedFileAction(PublishedFileId_t unPublishedFileId,
                                                                 EWorkshopFileAction eAction)
{
    DDLogCVerbose(@"SteamRemoteStorage007::SetUserPublishedFileAction");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::EnumeratePublishedFilesByUserAction(EWorkshopFileAction eAction,
                                                                          uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamRemoteStorage007::EnumeratePublishedFilesByUserAction");
    return 0;
}

SteamAPICall_t SteamRemoteStorage007::EnumeratePublishedWorkshopFiles(EWorkshopEnumerationType eType,
                                                                      uint32 uStartIndex,
                                                                      uint32 cDays,
                                                                      uint32 cCount,
                                                                      SteamParamStringArray_t *pTags,
                                                                      SteamParamStringArray_t *pUserTags)
{
    DDLogCVerbose(@"SteamRemoteStorage007::EnumeratePublishedWorkshopFiles");
    return 0;
}
