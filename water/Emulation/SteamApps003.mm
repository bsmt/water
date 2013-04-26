#include "SteamApps003.h"

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_INFO;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

bool SteamApps003::BIsSubscribed()
{
    DDLogCVerbose(@"SteamApps003::BIsSubscribed");
    return true;
}

bool SteamApps003::BIsLowViolence()
{
    DDLogCVerbose(@"SteamApps003::BIsLowViolence");
    return true;
}

bool SteamApps003::BIsCybercafe()
{
    DDLogCVerbose(@"SteamApps003::BIsCybercafe");
    return false;
}

bool SteamApps003::BIsVACBanned()
{
    DDLogCVerbose(@"SteamApps003::BIsVACBanned");
    return false;
}

const char * SteamApps003::GetCurrentGameLanguage()
{
    DDLogCVerbose(@"SteamApps003::GetCurrentGameLanguage");
    return "english";
}

const char * SteamApps003::GetAvailableGameLanguages()
{
    DDLogCVerbose(@"SteamApps003::GetAvailableGameLanguages");
    return "english";
}

bool SteamApps003::BIsSubscribedApp(AppId_t nAppID)
{
    DDLogCVerbose(@"SteamApps003::BIsSubscribedApp");
    return true;
}

bool SteamApps003::BIsDlcInstalled(AppId_t nAppID)
{
    DDLogCVerbose(@"SteamApps003::BIsDlcInstalled");
    return true;
}
