#include "SteamFriends013.h"
#include "FriendsCommon.h"

#import "DDLog.h"

#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_INFO;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

const char * SteamFriends013::GetPersonaName()
{
    DDLogCVerbose(@"SteamFriends013::GetPersonaName");
    return "Lol";
}

SteamAPICall_t SteamFriends013::SetPersonaName(const char *pchPersonaName)
{
    DDLogCVerbose(@"SteamFriends013::SetPersonaName");
    return 0;
}

EPersonaState SteamFriends013::GetPersonaState()
{
    DDLogCVerbose(@"SteamFriends013::GetPersonaState");
    return k_EPersonaStateOnline;
}

int SteamFriends013::GetFriendCount(int iFriendFlags)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendCount");
    return 0;
}

EFriendRelationship SteamFriends013::GetFriendRelationship(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendRelationship");
    return k_EFriendRelationshipNone;
}

EPersonaState SteamFriends013::GetFriendPersonaState(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendPersonaState");
    return k_EPersonaStateBusy;
}

const char * SteamFriends013::GetFriendPersonaName(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendPersonaName");
    return "Friend";
}

bool SteamFriends013::GetFriendGamePlayed(CSteamID steamIDFriend, FriendGameInfo_t *pFriendGameInfo)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendGamePlayed");
    return false;
}

const char * SteamFriends013::GetFriendPersonaNameHistory(CSteamID steamIDFriend, int iPersonaName)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendPersonaNameHistory");
    return "";
}

bool SteamFriends013::HasFriend(CSteamID steamIDFriend, int iFriendFlags)
{
    DDLogCVerbose(@"SteamFriends013::HasFriend");
    return false;
}

int SteamFriends013::GetClanCount()
{
    DDLogCVerbose(@"SteamFriends013::GetClanCount");
    return 0;
}

const char * SteamFriends013::GetClanName(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::GetClanName");
    return "";
}

const char * SteamFriends013::GetClanTag(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::GetClanTag");
    return "";
}

bool SteamFriends013::GetClanActivityCounts(CSteamID steamID, int *pnOnline, int *pnInGame, int *pnChatting)
{
    DDLogCVerbose(@"SteamFriends013::GetClanActivityCounts");
    return false;
}

SteamAPICall_t SteamFriends013::DownloadClanActivityCounts(CSteamID groupIDs[],
                                                           int nIds)
{
    DDLogCVerbose(@"SteamFriends013::DownloadClanActivityCounts");
    return 0;
}

int SteamFriends013::GetFriendCountFromSource(CSteamID steamIDSource)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendCountFromSource");
    return 0;
}

bool SteamFriends013::IsUserInSource(CSteamID steamIDUser, CSteamID steamIDSource)
{
    DDLogCVerbose(@"SteamFriends013::IsUserInSource");
    return false;
}

void SteamFriends013::SetInGameVoiceSpeaking(CSteamID steamIDUser, bool bSpeaking)
{
    DDLogCVerbose(@"SteamFriends013::SetInGameVoiceSpeaking");
    return;
}

void SteamFriends013::ActivateGameOverlay(const char *pchDialog)
{
    DDLogCVerbose(@"SteamFriends013::ActivateGameOverlay");
    return;
}

void SteamFriends013::ActivateGameOverlayToUser(const char *pchDialog,
                                                CSteamID steamID)
{
    DDLogCVerbose(@"SteamFriends013::ActivateGameOverlayToUser");
    return;
}

void SteamFriends013::ActivateGameOverlayToWebPage(const char *pchURL)
{
    DDLogCVerbose(@"SteamFriends013::ActivateGameOverlayToWebPage");
    return;
}

void SteamFriends013::ActivateGameOverlayToStore(AppId_t nAppID,
                                                 EOverlayToStoreFlag eFlag)
{
    DDLogCVerbose(@"SteamFriends013::ActivateGameOverlayToStore");
    return;
}

void SteamFriends013::SetPlayedWith(CSteamID steamIDUserPlayedWith)
{
    DDLogCVerbose(@"SteamFriends013::SetPlayedWith");
    return;
}

void SteamFriends013::ActivateGameOverlayInviteDialog(CSteamID steamIDLobby)
{
    DDLogCVerbose(@"SteamFriends013::ActivateGameOverlayInviteDialog");
    return;
}

int SteamFriends013::GetSmallFriendAvatar(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetSmallFriendAvatar");
    return 0;
}

int SteamFriends013::GetMediumFriendAvatar(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetMediumFriendAvatar");
    return 0;
}

int SteamFriends013::GetLargeFriendAvatar(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetLargeFriendAvatar");
    return 0;
}

bool SteamFriends013::RequestUserInformation(CSteamID steamIDUser,
                                             bool bRequireNameOnly)
{
    DDLogCVerbose(@"SteamFriends013::RequestUserInformation");
    return false;
}

SteamAPICall_t SteamFriends013::RequestClanOfficerList(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::RequestClanOfficerList");
    return 0;
}

