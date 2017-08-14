// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/framework/cost_graph.proto

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

@class CostGraphDef_Node;
@class CostGraphDef_Node_InputInfo;
@class CostGraphDef_Node_OutputInfo;
@class TensorShapeProto;
GPB_ENUM_FWD_DECLARE(DataType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - CostGraphRoot

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
@interface CostGraphRoot : GPBRootObject
@end

#pragma mark - CostGraphDef

typedef GPB_ENUM(CostGraphDef_FieldNumber) {
  CostGraphDef_FieldNumber_NodeArray = 1,
};

@interface CostGraphDef : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<CostGraphDef_Node*> *nodeArray;
/** The number of items in @c nodeArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger nodeArray_Count;

@end

#pragma mark - CostGraphDef_Node

typedef GPB_ENUM(CostGraphDef_Node_FieldNumber) {
  CostGraphDef_Node_FieldNumber_Name = 1,
  CostGraphDef_Node_FieldNumber_Device = 2,
  CostGraphDef_Node_FieldNumber_Id_p = 3,
  CostGraphDef_Node_FieldNumber_InputInfoArray = 4,
  CostGraphDef_Node_FieldNumber_OutputInfoArray = 5,
  CostGraphDef_Node_FieldNumber_TemporaryMemorySize = 6,
  CostGraphDef_Node_FieldNumber_IsFinal = 7,
  CostGraphDef_Node_FieldNumber_ControlInputArray = 8,
  CostGraphDef_Node_FieldNumber_ComputeCost = 9,
  CostGraphDef_Node_FieldNumber_HostTempMemorySize = 10,
  CostGraphDef_Node_FieldNumber_DeviceTempMemorySize = 11,
  CostGraphDef_Node_FieldNumber_HostPersistentMemorySize = 12,
  CostGraphDef_Node_FieldNumber_ComputeTime = 14,
  CostGraphDef_Node_FieldNumber_MemoryTime = 15,
  CostGraphDef_Node_FieldNumber_DevicePersistentMemorySize = 16,
};

@interface CostGraphDef_Node : GPBMessage

/** The name of the node. Names are globally unique. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * The device of the node. Can be empty if the node is mapped to the
 * default partition or partitioning hasn't been run yet.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *device;

/** The id of the node. Node ids are only unique inside a partition. */
@property(nonatomic, readwrite) int32_t id_p;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<CostGraphDef_Node_InputInfo*> *inputInfoArray;
/** The number of items in @c inputInfoArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger inputInfoArray_Count;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<CostGraphDef_Node_OutputInfo*> *outputInfoArray;
/** The number of items in @c outputInfoArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger outputInfoArray_Count;

/** Temporary memory used by this node. */
@property(nonatomic, readwrite) int64_t temporaryMemorySize;

@property(nonatomic, readwrite) int64_t hostTempMemorySize;

@property(nonatomic, readwrite) int64_t deviceTempMemorySize;

@property(nonatomic, readwrite) int64_t hostPersistentMemorySize;

@property(nonatomic, readwrite) int64_t devicePersistentMemorySize;

/** Estimate of the computational cost of this node, in microseconds. */
@property(nonatomic, readwrite) int64_t computeCost;

/**
 * Analytical estimate of the computational cost of this node, in
 * microseconds.
 **/
@property(nonatomic, readwrite) int64_t computeTime;

/**
 * Analytical estimate of the memory access cost of this node, in
 * microseconds.
 **/
@property(nonatomic, readwrite) int64_t memoryTime;

/**
 * If true, the output is permanent: it can't be discarded, because this
 * node is part of the "final output". Nodes may depend on final nodes.
 **/
@property(nonatomic, readwrite) BOOL isFinal;

/** Ids of the control inputs for this node. */
@property(nonatomic, readwrite, strong, null_resettable) GPBInt32Array *controlInputArray;
/** The number of items in @c controlInputArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger controlInputArray_Count;

@end

#pragma mark - CostGraphDef_Node_InputInfo

typedef GPB_ENUM(CostGraphDef_Node_InputInfo_FieldNumber) {
  CostGraphDef_Node_InputInfo_FieldNumber_PrecedingNode = 1,
  CostGraphDef_Node_InputInfo_FieldNumber_PrecedingPort = 2,
};

/**
 * Inputs of this node. They must be executed before this node can be
 * executed. An input is a particular output of another node, specified
 * by the node id and the output index.
 **/
@interface CostGraphDef_Node_InputInfo : GPBMessage

@property(nonatomic, readwrite) int32_t precedingNode;

@property(nonatomic, readwrite) int32_t precedingPort;

@end

#pragma mark - CostGraphDef_Node_OutputInfo

typedef GPB_ENUM(CostGraphDef_Node_OutputInfo_FieldNumber) {
  CostGraphDef_Node_OutputInfo_FieldNumber_Size = 1,
  CostGraphDef_Node_OutputInfo_FieldNumber_AliasInputPort = 2,
  CostGraphDef_Node_OutputInfo_FieldNumber_Shape = 3,
  CostGraphDef_Node_OutputInfo_FieldNumber_Dtype = 4,
};

/**
 * Outputs of this node.
 **/
@interface CostGraphDef_Node_OutputInfo : GPBMessage

@property(nonatomic, readwrite) int64_t size;

/**
 * If >= 0, the output is an alias of an input. Note that an alias input
 * may itself be an alias. The algorithm will therefore need to follow
 * those pointers.
 **/
@property(nonatomic, readwrite) int64_t aliasInputPort;

@property(nonatomic, readwrite, strong, null_resettable) TensorShapeProto *shape;
/** Test to see if @c shape has been set. */
@property(nonatomic, readwrite) BOOL hasShape;

@property(nonatomic, readwrite) enum DataType dtype;

@end

/**
 * Fetches the raw value of a @c CostGraphDef_Node_OutputInfo's @c dtype property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t CostGraphDef_Node_OutputInfo_Dtype_RawValue(CostGraphDef_Node_OutputInfo *message);
/**
 * Sets the raw value of an @c CostGraphDef_Node_OutputInfo's @c dtype property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetCostGraphDef_Node_OutputInfo_Dtype_RawValue(CostGraphDef_Node_OutputInfo *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
