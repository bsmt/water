#include "SteamUserStats011.h"

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

bool SteamUserStats011::RequestCurrentStats()
{
    DDLogCVerbose(@"SteamUserStats011::RequestCurrentStats");
    return false;
}

bool SteamUserStats011::GetStat(const char *pchName, int32 *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetStat");
    return false;
}

bool SteamUserStats011::GetStat(const char *pchName, float *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetStat");
    return false;
}

bool SteamUserStats011::SetStat(const char *pchName, int32 nData)
{
    DDLogCVerbose(@"SteamUserStats011::SetStat");
    return true;
}

bool SteamUserStats011::SetStat(const char *pchName, float fData)
{
    DDLogCVerbose(@"SteamUserStats011::SetStat");
    return true;
}

bool SteamUserStats011::UpdateAvgRateStat(const char *pchName,
                                          float flCountThisSession,
                                          double dSessionLength)
{
    DDLogCVerbose(@"SteamUserStats011::UpdateAvgRateStat");
    return true;
}

bool SteamUserStats011::GetAchievement(const char *pchName, bool *pbAchieved)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievement");
    *pbAchieved = true;
    return true;
}

bool SteamUserStats011::SetAchievement(const char *pchName)
{
    DDLogCVerbose(@"SteamUserStats011::SetAchievement");
    return true;
}

bool SteamUserStats011::ClearAchievement(const char *pchName)
{
    DDLogCVerbose(@"SteamUserStats011::ClearAchievement");
    return true;
}

bool SteamUserStats011::GetAchievementAndUnlockTime(const char *pchName,
                                                    bool *pbAchieved,
                                                    uint32 *punUnlockTime)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievementAndUnlockTime");
    return false;
}

bool SteamUserStats011::StoreStats()
{
    DDLogCVerbose(@"SteamUserStats011::StoreStats");
    return false;
}

int SteamUserStats011::GetAchievementIcon(const char *pchName)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievementIcon");
    return 0;
}

const char * SteamUserStats011::GetAchievementDisplayAttribute(const char *pchName,
                                                               const char *pchKey)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievementDisplayAttribute");
    return "";
}

bool SteamUserStats011::IndicateAchievementProgress(const char *pchName,
                                                    uint32 nCurProgress,
                                                    uint32 nMaxProgress)
{
    DDLogCVerbose(@"SteamUserStats011::IndicateAchievementProgress");
    return false;
}

uint32 SteamUserStats011::GetNumAchievements(CGameID nGameID)
{
    DDLogCVerbose(@"SteamUserStats011::GetNumAchievements");
    return 0;
}

const char * SteamUserStats011::GetAchievementName(uint32 iAchievement)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievementName");
    return "";
}

SteamAPICall_t SteamUserStats011::RequestUserStats(CSteamID steamIDUser)
{
    DDLogCVerbose(@"SteamUserStats011::RequestUserStats");
    return 0;
}

bool SteamUserStats011::GetUserStat(CSteamID steamIDUser, const char *pchName,
                                    int32 *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetUserStat");
    return false;
}

bool SteamUserStats011::GetUserStat(CSteamID steamIDUser, const char *pchName,
                                    float *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetUserStat");
    return false;
}

bool SteamUserStats011::GetUserAchievement(CSteamID steamIDUser, const char *pchName,
                                           bool *pbAchieved)
{
    DDLogCVerbose(@"SteamUserStats011::GetUserAchievement");
    return false;
}

bool SteamUserStats011::GetUserAchievementAndUnlockTime(CSteamID steamIDUser,
                                                        const char *pchName,
                                                        bool *pbAchieved,
                                                        uint32 *punUnlockTime)
{
    DDLogCVerbose(@"SteamUserStats011::GetUserAchievementAndUnlockTime");
    return false;
}

bool SteamUserStats011::ResetAllStats(bool bAchievementsToo)
{
    DDLogCVerbose(@"SteamUserStats011::ResetAllStats");
    return true;
}

SteamAPICall_t SteamUserStats011::FindOrCreateLeaderboard(const char *pchLeaderboardName,
                                                          ELeaderboardSortMethod eLeaderboardSortMethod,
                                                          ELeaderboardDisplayType eLeaderboardDisplayType)
{
    DDLogCVerbose(@"SteamUserStats011::FindOrCreateLeaderboard");
    return 0;
}

SteamAPICall_t SteamUserStats011::FindLeaderboard(const char *pchLeaderboardName)
{
    DDLogCVerbose(@"SteamUserStats011::FindLeaderboard");
    return 0;
}

const char * SteamUserStats011::GetLeaderboardName(SteamLeaderboard_t hSteamLeaderboard)
{
    DDLogCVerbose(@"SteamUserStats011::GetLeaderboardName");
    return "";
}

int SteamUserStats011::GetLeaderboardEntryCount(SteamLeaderboard_t hSteamLeaderboard)
{
    DDLogCVerbose(@"SteamUserStats011::GetLeaderboardEntryCount");
    return 0;
}

