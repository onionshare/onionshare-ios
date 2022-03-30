//
//  Config.m
//  OnionShare
//
//  Created by Benjamin Erhart on 30.03.22.
//  Copyright © 2022 Guardian Project. All rights reserved.
//

#import "Config.h"

#define MACRO_STRING_(m) #m
#define MACRO_STRING(m) @MACRO_STRING_(m)

@implementation Config

+ (NSString *) extBundleId {
    return MACRO_STRING(EXT_BUNDLE_ID);
}

+ (NSString *) appGroupId {
    return MACRO_STRING(APP_GROUP);
}

@end
