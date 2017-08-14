#import "tensorflow_serving/apis/PredictionService.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation PredictionService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"tensorflow.serving" serviceName:@"PredictionService"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark Classify(ClassificationRequest) returns (ClassificationResponse)

/**
 * Classify.
 */
- (void)classifyWithRequest:(XTDSClassificationRequest *)request handler:(void(^)(XTDSClassificationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToClassifyWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Classify.
 */
- (GRPCProtoCall *)RPCToClassifyWithRequest:(XTDSClassificationRequest *)request handler:(void(^)(XTDSClassificationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Classify"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[XTDSClassificationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Regress(RegressionRequest) returns (RegressionResponse)

/**
 * Regress.
 */
- (void)regressWithRequest:(RegressionRequest *)request handler:(void(^)(RegressionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegressWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Regress.
 */
- (GRPCProtoCall *)RPCToRegressWithRequest:(RegressionRequest *)request handler:(void(^)(RegressionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Regress"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RegressionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Predict(PredictRequest) returns (PredictResponse)

/**
 * Predict -- provides access to loaded TensorFlow model.
 */
- (void)predictWithRequest:(PredictRequest *)request handler:(void(^)(PredictResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPredictWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Predict -- provides access to loaded TensorFlow model.
 */
- (GRPCProtoCall *)RPCToPredictWithRequest:(PredictRequest *)request handler:(void(^)(PredictResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Predict"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PredictResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark MultiInference(MultiInferenceRequest) returns (MultiInferenceResponse)

/**
 * MultiInference API for multi-headed models.
 */
- (void)multiInferenceWithRequest:(MultiInferenceRequest *)request handler:(void(^)(MultiInferenceResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToMultiInferenceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * MultiInference API for multi-headed models.
 */
- (GRPCProtoCall *)RPCToMultiInferenceWithRequest:(MultiInferenceRequest *)request handler:(void(^)(MultiInferenceResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"MultiInference"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[MultiInferenceResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetModelMetadata(GetModelMetadataRequest) returns (GetModelMetadataResponse)

/**
 * GetModelMetadata - provides access to metadata for loaded models.
 */
- (void)getModelMetadataWithRequest:(GetModelMetadataRequest *)request handler:(void(^)(GetModelMetadataResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetModelMetadataWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * GetModelMetadata - provides access to metadata for loaded models.
 */
- (GRPCProtoCall *)RPCToGetModelMetadataWithRequest:(GetModelMetadataRequest *)request handler:(void(^)(GetModelMetadataResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetModelMetadata"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetModelMetadataResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
