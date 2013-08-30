#include "SteamNetworking003.h"

bool SteamNetworking003::SendP2PPacket( CSteamID steamIDRemote, const void *pubData, uint32 cubData, EP2PSend eP2PSendType )
{
    return false;
}

bool SteamNetworking003::IsP2PPacketAvailable( uint32 *pcubMsgSize )
{
    return false;
}

bool SteamNetworking003::ReadP2PPacket( void *pubDest, uint32 cubDest, uint32 *pcubMsgSize, CSteamID *psteamIDRemote )
{
    return false;
}

bool SteamNetworking003::AcceptP2PSessionWithUser( CSteamID steamIDRemote )
{
    return false;
}

bool SteamNetworking003::CloseP2PSessionWithUser( CSteamID steamIDRemote )
{
    return false;
}

bool SteamNetworking003::GetP2PSessionState( CSteamID steamIDRemote, P2PSessionState_t *pConnectionState )
{
    return false;
}

SNetListenSocket_t SteamNetworking003::CreateListenSocket( int nVirtualP2PPort, uint32 nIP, uint16 nPort, bool bAllowUseOfPacketRelay )
{
    return 0;
}

SNetSocket_t SteamNetworking003::CreateP2PConnectionSocket( CSteamID steamIDTarget, int nVirtualPort, int nTimeoutSec, bool bAllowUseOfPacketRelay )
{
    return 0;
}

SNetSocket_t SteamNetworking003::CreateConnectionSocket( uint32 nIP, uint16 nPort, int nTimeoutSec )
{
    return 0;
}

bool SteamNetworking003::DestroySocket( SNetSocket_t hSocket, bool bNotifyRemoteEnd )
{
    return false;
}

bool SteamNetworking003::DestroyListenSocket( SNetListenSocket_t hSocket, bool bNotifyRemoteEnd )
{
    return false;
}

bool SteamNetworking003::SendDataOnSocket( SNetSocket_t hSocket, void *pubData, uint32 cubData, bool bReliable )
{
    return false;
}

bool SteamNetworking003::IsDataAvailableOnSocket( SNetSocket_t hSocket, uint32 *pcubMsgSize )
{
    return false;
}

bool SteamNetworking003::RetrieveDataFromSocket( SNetSocket_t hSocket, void *pubDest, uint32 cubDest, uint32 *pcubMsgSize )
{
    return false;
}

bool SteamNetworking003::IsDataAvailable( SNetListenSocket_t hListenSocket, uint32 *pcubMsgSize, SNetSocket_t *phSocket )
{
    return false;
}

bool SteamNetworking003::RetrieveData( SNetListenSocket_t hListenSocket, void *pubDest, uint32 cubDest, uint32 *pcubMsgSize, SNetSocket_t *phSocket )
{
    return false;
}

bool SteamNetworking003::GetSocketInfo( SNetSocket_t hSocket, CSteamID *pSteamIDRemote, int *peSocketStatus, uint32 *punIPRemote, uint16 *punPortRemote )
{
    return false;
}

bool SteamNetworking003::GetListenSocketInfo( SNetListenSocket_t hListenSocket, uint32 *pnIP, uint16 *pnPort )
{
    return false;
}

ESNetSocketConnectionType SteamNetworking003::GetSocketConnectionType( SNetSocket_t hSocket )
{
    return k_ESNetSocketConnectionTypeNotConnected;
}

int SteamNetworking003::GetMaxPacketSize( SNetSocket_t hSocket )
{
    return 0;
}