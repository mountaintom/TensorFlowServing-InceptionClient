// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: tensorflow/core/util/event.proto

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

 #import "tensorflow/core/util/Event.pbobjc.h"
 #import "tensorflow/core/framework/Summary.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - EventRoot

@implementation EventRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - EventRoot_FileDescriptor

static GPBFileDescriptor *EventRoot_FileDescriptor(void) {
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

#pragma mark - Event

@implementation Event

@dynamic whatOneOfCase;
@dynamic wallTime;
@dynamic step;
@dynamic fileVersion;
@dynamic graphDef;
@dynamic summary;
@dynamic logMessage;
@dynamic sessionLog;
@dynamic taggedRunMetadata;
@dynamic metaGraphDef;

typedef struct Event__storage_ {
  uint32_t _has_storage_[2];
  NSString *fileVersion;
  NSData *graphDef;
  Summary *summary;
  LogMessage *logMessage;
  SessionLog *sessionLog;
  TaggedRunMetadata *taggedRunMetadata;
  NSData *metaGraphDef;
  double wallTime;
  int64_t step;
} Event__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "wallTime",
        .dataTypeSpecific.className = NULL,
        .number = Event_FieldNumber_WallTime,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Event__storage_, wallTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "step",
        .dataTypeSpecific.className = NULL,
        .number = Event_FieldNumber_Step,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Event__storage_, step),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "fileVersion",
        .dataTypeSpecific.className = NULL,
        .number = Event_FieldNumber_FileVersion,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, fileVersion),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "graphDef",
        .dataTypeSpecific.className = NULL,
        .number = Event_FieldNumber_GraphDef,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, graphDef),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "summary",
        .dataTypeSpecific.className = GPBStringifySymbol(Summary),
        .number = Event_FieldNumber_Summary,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, summary),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "logMessage",
        .dataTypeSpecific.className = GPBStringifySymbol(LogMessage),
        .number = Event_FieldNumber_LogMessage,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, logMessage),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "sessionLog",
        .dataTypeSpecific.className = GPBStringifySymbol(SessionLog),
        .number = Event_FieldNumber_SessionLog,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, sessionLog),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "taggedRunMetadata",
        .dataTypeSpecific.className = GPBStringifySymbol(TaggedRunMetadata),
        .number = Event_FieldNumber_TaggedRunMetadata,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, taggedRunMetadata),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "metaGraphDef",
        .dataTypeSpecific.className = NULL,
        .number = Event_FieldNumber_MetaGraphDef,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(Event__storage_, metaGraphDef),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Event class]
                                     rootClass:[EventRoot class]
                                          file:EventRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Event__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "what",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void Event_ClearWhatOneOfCase(Event *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - LogMessage

@implementation LogMessage

@dynamic level;
@dynamic message;

typedef struct LogMessage__storage_ {
  uint32_t _has_storage_[1];
  LogMessage_Level level;
  NSString *message;
} LogMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "level",
        .dataTypeSpecific.enumDescFunc = LogMessage_Level_EnumDescriptor,
        .number = LogMessage_FieldNumber_Level,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(LogMessage__storage_, level),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "message",
        .dataTypeSpecific.className = NULL,
        .number = LogMessage_FieldNumber_Message,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(LogMessage__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[LogMessage class]
                                     rootClass:[EventRoot class]
                                          file:EventRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(LogMessage__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t LogMessage_Level_RawValue(LogMessage *message) {
  GPBDescriptor *descriptor = [LogMessage descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:LogMessage_FieldNumber_Level];
  return GPBGetMessageInt32Field(message, field);
}

void SetLogMessage_Level_RawValue(LogMessage *message, int32_t value) {
  GPBDescriptor *descriptor = [LogMessage descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:LogMessage_FieldNumber_Level];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum LogMessage_Level

GPBEnumDescriptor *LogMessage_Level_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Unknown\000Debugging\000Info\000Warn\000Error\000Fatal\000";
    static const int32_t values[] = {
        LogMessage_Level_Unknown,
        LogMessage_Level_Debugging,
        LogMessage_Level_Info,
        LogMessage_Level_Warn,
        LogMessage_Level_Error,
        LogMessage_Level_Fatal,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(LogMessage_Level)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:LogMessage_Level_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL LogMessage_Level_IsValidValue(int32_t value__) {
  switch (value__) {
    case LogMessage_Level_Unknown:
    case LogMessage_Level_Debugging:
    case LogMessage_Level_Info:
    case LogMessage_Level_Warn:
    case LogMessage_Level_Error:
    case LogMessage_Level_Fatal:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - SessionLog

@implementation SessionLog

@dynamic status;
@dynamic checkpointPath;
@dynamic msg;

typedef struct SessionLog__storage_ {
  uint32_t _has_storage_[1];
  SessionLog_SessionStatus status;
  NSString *checkpointPath;
  NSString *msg;
} SessionLog__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "status",
        .dataTypeSpecific.enumDescFunc = SessionLog_SessionStatus_EnumDescriptor,
        .number = SessionLog_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SessionLog__storage_, status),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "checkpointPath",
        .dataTypeSpecific.className = NULL,
        .number = SessionLog_FieldNumber_CheckpointPath,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SessionLog__storage_, checkpointPath),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "msg",
        .dataTypeSpecific.className = NULL,
        .number = SessionLog_FieldNumber_Msg,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SessionLog__storage_, msg),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SessionLog class]
                                     rootClass:[EventRoot class]
                                          file:EventRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SessionLog__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t SessionLog_Status_RawValue(SessionLog *message) {
  GPBDescriptor *descriptor = [SessionLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SessionLog_FieldNumber_Status];
  return GPBGetMessageInt32Field(message, field);
}

void SetSessionLog_Status_RawValue(SessionLog *message, int32_t value) {
  GPBDescriptor *descriptor = [SessionLog descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:SessionLog_FieldNumber_Status];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum SessionLog_SessionStatus

GPBEnumDescriptor *SessionLog_SessionStatus_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "StatusUnspecified\000Start\000Stop\000Checkpoint\000";
    static const int32_t values[] = {
        SessionLog_SessionStatus_StatusUnspecified,
        SessionLog_SessionStatus_Start,
        SessionLog_SessionStatus_Stop,
        SessionLog_SessionStatus_Checkpoint,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(SessionLog_SessionStatus)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:SessionLog_SessionStatus_IsValidValue];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL SessionLog_SessionStatus_IsValidValue(int32_t value__) {
  switch (value__) {
    case SessionLog_SessionStatus_StatusUnspecified:
    case SessionLog_SessionStatus_Start:
    case SessionLog_SessionStatus_Stop:
    case SessionLog_SessionStatus_Checkpoint:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - TaggedRunMetadata

@implementation TaggedRunMetadata

@dynamic tag;
@dynamic runMetadata;

typedef struct TaggedRunMetadata__storage_ {
  uint32_t _has_storage_[1];
  NSString *tag;
  NSData *runMetadata;
} TaggedRunMetadata__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "tag",
        .dataTypeSpecific.className = NULL,
        .number = TaggedRunMetadata_FieldNumber_Tag,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(TaggedRunMetadata__storage_, tag),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "runMetadata",
        .dataTypeSpecific.className = NULL,
        .number = TaggedRunMetadata_FieldNumber_RunMetadata,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(TaggedRunMetadata__storage_, runMetadata),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[TaggedRunMetadata class]
                                     rootClass:[EventRoot class]
                                          file:EventRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(TaggedRunMetadata__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
