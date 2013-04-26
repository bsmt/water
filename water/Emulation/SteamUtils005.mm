#include "SteamUtils005.h"

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

uint32 SteamUtils005::GetSecondsSinceAppActive()
{
    DDLogCVerbose(@"SteamUtils005::GetSecondsSinceAppActive");
    return 1;
}

uint32 SteamUtils005::GetSecondsSinceComputerActive()
{
    DDLogCVerbose(@"SteamUtils005::GetSecondsSinceComputerActive");
    return 1;
}

EUniverse SteamUtils005::GetConnectedUniverse()
{
    DDLogCVerbose(@"SteamUtils005::GetConnectedUniverse");
    return k_EUniversePublic;
}

uint32 SteamUtils005::GetServerRealTime()
{
    DDLogCVerbose(@"SteamUtils005::GetServerRealTime");
    return time(0);
}

const char * SteamUtils005::GetIPCountry()
{
    DDLogCVerbose(@"SteamUtils005::GetIPCountry");
    return "US";
}

bool SteamUtils005::GetImageSize(int iImage, uint32 *pnWidth, uint32 *pnHeight)
{
    DDLogCVerbose(@"SteamUtils005::GetImageSize");
    return false;
}

bool SteamUtils005::GetImageRGBA(int iImage, uint8 *pubDest, int nDestBufferSize)
{
    DDLogCVerbose(@"SteamUtils005::GetImageRGBA");
    return false;
}

bool SteamUtils005::GetCSERIPPort(uint32 *unIP, uint16 *usPort)
{
    DDLogCVerbose(@"SteamUtils005::GetCSERIPPort");
    return false;
}

uint8 SteamUtils005::GetCurrentBatteryPower()
{
    DDLogCVerbose(@"SteamUtils005::GetCurrentBatteryPower");
    return 255;
}

uint32 SteamUtils005::GetAppID()
{
    DDLogCVerbose(@"SteamUtils005::GetAppID");
    return 1;
}

void SteamUtils005::SetOverlayNotificationPosition(ENotificationPosition eNotificationPosition)
{
    DDLogCVerbose(@"SteamUtils005::SetOverlayNotificationPosition");
}

bool SteamUtils005::IsAPICallCompleted(SteamAPICall_t hSteamAPICall, bool *pbFailed)
{
    DDLogCVerbose(@"SteamUtils005::IsAPICallCompleted");
    return true;
}

ESteamAPICallFailure SteamUtils005::GetAPICallFailureReason(SteamAPICall_t hSteamAPICall)
{
    DDLogCVerbose(@"SteamUtils005::GetAPICallFailureReason");
    return k_ESteamAPICallFailureNetworkFailure;
}

bool SteamUtils005::GetAPICallResult(SteamAPICall_t hSteamAPICall, void *pCallback,
                                     int cubCallback, int iCallbackExpected,
                                     bool *pbFailed)
{
    DDLogCVerbose(@"SteamUtils005::GetAPICallResult");
    return true;
}

void SteamUtils005::RunFrame()
{
    DDLogCVerbose(@"SteamUtils005::RunFrame");
}

uint32 SteamUtils005::GetIPCCallCount()
{
    DDLogCVerbose(@"SteamUtils005::GetIPCCallCount");
    return 0;
}

void SteamUtils005::SetWarningMessageHook(SteamAPIWarningMessageHook_t pFunction)
{
    DDLogCVerbose(@"SteamUtils005::SetWarningMessageHook");
    return;
}

bool SteamUtils005::IsOverlayEnabled()
{
    DDLogCVerbose(@"SteamUtils005::IsOverlayEnabled");
    return false;
}

bool SteamUtils005::BOverlayNeedsPresent()
{
    DDLogCVerbose(@"SteamUtils005::BOverlayNeedsPresent");
    return false;
}

SteamAPICall_t SteamUtils005::CheckFileSignature(const char *szFileName)
{
    DDLogCVerbose(@"SteamUtils005::CheckFileSignature");
    return 0;
}

bool SteamUtils005::ShowGamepadTextInput(EGamepadTextInputMode eInputMode,
                                         EGamepadTextInputLineMode eInputLineMode,
                                         const char *szText, uint32 uMaxLength)
{
    DDLogCVerbose(@"SteamUtils005::ShowGamepadTextInput");
    return true;
}

uint32 SteamUtils005::GetEnteredGamepadTextLength()
{
    DDLogCVerbose(@"SteamUtils005::GetEnteredGamepadTextLength");
    return 0;
}

bool SteamUtils005::GetEnteredGamepadTextInput(char *pchValue, uint32 cchValueMax)
{
    DDLogCVerbose(@"SteamUtils005::GetEnteredGamepadTextInput");
    return true;
}
