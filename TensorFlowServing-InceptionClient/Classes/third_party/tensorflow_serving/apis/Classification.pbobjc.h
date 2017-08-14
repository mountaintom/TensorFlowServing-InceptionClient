// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow_serving/apis/classification.proto

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

@class Input;
@class ModelSpec;
@class XTDSClass;
@class XTDSClassificationResult;
@class XTDSClassifications;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - XTDSClassificationRoot

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
@interface XTDSClassificationRoot : GPBRootObject
@end

#pragma mark - XTDSClass

typedef GPB_ENUM(XTDSClass_FieldNumber) {
  XTDSClass_FieldNumber_Label = 1,
  XTDSClass_FieldNumber_Score = 2,
};

/**
 * A single class.
 **/
@interface XTDSClass : GPBMessage

/** Label or name of the class. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *label;

/**
 * Score for this class (e.g., the probability the item belongs to this
 * class).
 **/
@property(nonatomic, readwrite) float score;

@end

#pragma mark - XTDSClassifications

typedef GPB_ENUM(XTDSClassifications_FieldNumber) {
  XTDSClassifications_FieldNumber_ClassesArray = 1,
};

/**
 * List of classes for a single item (tensorflow.Example).
 **/
@interface XTDSClassifications : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<XTDSClass*> *classesArray;
/** The number of items in @c classesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger classesArray_Count;

@end

#pragma mark - XTDSClassificationResult

typedef GPB_ENUM(XTDSClassificationResult_FieldNumber) {
  XTDSClassificationResult_FieldNumber_ClassificationsArray = 1,
};

/**
 * Contains one result per input example, in the same order as the input in
 * ClassificationRequest.
 **/
@interface XTDSClassificationResult : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<XTDSClassifications*> *classificationsArray;
/** The number of items in @c classificationsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger classificationsArray_Count;

@end

#pragma mark - XTDSClassificationRequest

typedef GPB_ENUM(XTDSClassificationRequest_FieldNumber) {
  XTDSClassificationRequest_FieldNumber_ModelSpec = 1,
  XTDSClassificationRequest_FieldNumber_Input = 2,
};

@interface XTDSClassificationRequest : GPBMessage

/** Model Specification. */
@property(nonatomic, readwrite, strong, null_resettable) ModelSpec *modelSpec;
/** Test to see if @c modelSpec has been set. */
@property(nonatomic, readwrite) BOOL hasModelSpec;

/** Input data. */
@property(nonatomic, readwrite, strong, null_resettable) Input *input;
/** Test to see if @c input has been set. */
@property(nonatomic, readwrite) BOOL hasInput;

@end

#pragma mark - XTDSClassificationResponse

typedef GPB_ENUM(XTDSClassificationResponse_FieldNumber) {
  XTDSClassificationResponse_FieldNumber_Result = 1,
};

@interface XTDSClassificationResponse : GPBMessage

/** Result of the classification. */
@property(nonatomic, readwrite, strong, null_resettable) XTDSClassificationResult *result;
/** Test to see if @c result has been set. */
@property(nonatomic, readwrite) BOOL hasResult;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
