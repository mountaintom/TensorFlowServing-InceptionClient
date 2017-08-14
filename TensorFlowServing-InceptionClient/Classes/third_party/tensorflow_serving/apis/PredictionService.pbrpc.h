#import "tensorflow_serving/apis/PredictionService.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "tensorflow_serving/apis/Classification.pbobjc.h"
#import "tensorflow_serving/apis/GetModelMetadata.pbobjc.h"
#import "tensorflow_serving/apis/Inference.pbobjc.h"
#import "tensorflow_serving/apis/Predict.pbobjc.h"
#import "tensorflow_serving/apis/Regression.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol PredictionService <NSObject>

#pragma mark Classify(ClassificationRequest) returns (ClassificationResponse)

/**
 * Classify.
 */
- (void)classifyWithRequest:(XTDSClassificationRequest *)request handler:(void(^)(XTDSClassificationResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Classify.
 */
- (GRPCProtoCall *)RPCToClassifyWithRequest:(XTDSClassificationRequest *)request handler:(void(^)(XTDSClassificationResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Regress(RegressionRequest) returns (RegressionResponse)

/**
 * Regress.
 */
- (void)regressWithRequest:(RegressionRequest *)request handler:(void(^)(RegressionResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Regress.
 */
- (GRPCProtoCall *)RPCToRegressWithRequest:(RegressionRequest *)request handler:(void(^)(RegressionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Predict(PredictRequest) returns (PredictResponse)

/**
 * Predict -- provides access to loaded TensorFlow model.
 */
- (void)predictWithRequest:(PredictRequest *)request handler:(void(^)(PredictResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Predict -- provides access to loaded TensorFlow model.
 */
- (GRPCProtoCall *)RPCToPredictWithRequest:(PredictRequest *)request handler:(void(^)(PredictResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark MultiInference(MultiInferenceRequest) returns (MultiInferenceResponse)

/**
 * MultiInference API for multi-headed models.
 */
- (void)multiInferenceWithRequest:(MultiInferenceRequest *)request handler:(void(^)(MultiInferenceResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * MultiInference API for multi-headed models.
 */
- (GRPCProtoCall *)RPCToMultiInferenceWithRequest:(MultiInferenceRequest *)request handler:(void(^)(MultiInferenceResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetModelMetadata(GetModelMetadataRequest) returns (GetModelMetadataResponse)

/**
 * GetModelMetadata - provides access to metadata for loaded models.
 */
- (void)getModelMetadataWithRequest:(GetModelMetadataRequest *)request handler:(void(^)(GetModelMetadataResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * GetModelMetadata - provides access to metadata for loaded models.
 */
- (GRPCProtoCall *)RPCToGetModelMetadataWithRequest:(GetModelMetadataRequest *)request handler:(void(^)(GetModelMetadataResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PredictionService : GRPCProtoService<PredictionService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
