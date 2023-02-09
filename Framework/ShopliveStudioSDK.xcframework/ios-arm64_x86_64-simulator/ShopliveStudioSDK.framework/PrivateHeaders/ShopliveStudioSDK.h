//
//  ShopliveStudioSDK.h
//  ShopliveStudioSDK
//
//  Created by James Kim on 11/14/22.
//

#import <Foundation/Foundation.h>
#import "AudioUtils.h"

//! Project version number for ShopliveStudioSDK.
FOUNDATION_EXPORT double ShopliveStudioSDKVersionNumber;

//! Project version string for ShopliveStudioSDK.
FOUNDATION_EXPORT const unsigned char ShopliveStudioSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <ShopliveStudioSDK/PublicHeader.h>

NS_INLINE void nstry(void(^_Nonnull lambda)(void), void(^_Nullable error)(NSException *_Nonnull exception)) {
    @try {
        lambda();
    }
    @catch (NSException *exception) {
        if (error != NULL) {
            @try {
                error(exception);
            }@catch(NSException *exception) {

            }
        }
    }
}
