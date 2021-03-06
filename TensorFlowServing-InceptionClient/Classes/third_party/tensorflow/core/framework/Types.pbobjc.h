// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/types.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum DataType

/** LINT.IfChange */
typedef GPB_ENUM(DataType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  DataType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /**
   * Not a legal value for DataType.  Used to indicate a DataType field
   * has not been set.
   **/
  DataType_DtInvalid = 0,

  /**
   * Data types that all computation devices are expected to be
   * capable to support.
   **/
  DataType_DtFloat = 1,
  DataType_DtDouble = 2,
  DataType_DtInt32 = 3,
  DataType_DtUint8 = 4,
  DataType_DtInt16 = 5,
  DataType_DtInt8 = 6,
  DataType_DtString = 7,

  /** Single-precision complex */
  DataType_DtComplex64 = 8,
  DataType_DtInt64 = 9,
  DataType_DtBool = 10,

  /** Quantized int8 */
  DataType_DtQint8 = 11,

  /** Quantized uint8 */
  DataType_DtQuint8 = 12,

  /** Quantized int32 */
  DataType_DtQint32 = 13,

  /** Float32 truncated to 16 bits.  Only for cast ops. */
  DataType_DtBfloat16 = 14,

  /** Quantized int16 */
  DataType_DtQint16 = 15,

  /** Quantized uint16 */
  DataType_DtQuint16 = 16,
  DataType_DtUint16 = 17,

  /** Double-precision complex */
  DataType_DtComplex128 = 18,
  DataType_DtHalf = 19,
  DataType_DtResource = 20,

  /**
   * Do not use!  These are only for parameters.  Every enum above
   * should have a corresponding value below (verified by types_test).
   **/
  DataType_DtFloatRef = 101,
  DataType_DtDoubleRef = 102,
  DataType_DtInt32Ref = 103,
  DataType_DtUint8Ref = 104,
  DataType_DtInt16Ref = 105,
  DataType_DtInt8Ref = 106,
  DataType_DtStringRef = 107,
  DataType_DtComplex64Ref = 108,
  DataType_DtInt64Ref = 109,
  DataType_DtBoolRef = 110,
  DataType_DtQint8Ref = 111,
  DataType_DtQuint8Ref = 112,
  DataType_DtQint32Ref = 113,
  DataType_DtBfloat16Ref = 114,
  DataType_DtQint16Ref = 115,
  DataType_DtQuint16Ref = 116,
  DataType_DtUint16Ref = 117,
  DataType_DtComplex128Ref = 118,
  DataType_DtHalfRef = 119,
  DataType_DtResourceRef = 120,
};

GPBEnumDescriptor *DataType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL DataType_IsValidValue(int32_t value);

#pragma mark - TypesRoot

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
@interface TypesRoot : GPBRootObject
@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
