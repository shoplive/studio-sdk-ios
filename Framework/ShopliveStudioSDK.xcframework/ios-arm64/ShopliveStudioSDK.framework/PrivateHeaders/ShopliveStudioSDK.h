//
//  ShopLiveStudioSDK.h
//  ShopLiveStudioSDK
//
//  Created by James Kim on 11/14/22.
//

#import <Foundation/Foundation.h>
#import "AudioUtils.h"

//! Project version number for ShopLiveStudioSDK.
FOUNDATION_EXPORT double ShopLiveStudioSDKVersionNumber;

//! Project version string for ShopLiveStudioSDK.
FOUNDATION_EXPORT const unsigned char ShopLiveStudioSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <ShopLiveStudioSDK/PublicHeader.h>

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
