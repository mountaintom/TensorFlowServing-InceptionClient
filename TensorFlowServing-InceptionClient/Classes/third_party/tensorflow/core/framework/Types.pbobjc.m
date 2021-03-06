// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/types.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "tensorflow/core/framework/Types.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - TypesRoot

@implementation TypesRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - Enum DataType

GPBEnumDescriptor *DataType_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "DtInvalid\000DtFloat\000DtDouble\000DtInt32\000DtUin"
        "t8\000DtInt16\000DtInt8\000DtString\000DtComplex64\000D"
        "tInt64\000DtBool\000DtQint8\000DtQuint8\000DtQint32\000"
        "DtBfloat16\000DtQint16\000DtQuint16\000DtUint16\000D"
        "tComplex128\000DtHalf\000DtResource\000DtFloatRef"
        "\000DtDoubleRef\000DtInt32Ref\000DtUint8Ref\000DtInt"
        "16Ref\000DtInt8Ref\000DtStringRef\000DtComplex64R"
        "ef\000DtInt64Ref\000DtBoolRef\000DtQint8Ref\000DtQui"
        "nt8Ref\000DtQint32Ref\000DtBfloat16Ref\000DtQint1"
        "6Ref\000DtQuint16Ref\000DtUint16Ref\000DtComplex1"
        "28Ref\000DtHalfRef\000DtResourceRef\000";
    static const int32_t values[] = {
        DataType_DtInvalid,
        DataType_DtFloat,
        DataType_DtDouble,
        DataType_DtInt32,
        DataType_DtUint8,
        DataType_DtInt16,
        DataType_DtInt8,
        DataType_DtString,
        DataType_DtComplex64,
        DataType_DtInt64,
        DataType_DtBool,
        DataType_DtQint8,
        DataType_DtQuint8,
        DataType_DtQint32,
        DataType_DtBfloat16,
        DataType_DtQint16,
        DataType_DtQuint16,
        DataType_DtUint16,
        DataType_DtComplex128,
        DataType_DtHalf,
        DataType_DtResource,
        DataType_DtFloatRef,
        DataType_DtDoubleRef,
        DataType_DtInt32Ref,
        DataType_DtUint8Ref,
        DataType_DtInt16Ref,
        DataType_DtInt8Ref,
        DataType_DtStringRef,
        DataType_DtComplex64Ref,
        DataType_DtInt64Ref,
        DataType_DtBoolRef,
        DataType_DtQint8Ref,
        DataType_DtQuint8Ref,
        DataType_DtQint32Ref,
        DataType_DtBfloat16Ref,
        DataType_DtQint16Ref,
        DataType_DtQuint16Ref,
        DataType_DtUint16Ref,
        DataType_DtComplex128Ref,
        DataType_DtHalfRef,
        DataType_DtResourceRef,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(DataType)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:DataType_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL DataType_IsValidValue(int32_t value__) {
  switch (value__) {
    case DataType_DtInvalid:
    case DataType_DtFloat:
    case DataType_DtDouble:
    case DataType_DtInt32:
    case DataType_DtUint8:
    case DataType_DtInt16:
    case DataType_DtInt8:
    case DataType_DtString:
    case DataType_DtComplex64:
    case DataType_DtInt64:
    case DataType_DtBool:
    case DataType_DtQint8:
    case DataType_DtQuint8:
    case DataType_DtQint32:
    case DataType_DtBfloat16:
    case DataType_DtQint16:
    case DataType_DtQuint16:
    case DataType_DtUint16:
    case DataType_DtComplex128:
    case DataType_DtHalf:
    case DataType_DtResource:
    case DataType_DtFloatRef:
    case DataType_DtDoubleRef:
    case DataType_DtInt32Ref:
    case DataType_DtUint8Ref:
    case DataType_DtInt16Ref:
    case DataType_DtInt8Ref:
    case DataType_DtStringRef:
    case DataType_DtComplex64Ref:
    case DataType_DtInt64Ref:
    case DataType_DtBoolRef:
    case DataType_DtQint8Ref:
    case DataType_DtQuint8Ref:
    case DataType_DtQint32Ref:
    case DataType_DtBfloat16Ref:
    case DataType_DtQint16Ref:
    case DataType_DtQuint16Ref:
    case DataType_DtUint16Ref:
    case DataType_DtComplex128Ref:
    case DataType_DtHalfRef:
    case DataType_DtResourceRef:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
