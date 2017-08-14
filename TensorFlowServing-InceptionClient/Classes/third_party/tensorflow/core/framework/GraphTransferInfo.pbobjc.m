// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/graph_transfer_info.proto

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

 #import "tensorflow/core/framework/GraphTransferInfo.pbobjc.h"
 #import "tensorflow/core/framework/Types.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GraphTransferInfoRoot

@implementation GraphTransferInfoRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GraphTransferInfoRoot_FileDescriptor

static GPBFileDescriptor *GraphTransferInfoRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"tensorflow"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GraphTransferInfo

@implementation GraphTransferInfo

@dynamic nodeInfoArray, nodeInfoArray_Count;
@dynamic constNodeInfoArray, constNodeInfoArray_Count;
@dynamic nodeInputInfoArray, nodeInputInfoArray_Count;
@dynamic nodeOutputInfoArray, nodeOutputInfoArray_Count;
@dynamic graphInputNodeInfoArray, graphInputNodeInfoArray_Count;
@dynamic graphOutputNodeInfoArray, graphOutputNodeInfoArray_Count;
@dynamic destination;

typedef struct GraphTransferInfo__storage_ {
  uint32_t _has_storage_[1];
  GraphTransferInfo_Destination destination;
  NSMutableArray *nodeInfoArray;
  NSMutableArray *constNodeInfoArray;
  NSMutableArray *nodeInputInfoArray;
  NSMutableArray *nodeOutputInfoArray;
  NSMutableArray *graphInputNodeInfoArray;
  NSMutableArray *graphOutputNodeInfoArray;
} GraphTransferInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_NodeInfo),
        .number = GraphTransferInfo_FieldNumber_NodeInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, nodeInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "constNodeInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_ConstNodeInfo),
        .number = GraphTransferInfo_FieldNumber_ConstNodeInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, constNodeInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nodeInputInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_NodeInputInfo),
        .number = GraphTransferInfo_FieldNumber_NodeInputInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, nodeInputInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nodeOutputInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_NodeOutputInfo),
        .number = GraphTransferInfo_FieldNumber_NodeOutputInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, nodeOutputInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "graphInputNodeInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_GraphInputNodeInfo),
        .number = GraphTransferInfo_FieldNumber_GraphInputNodeInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, graphInputNodeInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "graphOutputNodeInfoArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_GraphOutputNodeInfo),
        .number = GraphTransferInfo_FieldNumber_GraphOutputNodeInfoArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, graphOutputNodeInfoArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "destination",
        .dataTypeSpecific.enumDescFunc = GraphTransferInfo_Destination_EnumDescriptor,
        .number = GraphTransferInfo_FieldNumber_Destination,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo__storage_, destination),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GraphTransferInfo_Destination_RawValue(GraphTransferInfo *message) {
  GPBDescriptor *descriptor = [GraphTransferInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_FieldNumber_Destination];
  return GPBGetMessageInt32Field(message, field);
}

