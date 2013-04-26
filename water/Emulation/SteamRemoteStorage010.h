#ifndef __steam_api__SteamRemoteStorage__
#define __steam_api__SteamRemoteStorage__

#include <iostream>
#include "ISteamRemoteStorage010.h"

#import "Config.h"
#import "Cloud.h"

class SteamRemoteStorage010 : public ISteamRemoteStorage010
{
public:
    // NOTE
	//
	// Filenames are case-insensitive, and will be converted to lowercase automatically.
	// So "foo.bar" and "Foo.bar" are the same file, and if you write "Foo.bar" then
	// iterate the files, the filename returned will be "foo.bar".
	//
    
    Cloud *cloud;
    
    SteamRemoteStorage010()
    {
        this->cloud = [[Cloud alloc] initWithGame:[Config name]];
    }
    
	// file operations
	virtual bool	FileWrite(const char *pchFile, const void *pvData, int32 cubData);
	virtual int32	FileRead(const char *pchFile, void *pvData, int32 cubDataToRead);
	virtual bool	FileForget(const char *pchFile);
	virtual bool	FileDelete(const char *pchFile);
	virtual SteamAPICall_t FileShare(const char *pchFile);
	virtual bool	SetSyncPlatforms(const char *pchFile, ERemoteStoragePlatform eRemoteStoragePlatform);
    
	virtual GID_t FileWriteStreamOpen(const char *pchFile);
	virtual EResult FileWriteStreamWriteChunk(GID_t hStream, const void *pvData, int32 cubData);
	virtual EResult FileWriteStreamClose(GID_t hStream);
	virtual EResult FileWriteStreamCancel(GID_t hStream);
    
	// file information
	virtual bool	FileExists(const char *pchFile);
	virtual bool	FilePersisted(const char *pchFile);
	virtual int32	GetFileSize(const char *pchFile);
	virtual int64	GetFileTimestamp(const char *pchFile);
	virtual ERemoteStoragePlatform GetSyncPlatforms(const char *pchFile);
    
	// iteration
	virtual int32 GetFileCount();
	virtual const char *GetFileNameAndSize(int iFile, int32 *pnFileSizeInBytes);
    
	// configuration management
	virtual bool GetQuota(int32 *pnTotalBytes, int32 *puAvailableBytes);
	virtual bool IsCloudEnabledForAccount();
	virtual bool IsCloudEnabledForApp();
	virtual void SetCloudEnabledForApp(bool bEnabled);
    
	// user generated content
	virtual SteamAPICall_t UGCDownload(UGCHandle_t hContent, uint32 uUnk); // Returns a RemoteStorageDownloadUGCResult_t callback
	virtual bool GetUGCDownloadProgress(UGCHandle_t hContent, uint32 *puDownloadedBytes, uint32 *puTotalBytes);
	virtual bool	GetUGCDetails(UGCHandle_t hContent, AppId_t *pnAppID, char **ppchName, int32 *pnFileSizeInBytes, CSteamID *pSteamIDOwner);
	virtual int32	UGCRead(UGCHandle_t hContent, void *pvData, int32 cubDataToRead, uint32 uOffset);
    
	// user generated content iteration
	virtual int32	GetCachedUGCCount();
	virtual UGCHandle_t GetCachedUGCHandle(int32 iCachedContent);
    
	// publishing UGC
	virtual SteamAPICall_t PublishWorkshopFile(const char *pchFile, const char *pchPreviewFile, AppId_t nConsumerAppId, const char *pchTitle, const char *pchDescription, ERemoteStoragePublishedFileVisibility eVisibility, SteamParamStringArray_t *pTags, EWorkshopFileType eWorkshopFileType);
	virtual JobID_t CreatePublishedFileUpdateRequest(PublishedFileId_t unPublishedFileId);
	virtual bool UpdatePublishedFileFile(JobID_t hUpdateRequest, const char *pchFile);
	virtual bool UpdatePublishedFilePreviewFile(JobID_t hUpdateRequest, const char *pchPreviewFile);
	virtual bool UpdatePublishedFileTitle(JobID_t hUpdateRequest, const char *pchTitle);
	virtual bool UpdatePublishedFileDescription(JobID_t hUpdateRequest, const char *pchDescription);
	virtual bool UpdatePublishedFileVisibility(JobID_t hUpdateRequest, ERemoteStoragePublishedFileVisibility eVisibility);
	virtual bool UpdatePublishedFileTags(JobID_t hUpdateRequest, SteamParamStringArray_t *pTags);
	virtual SteamAPICall_t CommitPublishedFileUpdate(JobID_t hUpdateRequest);
    
	virtual SteamAPICall_t GetPublishedFileDetails(PublishedFileId_t unPublishedFileId);
	virtual SteamAPICall_t DeletePublishedFile(PublishedFileId_t unPublishedFileId);
	virtual SteamAPICall_t EnumerateUserPublishedFiles(uint32 uStartIndex);
	virtual SteamAPICall_t SubscribePublishedFile(PublishedFileId_t unPublishedFileId);
	virtual SteamAPICall_t EnumerateUserSubscribedFiles(uint32 uStartIndex);
	virtual SteamAPICall_t UnsubscribePublishedFile(PublishedFileId_t unPublishedFileId);
	
	virtual bool UpdatePublishedFileSetChangeDescription(JobID_t hUpdateRequest, const char *cszDescription);
	virtual SteamAPICall_t GetPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId);
	virtual SteamAPICall_t UpdateUserPublishedItemVote(PublishedFileId_t unPublishedFileId, bool bVoteUp);
	virtual SteamAPICall_t GetUserPublishedItemVoteDetails(PublishedFileId_t unPublishedFileId);
	virtual SteamAPICall_t EnumerateUserSharedWorkshopFiles(AppId_t nAppId, CSteamID creatorSteamID, uint32 uStartIndex, SteamParamStringArray_t * pRequiredTags, SteamParamStringArray_t * pExcludedTags);
	virtual SteamAPICall_t PublishVideo(EWorkshopVideoProvider eVideoProvider, const char *cszVideoAccountName, const char *cszVideoIdentifier, const char *cszFileName, AppId_t nConsumerAppId, const char *cszTitle, const char *cszDescription, ERemoteStoragePublishedFileVisibility eVisibility, SteamParamStringArray_t *pTags);
	virtual SteamAPICall_t SetUserPublishedFileAction(PublishedFileId_t unPublishedFileId, EWorkshopFileAction eAction);
	virtual SteamAPICall_t EnumeratePublishedFilesByUserAction(EWorkshopFileAction eAction, uint32 uStartIndex);
	virtual SteamAPICall_t EnumeratePublishedWorkshopFiles(EWorkshopEnumerationType eType, uint32 uStartIndex, uint32 cDays, uint32 cCount, SteamParamStringArray_t *pTags, SteamParamStringArray_t *pUserTags);
	
	virtual SteamAPICall_t UGCDownloadToLocation(UGCHandle_t hContent, const char *cszLocation, uint32 uUnk);

};

#endif /* defined(__steam_api__SteamRemoteStorage__) */
