/*
 * Copyright (c) Novedia Group 2012.
 *
 *     This file is part of Hubiquitus.
 *
 *     Hubiquitus is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Hubiquitus is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with Hubiquitus.  If not, see <http://www.gnu.org/licenses/>.
 */

#import "HSocketioTransport.h"
#import "DDLog.h"

#if ! __has_feature(objc_arc)
#warning This file must be compiled with ARC. Use -fobjc-arc flag (or convert project to ARC).
#endif

/**
 * @cond internal
 * @version 0.5.0
 * Socket.io transport layer
 */

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

@implementation HSocketioTransport
@synthesize jid, rid, sid, socketio;
@synthesize delegate, status;

- (id)initWithDelegate:(id<HTransportLayerDelegate>)delegate {
    self = [super init];
    if(self) {
        
    }
    
    return self;
}

- (void)connectWithOptions:(HTransportOptions *)options {
    
}

- (void)disconnect {
    
}

- (void)send:(NSString *)message {
    
}

#pragma mark - socketio delegate
- (void) socketIODidConnect:(SocketIO *)socket {
    
}

- (void) socketIODidDisconnect:(SocketIO *)socket {
    
}

- (void) socketIO:(SocketIO *)socket didReceiveEvent:(SocketIOPacket *)packet {
    
}

- (void) socketIOHandshakeFailed:(SocketIO *)socket {
    
}

@end

/**
 * @endcond
 */