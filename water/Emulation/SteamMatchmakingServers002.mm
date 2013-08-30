//
//  SteamMatchmakingServers002.mm
//  steam_api
//
//  Created by bsmt on 8/30/13.
//
//

#include "SteamMatchmakingServers002.h"
#include "MatchmakingCommon.h"

HServerListRequest SteamMatchmakingServers002::RequestInternetServerList( AppId_t iApp, MatchMakingKeyValuePair_t **ppchFilters, uint32 nFilters, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

HServerListRequest SteamMatchmakingServers002::RequestLANServerList( AppId_t iApp, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

HServerListRequest SteamMatchmakingServers002::RequestFriendsServerList( AppId_t iApp, MatchMakingKeyValuePair_t **ppchFilters, uint32 nFilters, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

HServerListRequest SteamMatchmakingServers002::RequestFavoritesServerList( AppId_t iApp, MatchMakingKeyValuePair_t **ppchFilters, uint32 nFilters, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

HServerListRequest SteamMatchmakingServers002::RequestHistoryServerList( AppId_t iApp, MatchMakingKeyValuePair_t **ppchFilters, uint32 nFilters, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

HServerListRequest SteamMatchmakingServers002::RequestSpectatorServerList( AppId_t iApp, MatchMakingKeyValuePair_t **ppchFilters, uint32 nFilters, ISteamMatchmakingServerListResponse *pRequestServersResponse )
{
    return 0;
}

void SteamMatchmakingServers002::ReleaseRequest( HServerListRequest hServerListRequest )
{
}

gameserveritem_t *SteamMatchmakingServers002::GetServerDetails( HServerListRequest hRequest, int iServer )
{
    return 0;
}

void SteamMatchmakingServers002::CancelQuery( HServerListRequest hRequest )
{
    
}

void SteamMatchmakingServers002::RefreshQuery( HServerListRequest hRequest )
{
    
}

bool SteamMatchmakingServers002::IsRefreshing( HServerListRequest hRequest )
{
    return false;
}

int SteamMatchmakingServers002::GetServerCount( HServerListRequest hRequest )
{
    return 0;
}

void SteamMatchmakingServers002::RefreshServer( HServerListRequest hRequest, int iServer )
{
    
}

HServerQuery SteamMatchmakingServers002::PingServer( uint32 unIP, uint16 usPort, ISteamMatchmakingPingResponse *pRequestServersResponse )
{
    return 0;
}

HServerQuery SteamMatchmakingServers002::PlayerDetails( uint32 unIP, uint16 usPort, ISteamMatchmakingPlayersResponse *pRequestServersResponse )
{
    return 0;
}

HServerQuery SteamMatchmakingServers002::ServerRules( uint32 unIP, uint16 usPort, ISteamMatchmakingRulesResponse *pRequestServersResponse )
{
    return 0;
}

void SteamMatchmakingServers002::CancelServerQuery( HServerQuery hServerQuery )
{
    
}