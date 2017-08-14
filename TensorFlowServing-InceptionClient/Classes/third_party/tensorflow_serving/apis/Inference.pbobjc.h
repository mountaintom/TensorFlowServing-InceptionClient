// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow_serving/apis/inference.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class InferenceResult;
@class InferenceTask;
@class Input;
@class ModelSpec;
@class RegressionResult;
@class XTDSClassificationResult;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - InferenceRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface InferenceRoot : GPBRootObject
@end

#pragma mark - InferenceTask

typedef GPB_ENUM(InferenceTask_FieldNumber) {
  InferenceTask_FieldNumber_ModelSpec = 1,
  InferenceTask_FieldNumber_MethodName = 2,
};

/**
 * Inference request such as classification, regression, etc...
 **/
@interface InferenceTask : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ModelSpec *modelSpec;
/** Test to see if @c modelSpec has been set. */
@property(nonatomic, readwrite) BOOL hasModelSpec;

/**
 * Signature's method_name. Should be one of the method names defined in
 * third_party/tensorflow/python/saved_model/signature_constants.py.
 * e.g. "tensorflow/serving/classify".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *methodName;

@end

#pragma mark - InferenceResult

typedef GPB_ENUM(InferenceResult_FieldNumber) {
  InferenceResult_FieldNumber_ModelSpec = 1,
  InferenceResult_FieldNumber_ClassificationResult = 2,
  InferenceResult_FieldNumber_RegressionResult = 3,
};

typedef GPB_ENUM(InferenceResult_Result_OneOfCase) {
  InferenceResult_Result_OneOfCase_GPBUnsetOneOfCase = 0,
  InferenceResult_Result_OneOfCase_ClassificationResult = 2,
  InferenceResult_Result_OneOfCase_RegressionResult = 3,
};

/**
 * Inference result, matches the type of request or is an error.
 **/
@interface InferenceResult : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) ModelSpec *modelSpec;
/** Test to see if @c modelSpec has been set. */
@property(nonatomic, readwrite) BOOL hasModelSpec;

@property(nonatomic, readonly) InferenceResult_Result_OneOfCase resultOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) XTDSClassificationResult *classificationResult;

@property(nonatomic, readwrite, strong, null_resettable) RegressionResult *regressionResult;

@end

/**
 * Clears whatever value was set for the oneof 'result'.
 **/
void InferenceResult_ClearResultOneOfCase(InferenceResult *message);

#pragma mark - MultiInferenceRequest

typedef GPB_ENUM(MultiInferenceRequest_FieldNumber) {
  MultiInferenceRequest_FieldNumber_TasksArray = 1,
  MultiInferenceRequest_FieldNumber_Input = 2,
};

/**
 * Inference request containing one or more requests.
 **/
@interface MultiInferenceRequest : GPBMessage

/** Inference tasks. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<InferenceTask*> *tasksArray;
/** The number of items in @c tasksArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger tasksArray_Count;

/** Input data. */
@property(nonatomic, readwrite, strong, null_resettable) Input *input;
/** Test to see if @c input has been set. */
@property(nonatomic, readwrite) BOOL hasInput;

@end

#pragma mark - MultiInferenceResponse

typedef GPB_ENUM(MultiInferenceResponse_FieldNumber) {
  MultiInferenceResponse_FieldNumber_ResultsArray = 1,
};

/**
 * Inference request containing one or more responses.
 **/
@interface MultiInferenceResponse : GPBMessage

/**
 * List of results; one for each InferenceTask in the request, returned in the
 * same order as the request.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<InferenceResult*> *resultsArray;
/** The number of items in @c resultsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger resultsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
