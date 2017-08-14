// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/protobuf/control_flow.proto

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

@class ValuesDef;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ControlFlowRoot

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
@interface ControlFlowRoot : GPBRootObject
@end

#pragma mark - ValuesDef

typedef GPB_ENUM(ValuesDef_FieldNumber) {
  ValuesDef_FieldNumber_ValuesArray = 1,
  ValuesDef_FieldNumber_ExternalValues = 2,
};

/**
 * Protocol buffer representing the values in ControlFlowContext.
 **/
@interface ValuesDef : GPBMessage

/** Value names that have been seen in this context. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *valuesArray;
/** The number of items in @c valuesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger valuesArray_Count;

/** Value names referenced by but external to this context. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableDictionary<NSString*, NSString*> *externalValues;
/** The number of items in @c externalValues without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger externalValues_Count;

@end

#pragma mark - CondContextDef

typedef GPB_ENUM(CondContextDef_FieldNumber) {
  CondContextDef_FieldNumber_ContextName = 1,
  CondContextDef_FieldNumber_PredName = 2,
  CondContextDef_FieldNumber_PivotName = 3,
  CondContextDef_FieldNumber_Branch = 4,
  CondContextDef_FieldNumber_ValuesDef = 5,
};

/**
 * Protocol buffer representing a CondContext object.
 **/
@interface CondContextDef : GPBMessage

/** Name of the context. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *contextName;

/** Name of the pred tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *predName;

/** Name of the pivot tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pivotName;

/** Branch prediction. 0 or 1. */
@property(nonatomic, readwrite) int32_t branch;

/** Values and external values in control flow context. */
@property(nonatomic, readwrite, strong, null_resettable) ValuesDef *valuesDef;
/** Test to see if @c valuesDef has been set. */
@property(nonatomic, readwrite) BOOL hasValuesDef;

@end

#pragma mark - WhileContextDef

typedef GPB_ENUM(WhileContextDef_FieldNumber) {
  WhileContextDef_FieldNumber_ContextName = 1,
  WhileContextDef_FieldNumber_ParallelIterations = 2,
  WhileContextDef_FieldNumber_BackProp = 3,
  WhileContextDef_FieldNumber_SwapMemory = 4,
  WhileContextDef_FieldNumber_PivotName = 5,
  WhileContextDef_FieldNumber_PivotForPredName = 6,
  WhileContextDef_FieldNumber_PivotForBodyName = 7,
  WhileContextDef_FieldNumber_LoopExitNamesArray = 8,
  WhileContextDef_FieldNumber_ValuesDef = 9,
  WhileContextDef_FieldNumber_LoopEnterNamesArray = 10,
};

/**
 * Protocol buffer representing a WhileContext object.
 **/
@interface WhileContextDef : GPBMessage

/** Name of the context. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *contextName;

/** The number of iterations allowed to run in parallel. */
@property(nonatomic, readwrite) int32_t parallelIterations;

/** Whether backprop is enabled for this while loop. */
@property(nonatomic, readwrite) BOOL backProp;

/** Whether GPU-CPU memory swap is enabled for this loop. */
@property(nonatomic, readwrite) BOOL swapMemory;

/** Name of the pivot tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pivotName;

/** Name of the pivot_for_pred tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pivotForPredName;

/** Name of the pivot_for_body tensor. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pivotForBodyName;

/** List of names for exit tensors. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *loopExitNamesArray;
/** The number of items in @c loopExitNamesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger loopExitNamesArray_Count;

/** List of names for enter tensors. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *loopEnterNamesArray;
/** The number of items in @c loopEnterNamesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger loopEnterNamesArray_Count;

/** Values and external values in control flow context. */
@property(nonatomic, readwrite, strong, null_resettable) ValuesDef *valuesDef;
/** Test to see if @c valuesDef has been set. */
@property(nonatomic, readwrite) BOOL hasValuesDef;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)