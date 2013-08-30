#ifndef __steam_api__SteamRemoteStorage004__
#define __steam_api__SteamRemoteStorage004__

#include <iostream>
#include "ISteamRemoteStorage004.h"

#import "Config.h"
#import "Cloud.h"

class SteamRemoteStorage004 : public ISteamRemoteStorage004
{
public:
	// NOTE
	//
	// Filenames are case-insensitive, and will be converted to lowercase automatically.
	// So "foo.bar" and "Foo.bar" are the same file, and if you write "Foo.bar" then
	// iterate the files, the filename returned will be "foo.bar".
	//
    
    Cloud *cloud;
    
    SteamRemoteStorage004()
    {
        this->cloud = [[Cloud alloc] initWithGame:[Config name]];
    }

	// file operations
	virtual bool	FileWrite( const char *pchFile, const void *pvData, int32 cubData );
	virtual int32	FileRead( const char *pchFile, void *pvData, int32 cubDataToRead );
	virtual bool	FileForget( const char *pchFile );
	virtual bool	FileDelete( const char *pchFile );
	virtual SteamAPICall_t FileShare( const char *pchFile );
	virtual bool	SetSyncPlatforms( const char *pchFile, ERemoteStoragePlatform eRemoteStoragePlatform );
    
	// file information
	virtual bool	FileExists( const char *pchFile );
	virtual bool	FilePersisted( const char *pchFile );
	virtual int32	GetFileSize( const char *pchFile );
	virtual int64	GetFileTimestamp( const char *pchFile );
	virtual ERemoteStoragePlatform GetSyncPlatforms( const char *pchFile );
    
	// iteration
	virtual int32 GetFileCount();
	virtual const char *GetFileNameAndSize( int iFile, int32 *pnFileSizeInBytes );
    
	// configuration management
	virtual bool GetQuota( int32 *pnTotalBytes, int32 *puAvailableBytes );
	virtual bool IsCloudEnabledForAccount();
	virtual bool IsCloudEnabledForApp();
	virtual void SetCloudEnabledForApp( bool bEnabled );
    
	// user generated content
	virtual SteamAPICall_t UGCDownload( UGCHandle_t hContent ); // Returns a Deprecated_RemoteStorageDownloadUGCResult_t callback
	virtual bool	GetUGCDetails( UGCHandle_t hContent, AppId_t *pnAppID, char **ppchName, int32 *pnFileSizeInBytes, CSteamID *pSteamIDOwner );
	virtual int32	UGCRead( UGCHandle_t hContent, void *pvData, int32 cubDataToRead );
    
	// user generated content iteration
	virtual int32	GetCachedUGCCount();
	virtual	UGCHandle_t GetCachedUGCHandle( int32 iCachedContent );

};

#endif /* defined(__steam_api__SteamRemoteStorage004__) */
