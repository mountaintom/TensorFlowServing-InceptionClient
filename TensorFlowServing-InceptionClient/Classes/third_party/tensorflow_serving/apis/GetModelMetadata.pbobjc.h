// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow_serving/apis/get_model_metadata.proto

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

@class GPBAny;
@class ModelSpec;
@class SignatureDef;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GetModelMetadataRoot

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
@interface GetModelMetadataRoot : GPBRootObject
@end

#pragma mark - SignatureDefMap

typedef GPB_ENUM(SignatureDefMap_FieldNumber) {
  SignatureDefMap_FieldNumber_SignatureDef = 1,
};

/**
 * Message returned for "signature_def" field.
 **/
@interface SignatureDefMap : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, SignatureDef*> *signatureDef;
/** The number of items in @c signatureDef without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger signatureDef_Count;

@end

#pragma mark - GetModelMetadataRequest

typedef GPB_ENUM(GetModelMetadataRequest_FieldNumber) {
  GetModelMetadataRequest_FieldNumber_ModelSpec = 1,
  GetModelMetadataRequest_FieldNumber_MetadataFieldArray = 2,
};

@interface GetModelMetadataRequest : GPBMessage

/** Model Specification indicating which model we are querying for metadata. */
@property(nonatomic, readwrite, strong, null_resettable) ModelSpec *modelSpec;
/** Test to see if @c modelSpec has been set. */
@property(nonatomic, readwrite) BOOL hasModelSpec;

/** Metadata fields to get. Currently supported: "signature_def". */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *metadataFieldArray;
/** The number of items in @c metadataFieldArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger metadataFieldArray_Count;

@end

#pragma mark - GetModelMetadataResponse

typedef GPB_ENUM(GetModelMetadataResponse_FieldNumber) {
  GetModelMetadataResponse_FieldNumber_ModelSpec = 1,
  GetModelMetadataResponse_FieldNumber_Metadata = 2,
};

@interface GetModelMetadataResponse : GPBMessage

/** Model Specification indicating which model this metadata belongs to. */
@property(nonatomic, readwrite, strong, null_resettable) ModelSpec *modelSpec;
/** Test to see if @c modelSpec has been set. */
@property(nonatomic, readwrite) BOOL hasModelSpec;

/**
 * Map of metadata field name to metadata field. The options for metadata
 * field name are listed in GetModelMetadataRequest. Currently supported:
 * "signature_def".
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, GPBAny*> *metadata;
/** The number of items in @c metadata without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger metadata_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
