/*
 * Copyright (c) Novedia Group 2012.
 *
 *    This file is part of Hubiquitus
 *
 *    Permission is hereby granted, free of charge, to any person obtaining a copy
 *    of this software and associated documentation files (the "Software"), to deal
 *    in the Software without restriction, including without limitation the rights
 *    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 *    of the Software, and to permit persons to whom the Software is furnished to do so,
 *    subject to the following conditions:
 *
 *    The above copyright notice and this permission notice shall be included in all copies
 *    or substantial portions of the Software.
 *
 *    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 *    INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
 *    PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
 *    FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 *    ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 *    You should have received a copy of the MIT License along with Hubiquitus.
 *    If not, see <http://opensource.org/licenses/mit-license.php>.
 */

#import "HTransportOptions.h"
#import "HUtils.h"

/**
 * @cond internal
 * @version 0.5.0
 * Options used by the transport layers
 */

@interface HTransportOptions () {
    NSString * _jid;
    NSString * _jidDomain;
    NSString * _jidUsername;
    NSString * _jidResource;
}

@end

@implementation HTransportOptions
@synthesize password, jid = _jid;
@synthesize jidDomain = _jidDomain, jidResource = _jidResource, jidUsername = _jidUsername;

/**
 * Randomly choose an endpoint from the endpoints
 */
- (NSURL *)endpoint {
    NSString * randomEndpoint = pickRandomValue(self.endpoints);
    NSURL * endpoint = [NSURL URLWithString:randomEndpoint];
    return endpoint;
}

- (id)initWithOptions:(HOptions *)options {
    self = [super init];
    if(self) {
        self.transport = options.transport;
        self.endpoints = options.endpoints;
        self.timeout = options.timeout;
    }
    
    return self;
}

- (void)setJid:(NSString *)jid {
    _jid = jid;
    NSDictionary * jidComponents =  splitJid(jid);
    _jidDomain = [jidComponents objectForKey:@"domain"];
    _jidUsername = [jidComponents objectForKey:@"username"];
    _jidResource = [jidComponents objectForKey:@"resource"];
}

@end

/**
 * @endcond
 */