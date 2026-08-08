/*
===========================================================================

Quake 4 Reconstructed GPL Source Code
Copyright (C) 2026 Justin Marshall(IceColdDuke).

This file is part of the Quake 4 Reconstructed GPL Source Code (?Quake 4 Reconstructed Source Code?).

Quake 4 Reconstructed Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Quake 4 Reconstructed Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Quake 4 Reconstructed Source Code.  If not, see <http://www.gnu.org/licenses/>.

===========================================================================
*/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "NetworkSystem.h"

idNetworkSystem		networkSystemLocal;
idNetworkSystem *	networkSystem = &networkSystemLocal;

// The retail implementation stores this state in Raven's server-scan object.
// Keep the ABI-neutral state here until that UI scanner is reconstructed.
static bool			networkFriendClients[MAX_ASYNC_CLIENTS];


/*
==================
idNetworkSystem::ServerSendReliableMessage
==================
*/
void idNetworkSystem::ServerSendReliableMessage( int clientNum, const idBitMsg &msg ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		idAsyncNetwork::server.SendReliableGameMessage( clientNum, msg );
	}
}

/*
==================
idNetworkSystem::ServerSendReliableMessageExcluding
==================
*/
void idNetworkSystem::ServerSendReliableMessageExcluding( int clientNum, const idBitMsg &msg ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		idAsyncNetwork::server.SendReliableGameMessageExcluding( clientNum, msg );
	}
}

/*
==================
idNetworkSystem::ServerGetClientPing
==================
*/
int idNetworkSystem::ServerGetClientPing( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientPing( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientPrediction
==================
*/
int idNetworkSystem::ServerGetClientPrediction( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientPrediction( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientTimeSinceLastPacket
==================
*/
int idNetworkSystem::ServerGetClientTimeSinceLastPacket( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientTimeSinceLastPacket( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientTimeSinceLastInput
==================
*/
int idNetworkSystem::ServerGetClientTimeSinceLastInput( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientTimeSinceLastInput( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientOutgoingRate
==================
*/
int idNetworkSystem::ServerGetClientOutgoingRate( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientOutgoingRate( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientIncomingRate
==================
*/
int idNetworkSystem::ServerGetClientIncomingRate( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientIncomingRate( clientNum );
	}
	return 0;
}

/*
==================
idNetworkSystem::ServerGetClientIncomingPacketLoss
==================
*/
float idNetworkSystem::ServerGetClientIncomingPacketLoss( int clientNum ) {
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientIncomingPacketLoss( clientNum );
	}
	return 0.0f;
}

/*
==================
idNetworkSystem::ClientSendReliableMessage
==================
*/
void idNetworkSystem::ClientSendReliableMessage( const idBitMsg &msg ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		idAsyncNetwork::client.SendReliableGameMessage( msg );
	} else if ( idAsyncNetwork::server.IsActive() ) {
		idAsyncNetwork::server.LocalClientSendReliableMessage( msg );
	}
}

/*
==================
idNetworkSystem::ClientGetPrediction
==================
*/
int idNetworkSystem::ClientGetPrediction( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetPrediction();
	}
	return 0;
}

/*
==================
idNetworkSystem::ClientGetTimeSinceLastPacket
==================
*/
int idNetworkSystem::ClientGetTimeSinceLastPacket( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetTimeSinceLastPacket();
	}
	return 0;
}

/*
==================
idNetworkSystem::ClientGetOutgoingRate
==================
*/
int idNetworkSystem::ClientGetOutgoingRate( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetOutgoingRate();
	}
	return 0;
}

/*
==================
idNetworkSystem::ClientGetIncomingRate
==================
*/
int idNetworkSystem::ClientGetIncomingRate( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetIncomingRate();
	}
	return 0;
}

/*
==================
idNetworkSystem::ClientGetIncomingPacketLoss
==================
*/
float idNetworkSystem::ClientGetIncomingPacketLoss( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetIncomingPacketLoss();
	}
	return 0.0f;
}

/*
==================
idNetworkSystem::GetServerAddress
==================
*/
const char *idNetworkSystem::GetServerAddress( void ) {
	if ( idAsyncNetwork::client.IsActive() ) {
		return Sys_NetAdrToString( idAsyncNetwork::client.GetServerAddress() );
	}
	if ( idAsyncNetwork::server.IsActive() ) {
		return Sys_NetAdrToString( idAsyncNetwork::server.GetBoundAdr() );
	}
	return "";
}

/*
==================
idNetworkSystem::GetClientAddress
==================
*/
const char *idNetworkSystem::GetClientAddress( int clientNum ) {
	if ( !idAsyncNetwork::server.IsActive() ) {
		return "";
	}
	return Sys_NetAdrToString( idAsyncNetwork::server.GetClientAddress( clientNum ) );
}

/*
==================
idNetworkSystem::AddFriend
idNetworkSystem::RemoveFriend
==================
*/
void idNetworkSystem::AddFriend( int clientNum ) {
	if ( clientNum >= 0 && clientNum < MAX_ASYNC_CLIENTS ) {
		networkFriendClients[clientNum] = true;
	}
}

void idNetworkSystem::RemoveFriend( int clientNum ) {
	if ( clientNum >= 0 && clientNum < MAX_ASYNC_CLIENTS ) {
		networkFriendClients[clientNum] = false;
	}
}

/*
==================
idNetworkSystem::SetLoadingText
idNetworkSystem::AddLoadingIcon
==================
*/
void idNetworkSystem::SetLoadingText( const char *loadingText ) {
	session->SetLoadingText( loadingText );
}

void idNetworkSystem::AddLoadingIcon( const char *icon ) {
	session->AddLoadingIcon( icon );
}

/*
==================
idNetworkSystem::GetClientGUID
==================
*/
const char *idNetworkSystem::GetClientGUID( int clientNum ) {
	if ( clientNum < 0 || clientNum >= MAX_ASYNC_CLIENTS ) {
		common->Warning( "idNetworkSystem::GetClientGUID() - Invalid clientNum '%d'\n", clientNum );
		return NULL;
	}
	if ( idAsyncNetwork::server.IsActive() ) {
		return idAsyncNetwork::server.GetClientGUID( clientNum );
	}
	return game->GetGuidByClientNum( clientNum );
}

/*
==================
idNetworkSystem::GetTrafficStats
==================
*/
void idNetworkSystem::GetTrafficStats( int &bytesSent, int &packetsSent, int &bytesReceived, int &packetsReceived ) const {
	if ( idAsyncNetwork::server.IsActive() ) {
		idAsyncNetwork::server.GetTrafficStats( bytesSent, packetsSent, bytesReceived, packetsReceived );
	} else {
		idAsyncNetwork::client.GetTrafficStats( bytesSent, packetsSent, bytesReceived, packetsReceived );
	}
}
