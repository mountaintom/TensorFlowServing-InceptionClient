// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/saved_model.proto

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

@class MetaGraphDef;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - SavedModelRoot

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
@interface SavedModelRoot : GPBRootObject
@end

#pragma mark - SavedModel

typedef GPB_ENUM(SavedModel_FieldNumber) {
  SavedModel_FieldNumber_SavedModelSchemaVersion = 1,
  SavedModel_FieldNumber_MetaGraphsArray = 2,
};

/**
 * SavedModel is the high level serialization format for TensorFlow Models.
 * See [todo: doc links, similar to session_bundle] for more information.
 **/
@interface SavedModel : GPBMessage

/**
 * The schema version of the SavedModel instance. Used for versioning when
 * making future changes to the specification/implementation. Initial value
 * at release will be 1.
 **/
@property(nonatomic, readwrite) int64_t savedModelSchemaVersion;

/** One or more MetaGraphs. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<MetaGraphDef*> *metaGraphsArray;
/** The number of items in @c metaGraphsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger metaGraphsArray_Count;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
