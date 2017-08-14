//
//  InceptionClient.m
//  Pods
//
//  Created by Tom Stall <mtm<@>mountaintom<.>com> on 08/08/2017.
//  Copyright (c) 2017 Tom Stall. All rights reserved.
//
//

#import "InceptionClient.h"

#import <GRPCClient/GRPCCall+ChannelArg.h>
#import <GRPCClient/GRPCCall+Tests.h>

#import "tensorflow_serving/apis/PredictionService.pbrpc.h"
#import "tensorflow_serving/apis/Predict.pbobjc.h"
#import "tensorflow_serving/apis/Classification.pbobjc.h"
#import "tensorflow_serving/apis/GetModelMetadata.pbobjc.h"
#import "tensorflow_serving/apis/Inference.pbobjc.h"
#import "tensorflow_serving/apis/Input.pbobjc.h"
#import "tensorflow_serving/apis/Regression.pbobjc.h"
#import "tensorflow/core/framework/Tensor.pbobjc.h"
#import "tensorflow/core/framework/TensorShape.pbobjc.h"
#import "tensorflow/core/framework/Types.pbobjc.h"
#import "tensorflow_serving/apis/Model.pbobjc.h"

@interface InceptionClient ()

@end


@implementation InceptionClient

- (InceptionClient *)init {
    if (self = [super init]) {
        _hostPort = @"9000";
        _hostURL = @"127.0.0.1";
        _modelSpecName = @"inception";
        _modelSpecSignatureName = @"predict_images";
    }
    return self;
}

- (void) sendImageToServer:(void (^)(BOOL resultStatus))completionHandler;{
    
    NSString* kHostAddress = [NSString stringWithFormat:@"%@:%@", self.hostURL, self.hostPort ];
    
    NSLog(@"+++++ Sending request to server at: %@", kHostAddress);
    
    [GRPCCall useInsecureConnectionsForHost:kHostAddress];
    [GRPCCall setUserAgentPrefix:@"InceptionDemo/1.0" forHost:kHostAddress];
    
    PredictionService* client = [[PredictionService alloc] initWithHost:kHostAddress];
    
    PredictRequest* request = [PredictRequest message];
    
    request.modelSpec.name = self.modelSpecName;
    request.modelSpec.signatureName = self.modelSpecSignatureName;
    
    TensorProto* tensor = [[TensorProto alloc] init];
    tensor.dtype = DataType_DtString;
    
    TensorShapeProto_Dim* shapeDim = [[TensorShapeProto_Dim alloc] init];
    shapeDim.size = 1;
    [tensor.tensorShape.dimArray addObject:shapeDim];
    
    [tensor.stringValArray addObject:self.imageData];
    
    [request.inputs setObject:tensor forKey:@"images" ];
    
    //NSLog(@"Tensor Raw: %@", tensor);
    //NSLog(@"Request Raw: %@", request);
    
    
    [client predictWithRequest:request handler:^(PredictResponse *response, NSError *error) {
        
        NSMutableDictionary* outputsDic = [[NSMutableDictionary alloc] init];
        
        NSLog(@"+++++ Raw Response: %@", response);
        NSLog(@"+++++ RPC error: %@", error);
        
        if (response) {
            NSLog(@"Request was sucessful");
            
            self.resultRawString = [NSString stringWithFormat:@"%@", response];
            
            outputsDic = response.outputs;
            
            TensorProto* classesTensor = [outputsDic objectForKey:@"classes"];
            TensorProto* scoresTensor  = [outputsDic objectForKey:@"scores"];
            
            self.resultClassesString = [NSString stringWithFormat:@"%@", classesTensor];
            self.resultScoresString  = [NSString stringWithFormat:@"%@", scoresTensor];
            
            NSLog(@"Raw Classes Tensor: %@", classesTensor);
            NSLog(@"Raw Scores Tensor: %@", scoresTensor);
            
            completionHandler(true);
            self.resultSuccess = true;
            
        }else{
            
            NSLog(@"Request had error: %@", error);
            self.resultErrorMessage = [NSString stringWithFormat:@"%@", error];
            completionHandler(false);
            self.resultSuccess = false;
        }
        
        NSLog(@"+++++ Request handler finished");
        return;
    }];
    NSLog(@"+++++ Request sent by sendImageToServer");
}

@end

