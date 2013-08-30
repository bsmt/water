#include <iostream>

#include <stdio.h>

#include "SteamclientAPI.h"
#include "SteamApps003.h"
#include "SteamFriends013.h"
#include "SteamRemoteStorage007.h"
//#include "SteamRemoteStorage010.h"
#include "SteamUser013.h"
#include "SteamUserStats011.h"
#include "SteamUtils005.h"
#include "SteamMatchmaking008.h"
#include "SteamNetworking003.h"

#import "DDLog.h"
#import "DDTTYLogger.h"
#import "WaterFormatter.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_INFO;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

__attribute__((constructor))
void setup()
{
    DDTTYLogger *logger = [DDTTYLogger sharedInstance];
    WaterFormatter *formatter = [[WaterFormatter alloc] init];
    [logger setLogFormatter:formatter];
    [DDLog addLogger:logger];
    
    DDLogCInfo(@"Water loaded");
}

S_API bool STEAM_CALL SteamAPI_Init()
{
    DDLogCVerbose(@"SteamAPI_Init");
    return true;
}

S_API bool STEAM_CALL SteamAPI_InitSafe()
{
    DDLogCVerbose(@"SteamAPI_InitSafe");
    return true;
}

S_API void SteamAPI_RegisterCallback(class CCallbackBase *pCallback, int iCallback)
{
    //DDLogCVerbose(@"SteamAPI_RegisterCallback");
}

S_API void SteamAPI_UnregisterCallback(class CCallbackBase *pCallback)
{
    //DDLogCVerbose(@"SteamAPI_UnregisterCallback");
}

S_API void SteamAPI_RegisterCallResult(class CCallbackBase *pCallback,
                                       SteamAPICall_t hAPICall)
{
    //DDLogCVerbose(@"SteamAPI_RegisterCallResult");
}

S_API void SteamAPI_UnregisterCallResult(class CCallbackBase *pCallback,
                                         SteamAPICall_t hAPICall)
{
    //DDLogCVerbose(@"SteamAPI_UnregisterCallResult");
}

S_API void SteamAPI_RunCallbacks()
{
    //DDLogCVerbose(@"SteamAPI_RunCallbacks");
}

S_API bool SteamAPI_RestartAppIfNecessary(uint32 unOwnAppID)
{
    DDLogCVerbose(@"SteamAPI_RestartAppIfNecessary");
    return false;
}

S_API void SteamAPI_Shutdown()
{
    DDLogCVerbose(@"SteamAPI_Shutdown");
}

S_API_UNSAFE ISteamApps003* STEAM_CALL SteamApps()
{
    DDLogCVerbose(@"SteamApps");
    return new SteamApps003;
}

S_API_UNSAFE ISteamFriends013* STEAM_CALL SteamFriends()
{
    DDLogCVerbose(@"SteamFriends");
    return new SteamFriends013;
}

S_API_UNSAFE ISteamRemoteStorage007* STEAM_CALL SteamRemoteStorage()
{
    DDLogCVerbose(@"SteamRemoteStorage");
    return new SteamRemoteStorage007;
}

S_API_UNSAFE ISteamUser013* STEAM_CALL SteamUser()
{
    DDLogCVerbose(@"SteamUser");
    return new SteamUser013;
}

S_API_UNSAFE ISteamUserStats011* STEAM_CALL SteamUserStats()
{
    DDLogCVerbose(@"SteamUserStats");
    return new SteamUserStats011;
}

S_API_UNSAFE ISteamUtils005* STEAM_CALL SteamUtils()
{
    DDLogCVerbose(@"SteamUtils");
    return new SteamUtils005;
}

S_API_UNSAFE ISteamMatchmaking008* STEAM_CALL SteamMatchmaking()
{
    DDLogCVerbose(@"SteamMatchmaking");
    return new SteamMatchmaking008;
}

S_API_UNSAFE ISteamNetworking003* STEAM_CALL SteamNetworking()
{
    DDLogCVerbose(@"SteamNetworking");
    return new SteamNetworking003;
}

S_API_UNSAFE ISteamMatchmakingServers002* STEAM_CALL SteamMatchmakingServers()
{
    
}