void SetGraphTransferInfo_Destination_RawValue(GraphTransferInfo *message, int32_t value) {
  GPBDescriptor *descriptor = [GraphTransferInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_FieldNumber_Destination];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum GraphTransferInfo_Destination

GPBEnumDescriptor *GraphTransferInfo_Destination_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Nop\000Hexagon\000";
    static const int32_t values[] = {
        GraphTransferInfo_Destination_Nop,
        GraphTransferInfo_Destination_Hexagon,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(GraphTransferInfo_Destination)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:GraphTransferInfo_Destination_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL GraphTransferInfo_Destination_IsValidValue(int32_t value__) {
  switch (value__) {
    case GraphTransferInfo_Destination_Nop:
    case GraphTransferInfo_Destination_Hexagon:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - GraphTransferInfo_NodeInput

@implementation GraphTransferInfo_NodeInput

@dynamic nodeId;
@dynamic outputPort;

typedef struct GraphTransferInfo_NodeInput__storage_ {
  uint32_t _has_storage_[1];
  int32_t nodeId;
  int32_t outputPort;
} GraphTransferInfo_NodeInput__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInput_FieldNumber_NodeId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInput__storage_, nodeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "outputPort",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInput_FieldNumber_OutputPort,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInput__storage_, outputPort),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_NodeInput class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_NodeInput__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GraphTransferInfo_NodeInfo

@implementation GraphTransferInfo_NodeInfo

@dynamic name;
@dynamic nodeId;
@dynamic typeName;
@dynamic socOpId;
@dynamic paddingId;
@dynamic inputCount;
@dynamic outputCount;

typedef struct GraphTransferInfo_NodeInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t nodeId;
  int32_t socOpId;
  int32_t paddingId;
  int32_t inputCount;
  int32_t outputCount;
  NSString *name;
  NSString *typeName;
} GraphTransferInfo_NodeInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "nodeId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_NodeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, nodeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "typeName",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_TypeName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, typeName),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "socOpId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_SocOpId,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, socOpId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "paddingId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_PaddingId,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, paddingId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "inputCount",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_InputCount,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, inputCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "outputCount",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInfo_FieldNumber_OutputCount,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInfo__storage_, outputCount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_NodeInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_NodeInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GraphTransferInfo_ConstNodeInfo

@implementation GraphTransferInfo_ConstNodeInfo

@dynamic name;
@dynamic nodeId;
@dynamic shapeArray, shapeArray_Count;
@dynamic data_p;
@dynamic dtype;

typedef struct GraphTransferInfo_ConstNodeInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t nodeId;
  DataType dtype;
  NSString *name;
  GPBInt64Array *shapeArray;
  NSData *data_p;
} GraphTransferInfo_ConstNodeInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_ConstNodeInfo_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_ConstNodeInfo__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "nodeId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_ConstNodeInfo_FieldNumber_NodeId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphTransferInfo_ConstNodeInfo__storage_, nodeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "shapeArray",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_ConstNodeInfo_FieldNumber_ShapeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo_ConstNodeInfo__storage_, shapeArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_ConstNodeInfo_FieldNumber_Data_p,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GraphTransferInfo_ConstNodeInfo__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "dtype",
        .dataTypeSpecific.enumDescFunc = DataType_EnumDescriptor,
        .number = GraphTransferInfo_ConstNodeInfo_FieldNumber_Dtype,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GraphTransferInfo_ConstNodeInfo__storage_, dtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_ConstNodeInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_ConstNodeInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GraphTransferInfo_ConstNodeInfo_Dtype_RawValue(GraphTransferInfo_ConstNodeInfo *message) {
  GPBDescriptor *descriptor = [GraphTransferInfo_ConstNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_ConstNodeInfo_FieldNumber_Dtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetGraphTransferInfo_ConstNodeInfo_Dtype_RawValue(GraphTransferInfo_ConstNodeInfo *message, int32_t value) {
  GPBDescriptor *descriptor = [GraphTransferInfo_ConstNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_ConstNodeInfo_FieldNumber_Dtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GraphTransferInfo_NodeInputInfo

@implementation GraphTransferInfo_NodeInputInfo

@dynamic nodeId;
@dynamic nodeInputArray, nodeInputArray_Count;

typedef struct GraphTransferInfo_NodeInputInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t nodeId;
  NSMutableArray *nodeInputArray;
} GraphTransferInfo_NodeInputInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeInputInfo_FieldNumber_NodeId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInputInfo__storage_, nodeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "nodeInputArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GraphTransferInfo_NodeInput),
        .number = GraphTransferInfo_NodeInputInfo_FieldNumber_NodeInputArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeInputInfo__storage_, nodeInputArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_NodeInputInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_NodeInputInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GraphTransferInfo_NodeOutputInfo

@implementation GraphTransferInfo_NodeOutputInfo

@dynamic nodeId;
@dynamic maxByteSizeArray, maxByteSizeArray_Count;

typedef struct GraphTransferInfo_NodeOutputInfo__storage_ {
  uint32_t _has_storage_[1];
  int32_t nodeId;
  GPBInt32Array *maxByteSizeArray;
} GraphTransferInfo_NodeOutputInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "nodeId",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeOutputInfo_FieldNumber_NodeId,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeOutputInfo__storage_, nodeId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "maxByteSizeArray",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_NodeOutputInfo_FieldNumber_MaxByteSizeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo_NodeOutputInfo__storage_, maxByteSizeArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_NodeOutputInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_NodeOutputInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GraphTransferInfo_GraphInputNodeInfo

@implementation GraphTransferInfo_GraphInputNodeInfo

@dynamic name;
@dynamic shapeArray, shapeArray_Count;
@dynamic dtype;

typedef struct GraphTransferInfo_GraphInputNodeInfo__storage_ {
  uint32_t _has_storage_[1];
  DataType dtype;
  NSString *name;
  GPBInt64Array *shapeArray;
} GraphTransferInfo_GraphInputNodeInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_GraphInputNodeInfo_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphInputNodeInfo__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shapeArray",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_GraphInputNodeInfo_FieldNumber_ShapeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphInputNodeInfo__storage_, shapeArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "dtype",
        .dataTypeSpecific.enumDescFunc = DataType_EnumDescriptor,
        .number = GraphTransferInfo_GraphInputNodeInfo_FieldNumber_Dtype,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphInputNodeInfo__storage_, dtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_GraphInputNodeInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_GraphInputNodeInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GraphTransferInfo_GraphInputNodeInfo_Dtype_RawValue(GraphTransferInfo_GraphInputNodeInfo *message) {
  GPBDescriptor *descriptor = [GraphTransferInfo_GraphInputNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_GraphInputNodeInfo_FieldNumber_Dtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetGraphTransferInfo_GraphInputNodeInfo_Dtype_RawValue(GraphTransferInfo_GraphInputNodeInfo *message, int32_t value) {
  GPBDescriptor *descriptor = [GraphTransferInfo_GraphInputNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_GraphInputNodeInfo_FieldNumber_Dtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GraphTransferInfo_GraphOutputNodeInfo

@implementation GraphTransferInfo_GraphOutputNodeInfo

@dynamic name;
@dynamic shapeArray, shapeArray_Count;
@dynamic dtype;

typedef struct GraphTransferInfo_GraphOutputNodeInfo__storage_ {
  uint32_t _has_storage_[1];
  DataType dtype;
  NSString *name;
  GPBInt64Array *shapeArray;
} GraphTransferInfo_GraphOutputNodeInfo__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_GraphOutputNodeInfo_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphOutputNodeInfo__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shapeArray",
        .dataTypeSpecific.className = NULL,
        .number = GraphTransferInfo_GraphOutputNodeInfo_FieldNumber_ShapeArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphOutputNodeInfo__storage_, shapeArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldPacked),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "dtype",
        .dataTypeSpecific.enumDescFunc = DataType_EnumDescriptor,
        .number = GraphTransferInfo_GraphOutputNodeInfo_FieldNumber_Dtype,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GraphTransferInfo_GraphOutputNodeInfo__storage_, dtype),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GraphTransferInfo_GraphOutputNodeInfo class]
                                     rootClass:[GraphTransferInfoRoot class]
                                          file:GraphTransferInfoRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GraphTransferInfo_GraphOutputNodeInfo__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(GraphTransferInfo)];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GraphTransferInfo_GraphOutputNodeInfo_Dtype_RawValue(GraphTransferInfo_GraphOutputNodeInfo *message) {
  GPBDescriptor *descriptor = [GraphTransferInfo_GraphOutputNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_GraphOutputNodeInfo_FieldNumber_Dtype];
  return GPBGetMessageInt32Field(message, field);
}

void SetGraphTransferInfo_GraphOutputNodeInfo_Dtype_RawValue(GraphTransferInfo_GraphOutputNodeInfo *message, int32_t value) {
  GPBDescriptor *descriptor = [GraphTransferInfo_GraphOutputNodeInfo descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GraphTransferInfo_GraphOutputNodeInfo_FieldNumber_Dtype];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)