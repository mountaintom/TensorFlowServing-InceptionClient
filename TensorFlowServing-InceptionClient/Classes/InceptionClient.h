//
//  InceptionClient.h
//  Pods
//
//  Created by Tom Stall <mtm<@>mountaintom<.>com> on 08/08/2017.
//  Copyright (c) 2017 Tom Stall. All rights reserved.
//
//

#import <Foundation/Foundation.h>

@interface InceptionClient : NSObject

- (void) sendImageToServer:(void (^)(BOOL resultStatus))completionHandler;

@property (nonatomic, retain) NSString * hostURL;
@property (nonatomic, retain) NSString * hostPort;

@property (nonatomic, retain) NSString * modelSpecName;
@property (nonatomic, retain) NSString * modelSpecSignatureName;

@property (nonatomic, retain) NSData   * imageData;

@property (nonatomic, retain) NSString * resultClassesString;
@property (nonatomic, retain) NSString * resultScoresString;

@property (nonatomic, retain) NSString * resultRawString;

@property (nonatomic, retain) NSString * resultErrorMessage;

@property (nonatomic) BOOL resultSuccess;

@end
