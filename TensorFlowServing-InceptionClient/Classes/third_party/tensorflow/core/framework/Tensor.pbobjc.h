// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/tensor.proto

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

@class ResourceHandle;
@class TensorShapeProto;
GPB_ENUM_FWD_DECLARE(DataType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - TensorRoot

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
@interface TensorRoot : GPBRootObject
@end

#pragma mark - TensorProto

typedef GPB_ENUM(TensorProto_FieldNumber) {
  TensorProto_FieldNumber_Dtype = 1,
  TensorProto_FieldNumber_TensorShape = 2,
  TensorProto_FieldNumber_VersionNumber = 3,
  TensorProto_FieldNumber_TensorContent = 4,
  TensorProto_FieldNumber_FloatValArray = 5,
  TensorProto_FieldNumber_DoubleValArray = 6,
  TensorProto_FieldNumber_IntValArray = 7,
  TensorProto_FieldNumber_StringValArray = 8,
  TensorProto_FieldNumber_ScomplexValArray = 9,
  TensorProto_FieldNumber_Int64ValArray = 10,
  TensorProto_FieldNumber_BoolValArray = 11,
  TensorProto_FieldNumber_DcomplexValArray = 12,
  TensorProto_FieldNumber_HalfValArray = 13,
  TensorProto_FieldNumber_ResourceHandleValArray = 14,
};

/**
 * Protocol buffer representing a tensor.
 **/
@interface TensorProto : GPBMessage

@property(nonatomic, readwrite) enum DataType dtype;

/** Shape of the tensor.  TODO(touts): sort out the 0-rank issues. */
@property(nonatomic, readwrite, strong, null_resettable) TensorShapeProto *tensorShape;
/** Test to see if @c tensorShape has been set. */
@property(nonatomic, readwrite) BOOL hasTensorShape;

/**
 * Version number.
 *
 * In version 0, if the "repeated xxx" representations contain only one
 * element, that element is repeated to fill the shape.  This makes it easy
 * to represent a constant Tensor with a single value.
 **/
@property(nonatomic, readwrite) int32_t versionNumber;

/**
 * Serialized raw tensor content from either Tensor::AsProtoTensorContent or
 * memcpy in tensorflow::grpc::EncodeTensorToByteBuffer. This representation
 * can be used for all tensor types. The purpose of this representation is to
 * reduce serialization overhead during RPC call by avoiding serialization of
 * many repeated small items.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *tensorContent;

/**
 * DT_HALF. Note that since protobuf has no int16 type, we'll have some
 * pointless zero padding for each value here.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBInt32Array *halfValArray;
/** The number of items in @c halfValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger halfValArray_Count;

/** DT_FLOAT. */
@property(nonatomic, readwrite, strong, null_resettable) GPBFloatArray *floatValArray;
/** The number of items in @c floatValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger floatValArray_Count;

/** DT_DOUBLE. */
@property(nonatomic, readwrite, strong, null_resettable) GPBDoubleArray *doubleValArray;
/** The number of items in @c doubleValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger doubleValArray_Count;

/** DT_INT32, DT_INT16, DT_INT8, DT_UINT8. */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt32Array *intValArray;
/** The number of items in @c intValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger intValArray_Count;

/** DT_STRING */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSData*> *stringValArray;
/** The number of items in @c stringValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger stringValArray_Count;

/**
 * DT_COMPLEX64. scomplex_val(2*i) and scomplex_val(2*i+1) are real
 * and imaginary parts of i-th single precision complex.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBFloatArray *scomplexValArray;
/** The number of items in @c scomplexValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger scomplexValArray_Count;

/** DT_INT64 */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt64Array *int64ValArray;
/** The number of items in @c int64ValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger int64ValArray_Count;

/** DT_BOOL */
@property(nonatomic, readwrite, strong, null_resettable) GPBBoolArray *boolValArray;
/** The number of items in @c boolValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger boolValArray_Count;

/**
 * DT_COMPLEX128. dcomplex_val(2*i) and dcomplex_val(2*i+1) are real
 * and imaginary parts of i-th double precision complex.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBDoubleArray *dcomplexValArray;
/** The number of items in @c dcomplexValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger dcomplexValArray_Count;

/** DT_RESOURCE */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<ResourceHandle*> *resourceHandleValArray;
/** The number of items in @c resourceHandleValArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger resourceHandleValArray_Count;

@end

/**
 * Fetches the raw value of a @c TensorProto's @c dtype property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t TensorProto_Dtype_RawValue(TensorProto *message);
/**
 * Sets the raw value of an @c TensorProto's @c dtype property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetTensorProto_Dtype_RawValue(TensorProto *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
