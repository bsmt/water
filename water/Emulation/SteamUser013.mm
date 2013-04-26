#include "SteamUser013.h"
#include "CSteamID.h"

#import "DDLog.h"
#import "Config.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

HSteamUser SteamUser013::GetHSteamUser()
{
    DDLogCVerbose(@"SteamUser013::GetHSteamUser");
    return 0;
}

bool SteamUser013::BLoggedOn()
{
    DDLogCVerbose(@"SteamUser013::BLoggedOn");
    return true;
}

CSteamID SteamUser013::GetSteamID()
{
    DDLogCVerbose(@"SteamUser013::GetSteamID");
    return *new CSteamID;
}

int SteamUser013::InitiateGameConnection(void *pAuthBlob,
                                         int cbMaxAuthBlob,
                                         CSteamID steamIDGameServer,
                                         uint32 unIPServer,
                                         uint16 usPortServer,
                                         bool bSecure)
{
    DDLogCVerbose(@"SteamUser013::InitiateGameConnection");
    return 0;
}

void SteamUser013::TerminateGameConnection(uint32 unIPServer,
                                           uint16 usPortServer)
{
    DDLogCVerbose(@"SteamUser013::TerminateGameConnection");
}

void SteamUser013::TrackAppUsageEvent(CGameID gameID, EAppUsageEvent eAppUsageEvent,
                                      const char *pchExtraInfo)
{
    DDLogCVerbose(@"SteamUser013::TrackAppUsageEvent");
}

bool SteamUser013::GetUserDataFolder(char *pchBuffer, int cubBuffer)
{
    DDLogCVerbose(@"SteamUser013::GetUserDataFolder");
    NSString *path = [Config saveDir];
    strcpy(pchBuffer, (char *)[path UTF8String]);
    return true;
}

void SteamUser013::StartVoiceRecording()
{
    DDLogCVerbose(@"SteamUser013::StartVoiceRecording");
}

void SteamUser013::StopVoiceRecording()
{
    DDLogCVerbose(@"SteamUser013::StopVoiceRecording");
}

EVoiceResult SteamUser013::GetAvailableVoice(uint32 *pcbCompressed,
                                             uint32 *pcbUncompressed)
{
    DDLogCVerbose(@"SteamUser013::GetAvailableVoice");
    return k_EVoiceResultNoData;
}

EVoiceResult SteamUser013::GetVoice(bool bWantCompressed, void *pDestBuffer,
                                    uint32 cbDestBufferSize,
                                    uint32 *nBytesWritten,
                                    bool bWantUncompressed,
                                    void *pUncompressedDestBuffer,
                                    uint32 cbUncompressedDestBufferSize,
                                    uint32 *nUncompressBytesWritten)
{
    DDLogCVerbose(@"SteamUser013::GetVoice");
    return k_EVoiceResultNoData;
}

EVoiceResult SteamUser013::DecompressVoice(void *pCompressed, uint32 cbCompressed,
                                           void *pDestBuffer,
                                           uint32 cbDestBufferSize,
                                           uint32 *nBytesWritten)
{
    DDLogCVerbose(@"SteamUser013::DecompressVoice");
    return k_EVoiceResultNoData;
}

HAuthTicket SteamUser013::GetAuthSessionTicket(void *pTicket, int cbMaxTicket,
                                               uint32 *pcbTicket)
{
    DDLogCVerbose(@"SteamUser013::GetAuthSessionTicket");
    return 0;
}

EBeginAuthSessionResult SteamUser013::BeginAuthSession(const void *pAuthTicket,
                                                       int cbAuthTicket,
                                                       CSteamID steamID)
{
    DDLogCVerbose(@"SteamUser013::BeginAuthSession");
    return k_EBeginAuthSessionResultOK;
}

void SteamUser013::EndAuthSession(CSteamID steamID)
{
    DDLogCVerbose(@"SteamUser013::EndAuthSession");
}

void SteamUser013::CancelAuthTicket(HAuthTicket hAuthTicket)
{
    DDLogCVerbose(@"SteamUser013::CancelAuthTicket");
}

EUserHasLicenseForAppResult SteamUser013::UserHasLicenseForApp(CSteamID steamID,
                                                               AppId_t appID)
{
    DDLogCVerbose(@"SteamUser013::UserHasLicenseForApp");
    return k_EUserHasLicenseResultHasLicense;
}

bool SteamUser013::BIsBehindNAT()
{
    DDLogCVerbose(@"SteamUser013::BIsBehindNAT");
    return false;
}