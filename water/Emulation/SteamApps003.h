#ifndef __steam_api__SteamApps__
#define __steam_api__SteamApps__

#include <iostream>
#include "ISteamApps003.h"

class SteamApps003 : public ISteamApps003
{
public:
    virtual bool BIsSubscribed();
	virtual bool BIsLowViolence();
	virtual bool BIsCybercafe();
	virtual bool BIsVACBanned();
	virtual const char *GetCurrentGameLanguage();
	virtual const char *GetAvailableGameLanguages();
    
	// only use this member if you need to check ownership of another game related to yours, a demo for example
	virtual bool BIsSubscribedApp(AppId_t nAppID);
    
	// Takes AppID of DLC and checks if the user owns the DLC & if the DLC is installed
	virtual bool BIsDlcInstalled(AppId_t nAppID);

};

#endif /* defined(__steam_api__SteamApps__) */
