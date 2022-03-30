//
//  Config.h
//  OnionShare
//
//  Created by Benjamin Erhart on 30.03.22.
//  Copyright © 2022 Guardian Project. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Config : NSObject

@property (class, nonatomic, assign, readonly, nonnull) NSString *extBundleId NS_REFINED_FOR_SWIFT;

@property (class, nonatomic, assign, readonly, nonnull) NSString *appGroupId NS_REFINED_FOR_SWIFT;

@end

NS_ASSUME_NONNULL_END
