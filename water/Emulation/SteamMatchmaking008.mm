//
//  SteamMatchmaking008.mm
//  steam_api
//
//  Created by bsmt on 8/30/13.
//
//

#include "SteamMatchmaking008.h"

#import "DDLog.h"
#ifdef DEBUG
static const int ddLogLevel = LOG_LEVEL_VERBOSE;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

int SteamMatchmaking008::GetFavoriteGameCount()
{
    return 0;
}

bool SteamMatchmaking008::GetFavoriteGame(int iGame, AppId_t *pnAppID,
                                        uint32 *pnIP, uint16 *pnConnPort,
                                          uint16 *pnQueryPort, uint32 *punFlags,
                                          uint32 *pRTime32LastPlayedOnServer)
{
    DDLogCVerbose(@"SteamMatchmaking008::GetFavoriteGame");
    return false;
}

int SteamMatchmaking008::AddFavoriteGame(AppId_t nAppID, uint32 nIP, uint16 nConnPort,
                                         uint16 nQueryPort, uint32 unFlags,
                                         uint32 rTime32LastPlayedOnServer)
{
    DDLogCVerbose(@"SteamMatchmaking008::AddFavoriteGame");
    return 0;
}

bool SteamMatchmaking008::RemoveFavoriteGame(AppId_t nAppID, uint32 nIP,
                                             uint16 nConnPort, uint16 nQueryPort,
                                             uint32 unFlags)
{
    DDLogCVerbose(@"SteamMatchmaking008::RemoveFavoriteGame");
    return true;
}

SteamAPICall_t SteamMatchmaking008::RequestLobbyList()
{
    DDLogCVerbose(@"SteamMatchmaking008::RequestLobbyList");
    return 0;
}

void SteamMatchmaking008::AddRequestLobbyListStringFilter(const char *pchKeyToMatch,
                                                          const char *pchValueToMatch,
                                                          ELobbyComparison eComparisonType)
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListStringFilter");
}

void SteamMatchmaking008::AddRequestLobbyListNumericalFilter(const char *pchKeyToMatch,
                                                             int nValueToMatch,
                                                             ELobbyComparison eComparisonType)
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListNumericalFilter");
}

void SteamMatchmaking008::AddRequestLobbyListNearValueFilter( const char *pchKeyToMatch, int nValueToBeCloseTo )
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListNearValueFilter");
}

void SteamMatchmaking008::AddRequestLobbyListFilterSlotsAvailable( int nSlotsAvailable )
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListFilterSlotsAvailable");
}

void SteamMatchmaking008::AddRequestLobbyListDistanceFilter( ELobbyDistanceFilter eLobbyDistanceFilter )
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListDistanceFilter");
}

void SteamMatchmaking008::AddRequestLobbyListResultCountFilter( int cMaxResults )
{
    DDLogCVerbose(@"SteamMatchmaking008::AddRequestLobbyListResultCountFilter");
}

SteamAPICall_t SteamMatchmaking008::CreateLobby( ELobbyType eLobbyType, int cMaxMembers )
{
    DDLogCVerbose(@"SteamMatchmaking008::CreateLobby");
    return 0;
}

SteamAPICall_t SteamMatchmaking008::JoinLobby( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::JoinLobby");
    return 0;
}

void SteamMatchmaking008::LeaveLobby( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::LeaveLobby");
}

bool SteamMatchmaking008::InviteUserToLobby( CSteamID steamIDLobby, CSteamID steamIDInvitee )
{
    DDLogCVerbose(@"SteamMatchmaking008::InviteUserToLobby");
    return false;
}

int SteamMatchmaking008::GetNumLobbyMembers( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetNumLobbyMembers");
    return 0;
}

const char *SteamMatchmaking008::GetLobbyData( CSteamID steamIDLobby, const char *pchKey )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyData");
    return "";
}

bool SteamMatchmaking008::SetLobbyData( CSteamID steamIDLobby, const char *pchKey, const char *pchValue )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyData");
    return false;
}

int SteamMatchmaking008::GetLobbyDataCount( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyDataCount");
    return 0;
}

bool SteamMatchmaking008::GetLobbyDataByIndex( CSteamID steamIDLobby, int iLobbyData, char *pchKey, int cchKeyBufferSize, char *pchValue, int cchValueBufferSize )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyDataByIndex");
    return false;
}

bool SteamMatchmaking008::DeleteLobbyData( CSteamID steamIDLobby, const char *pchKey )
{
    DDLogCVerbose(@"SteamMatchmaking008::DeleteLobbyData");
    return false;
}

const char *SteamMatchmaking008::GetLobbyMemberData( CSteamID steamIDLobby, CSteamID steamIDUser, const char *pchKey )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyMemberData");
    return "";
}

void SteamMatchmaking008::SetLobbyMemberData( CSteamID steamIDLobby, const char *pchKey, const char *pchValue )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyMemberData");
}

bool SteamMatchmaking008::SendLobbyChatMsg( CSteamID steamIDLobby, const void *pvMsgBody, int cubMsgBody )
{
    DDLogCVerbose(@"SteamMatchmaking008::SendLobbyChatMsg");
    return false;
}

int SteamMatchmaking008::GetLobbyChatEntry( CSteamID steamIDLobby, int iChatID, CSteamID *pSteamIDUser, void *pvData, int cubData, EChatEntryType *peChatEntryType )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyChatEntry");
    return 0;
}

bool SteamMatchmaking008::RequestLobbyData( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::RequestLobbyData");
    return false;
}

void SteamMatchmaking008::SetLobbyGameServer( CSteamID steamIDLobby, uint32 unGameServerIP, uint16 unGameServerPort, CSteamID steamIDGameServer )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyGameServer");
}

bool SteamMatchmaking008::GetLobbyGameServer( CSteamID steamIDLobby, uint32 *punGameServerIP, uint16 *punGameServerPort, CSteamID *psteamIDGameServer )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyGameServer");
    return false;
}

bool SteamMatchmaking008::SetLobbyMemberLimit( CSteamID steamIDLobby, int cMaxMembers )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyMemberLimit");
    return false;
}

int SteamMatchmaking008::GetLobbyMemberLimit( CSteamID steamIDLobby )
{
    DDLogCVerbose(@"SteamMatchmaking008::GetLobbyMemberLimit");
    return 0;
}

bool SteamMatchmaking008::SetLobbyType( CSteamID steamIDLobby, ELobbyType eLobbyType )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyType");
    return false;
}

bool SteamMatchmaking008::SetLobbyJoinable( CSteamID steamIDLobby, bool bLobbyJoinable )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyJoinable");
    return false;
}

bool SteamMatchmaking008::SetLobbyOwner( CSteamID steamIDLobby, CSteamID steamIDNewOwner )
{
    DDLogCVerbose(@"SteamMatchmaking008::SetLobbyOwner");
    return false;
}