ELeaderboardSortMethod SteamUserStats011::GetLeaderboardSortMethod(SteamLeaderboard_t hSteamLeaderboard)
{
    DDLogCVerbose(@"SteamUserStats011::GetLeaderboardSortMethod");
    return k_ELeaderboardSortMethodNone;
}

ELeaderboardDisplayType SteamUserStats011::GetLeaderboardDisplayType(SteamLeaderboard_t hSteamLeaderboard)
{
    DDLogCVerbose(@"SteamUserStats011::GetLeaderboardDisplayType");
    return k_ELeaderboardDisplayTypeNone;
}

SteamAPICall_t SteamUserStats011::DownloadLeaderboardEntries(SteamLeaderboard_t hSteamLeaderboard,
                                                             ELeaderboardDataRequest eLeaderboardDataRequest,
                                                             int nRangeStart,
                                                             int nRangeEnd)
{
    DDLogCVerbose(@"SteamUserStats011::DownloadLeaderboardEntries");
    return 0;
}

SteamAPICall_t SteamUserStats011::DownloadLeaderboardEntriesForUsers(SteamLeaderboard_t hSteamLeaderboard,
                                                                     CSteamID *prgUsers,
                                                                     int cUsers)
{
    DDLogCVerbose(@"SteamUserStats011::DownloadLeaderboardEntriesForUsers");
    return 0;
}

bool SteamUserStats011::GetDownloadedLeaderboardEntry(SteamLeaderboardEntries_t hSteamLeaderboardEntries,
                                                      int index,
                                                      LeaderboardEntry_t *pLeaderboardEntry,
                                                      int32 pDetails[],
                                                      int cDetailsMax)
{
    DDLogCVerbose(@"SteamUserStats011::GetDownloadedLeaderboardEntry");
    return false;
}

SteamAPICall_t SteamUserStats011::UploadLeaderboardScore(SteamLeaderboard_t hSteamLeaderboard,
                                                         ELeaderboardUploadScoreMethod eLeaderboardUploadScoreMethod,
                                                         int32 nScore,
                                                         const int32 *pScoreDetails,
                                                         int cScoreDetailsCount)
{
    DDLogCVerbose(@"SteamUserStats011::UploadLeaderboardScore");
    return false;
}

SteamAPICall_t SteamUserStats011::AttachLeaderboardUGC(SteamLeaderboard_t hSteamLeaderboard,
                                                       UGCHandle_t hUGC)
{
    DDLogCVerbose(@"SteamUserStats011::AttachLeaderboardUGC");
    return 0;
}

SteamAPICall_t SteamUserStats011::GetNumberOfCurrentPlayers()
{
    DDLogCVerbose(@"SteamUserStats011::GetNumberOfCurrentPlayers");
    return 0;
}

SteamAPICall_t SteamUserStats011::RequestGlobalAchievementPercentages()
{
    DDLogCVerbose(@"SteamUserStats011::RequestGlobalAchievementPercentages");
    return 0;
}

int SteamUserStats011::GetMostAchievedAchievementInfo(char *pchName, uint32 unNameBufLen,
                                                      float *pflPercent,
                                                      bool *pbAchieved)
{
    DDLogCVerbose(@"SteamUserStats011::GetMostAchievedAchievementInfo");
    return -1;
}

int SteamUserStats011::GetNextMostAchievedAchievementInfo(int iIteratorPrevious,
                                                          char *pchName,
                                                          uint32 unNameBufLen,
                                                          float *pflPercent,
                                                          bool *pbAchieved)
{
    DDLogCVerbose(@"SteamUserStats011::GetNextMostAchievedAchievementInfo");
    return -1;
}

bool SteamUserStats011::GetAchievementAchievedPercent(const char *pchName,
                                                      float *pflPercent)
{
    DDLogCVerbose(@"SteamUserStats011::GetAchievementAchievedPercent");
    return false;
}

SteamAPICall_t SteamUserStats011::RequestGlobalStats(int nHistoryDays)
{
    DDLogCVerbose(@"SteamUserStats011::RequestGlobalStats");
    return 0;
}

bool SteamUserStats011::GetGlobalStat(const char *pchStatName, int64 *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetGlobalStat");
    return false;
}

bool SteamUserStats011::GetGlobalStat(const char *pchStatName, double *pData)
{
    DDLogCVerbose(@"SteamUserStats011::GetGlobalStat");
    return false;
}

int32 SteamUserStats011::GetGlobalStatHistory(const char *pchStatName,
                                              int64 *pData,
                                              uint32 cubData)
{
    DDLogCVerbose(@"SteamUserStats011::GetGlobalStatHistory");
    return 0;
}

int32 SteamUserStats011::GetGlobalStatHistory(const char *pchStatName,
                                              double *pData,
                                              uint32 cubData)
{
    DDLogCVerbose(@"SteamUserStats011::GetGlobalStatHistory");
    return 0;
}