int SteamFriends013::GetClanOfficerCount(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::GetClanOfficerCount");
    return 0;
}

EUserRestriction SteamFriends013::GetUserRestrictions()
{
    DDLogCVerbose(@"SteamFriends013::GetUserRestrictions");
    return k_nUserRestrictionNone;
}

bool SteamFriends013::SetRichPresence(const char *pchKey, const char *pchValue)
{
    DDLogCVerbose(@"SteamFriends013::SetRichPresence");
    return false;
}

void SteamFriends013::ClearRichPresence()
{
    DDLogCVerbose(@"SteamFriends013::ClearRichPresence");
    return;
}

const char * SteamFriends013::GetFriendRichPresence(CSteamID steamIDFriend,
                                                    const char *pchKey)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendRichPresence");
    return "";
}

int SteamFriends013::GetFriendRichPresenceKeyCount(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendRichPresenceKeyCount");
    return 0;
}

const char * SteamFriends013::GetFriendRichPresenceKeyByIndex(CSteamID steamIDFriend,
                                                              int iKey)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendRichPresenceKeyByIndex");
    return "";
}

void SteamFriends013::RequestFriendRichPresence(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::RequestFriendRichPresence");
    return;
}

bool SteamFriends013::InviteUserToGame(CSteamID steamIDFriend,
                                       const char *pchConnectString)
{
    DDLogCVerbose(@"SteamFriends013::InviteUserToGame");
    return false;
}

int SteamFriends013::GetCoplayFriendCount()
{
    DDLogCVerbose(@"SteamFriends013::GetCoplayFriendCount");
    return 0;
}

int SteamFriends013::GetFriendCoplayTime(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendCoplayTime");
    return 0;
}

AppId_t SteamFriends013::GetFriendCoplayGame(CSteamID steamIDFriend)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendCoplayGame");
    return 0;
}

SteamAPICall_t SteamFriends013::JoinClanChatRoom(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::JoinClanChatRoom");
    return 0;
}

bool SteamFriends013::LeaveClanChatRoom(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::LeaveClanChatRoom");
    return true;
}

int SteamFriends013::GetClanChatMemberCount(CSteamID steamIDClan)
{
    DDLogCVerbose(@"SteamFriends013::GetClanChatMemberCount");
    return 0;
}

bool SteamFriends013::SendClanChatMessage(CSteamID steamIDClanChat,
                                          const char *pchText)
{
    DDLogCVerbose(@"SteamFriends013::SendClanChatMessage");
    return false;
}

int SteamFriends013::GetClanChatMessage(CSteamID steamIDClanChat, int iMessage,
                                        void *prgchText, int cchTextMax,
                                        EChatEntryType *peChatEntryType,
                                        CSteamID *pSteamIDChatter)
{
    DDLogCVerbose(@"SteamFriends013::GetClanChatMessage");
    return 0;
}

bool SteamFriends013::IsClanChatAdmin(CSteamID steamIDClanChat, CSteamID steamIDUser)
{
    DDLogCVerbose(@"SteamFriends013::IsClanChatAdmin");
    return false;
}

bool SteamFriends013::IsClanChatWindowOpenInSteam(CSteamID steamIDClanChat)
{
    DDLogCVerbose(@"SteamFriends013::IsClanChatWindowOpenInSteam");
    return false;
}

bool SteamFriends013::OpenClanChatWindowInSteam(CSteamID steamIDClanChat)
{
    DDLogCVerbose(@"SteamFriends013::OpenClanChatWindowInSteam");
    return false;
}

bool SteamFriends013::CloseClanChatWindowInSteam(CSteamID steamIDClanChat)
{
    DDLogCVerbose(@"SteamFriends013::CloseClanChatWindowInSteam");
    return false;
}

bool SteamFriends013::SetListenForFriendsMessages(bool bInterceptEnabled)
{
    DDLogCVerbose(@"SteamFriends013::SetListenForFriendsMessages");
    return false;
}

bool SteamFriends013::ReplyToFriendMessage(CSteamID steamIDFriend,
                                           const char *pchMsgToSend)
{
    DDLogCVerbose(@"SteamFriends013::ReplyToFriendMessage");
    return false;
}

int SteamFriends013::GetFriendMessage(CSteamID steamIDFriend, int iMessageID,
                                      void *pvData, int cubData,
                                      EChatEntryType *peChatEntryType)
{
    DDLogCVerbose(@"SteamFriends013::GetFriendMessage");
    return 0;
}

SteamAPICall_t SteamFriends013::GetFollowerCount(CSteamID steamID)
{
    DDLogCVerbose(@"SteamFriends013::GetFollowerCount");
    return 0;
}

SteamAPICall_t SteamFriends013::IsFollowing(CSteamID steamID)
{
    DDLogCVerbose(@"SteamFriends013::IsFollowing");
    return 0;
}

SteamAPICall_t SteamFriends013::EnumerateFollowingList(uint32 uStartIndex)
{
    DDLogCVerbose(@"SteamFriends013::EnumerateFollowingList");
    return 0;
}