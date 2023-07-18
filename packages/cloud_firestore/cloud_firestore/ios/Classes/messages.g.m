// Autogenerated from Pigeon (v10.1.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.g.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface PigeonFirebaseSettings ()
+ (PigeonFirebaseSettings *)fromList:(NSArray *)list;
+ (nullable PigeonFirebaseSettings *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonFirebaseApp ()
+ (PigeonFirebaseApp *)fromList:(NSArray *)list;
+ (nullable PigeonFirebaseApp *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonSnapshotMetadata ()
+ (PigeonSnapshotMetadata *)fromList:(NSArray *)list;
+ (nullable PigeonSnapshotMetadata *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonDocumentSnapshot ()
+ (PigeonDocumentSnapshot *)fromList:(NSArray *)list;
+ (nullable PigeonDocumentSnapshot *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonDocumentChange ()
+ (PigeonDocumentChange *)fromList:(NSArray *)list;
+ (nullable PigeonDocumentChange *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonQuerySnapshot ()
+ (PigeonQuerySnapshot *)fromList:(NSArray *)list;
+ (nullable PigeonQuerySnapshot *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface PigeonGetOptions ()
+ (PigeonGetOptions *)fromList:(NSArray *)list;
+ (nullable PigeonGetOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PigeonFirebaseSettings
+ (instancetype)makeWithPersistenceEnabled:(nullable NSNumber *)persistenceEnabled
                                      host:(nullable NSString *)host
                                sslEnabled:(nullable NSNumber *)sslEnabled
                            cacheSizeBytes:(nullable NSNumber *)cacheSizeBytes
                 ignoreUndefinedProperties:(NSNumber *)ignoreUndefinedProperties {
  PigeonFirebaseSettings *pigeonResult = [[PigeonFirebaseSettings alloc] init];
  pigeonResult.persistenceEnabled = persistenceEnabled;
  pigeonResult.host = host;
  pigeonResult.sslEnabled = sslEnabled;
  pigeonResult.cacheSizeBytes = cacheSizeBytes;
  pigeonResult.ignoreUndefinedProperties = ignoreUndefinedProperties;
  return pigeonResult;
}
+ (PigeonFirebaseSettings *)fromList:(NSArray *)list {
  PigeonFirebaseSettings *pigeonResult = [[PigeonFirebaseSettings alloc] init];
  pigeonResult.persistenceEnabled = GetNullableObjectAtIndex(list, 0);
  pigeonResult.host = GetNullableObjectAtIndex(list, 1);
  pigeonResult.sslEnabled = GetNullableObjectAtIndex(list, 2);
  pigeonResult.cacheSizeBytes = GetNullableObjectAtIndex(list, 3);
  pigeonResult.ignoreUndefinedProperties = GetNullableObjectAtIndex(list, 4);
  NSAssert(pigeonResult.ignoreUndefinedProperties != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonFirebaseSettings *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonFirebaseSettings fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.persistenceEnabled ?: [NSNull null]),
    (self.host ?: [NSNull null]),
    (self.sslEnabled ?: [NSNull null]),
    (self.cacheSizeBytes ?: [NSNull null]),
    (self.ignoreUndefinedProperties ?: [NSNull null]),
  ];
}
@end

@implementation PigeonFirebaseApp
+ (instancetype)makeWithAppName:(NSString *)appName settings:(PigeonFirebaseSettings *)settings {
  PigeonFirebaseApp *pigeonResult = [[PigeonFirebaseApp alloc] init];
  pigeonResult.appName = appName;
  pigeonResult.settings = settings;
  return pigeonResult;
}
+ (PigeonFirebaseApp *)fromList:(NSArray *)list {
  PigeonFirebaseApp *pigeonResult = [[PigeonFirebaseApp alloc] init];
  pigeonResult.appName = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.appName != nil, @"");
  pigeonResult.settings =
      [PigeonFirebaseSettings nullableFromList:(GetNullableObjectAtIndex(list, 1))];
  NSAssert(pigeonResult.settings != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonFirebaseApp *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonFirebaseApp fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.appName ?: [NSNull null]),
    (self.settings ? [self.settings toList] : [NSNull null]),
  ];
}
@end

@implementation PigeonSnapshotMetadata
+ (instancetype)makeWithHasPendingWrites:(NSNumber *)hasPendingWrites
                             isFromCache:(NSNumber *)isFromCache {
  PigeonSnapshotMetadata *pigeonResult = [[PigeonSnapshotMetadata alloc] init];
  pigeonResult.hasPendingWrites = hasPendingWrites;
  pigeonResult.isFromCache = isFromCache;
  return pigeonResult;
}
+ (PigeonSnapshotMetadata *)fromList:(NSArray *)list {
  PigeonSnapshotMetadata *pigeonResult = [[PigeonSnapshotMetadata alloc] init];
  pigeonResult.hasPendingWrites = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.hasPendingWrites != nil, @"");
  pigeonResult.isFromCache = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.isFromCache != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonSnapshotMetadata *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonSnapshotMetadata fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.hasPendingWrites ?: [NSNull null]),
    (self.isFromCache ?: [NSNull null]),
  ];
}
@end

@implementation PigeonDocumentSnapshot
+ (instancetype)makeWithPath:(NSString *)path
                        data:(nullable NSDictionary<NSString *, id> *)data
                    metadata:(PigeonSnapshotMetadata *)metadata {
  PigeonDocumentSnapshot *pigeonResult = [[PigeonDocumentSnapshot alloc] init];
  pigeonResult.path = path;
  pigeonResult.data = data;
  pigeonResult.metadata = metadata;
  return pigeonResult;
}
+ (PigeonDocumentSnapshot *)fromList:(NSArray *)list {
  PigeonDocumentSnapshot *pigeonResult = [[PigeonDocumentSnapshot alloc] init];
  pigeonResult.path = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.path != nil, @"");
  pigeonResult.data = GetNullableObjectAtIndex(list, 1);
  pigeonResult.metadata =
      [PigeonSnapshotMetadata nullableFromList:(GetNullableObjectAtIndex(list, 2))];
  NSAssert(pigeonResult.metadata != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonDocumentSnapshot *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonDocumentSnapshot fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.path ?: [NSNull null]),
    (self.data ?: [NSNull null]),
    (self.metadata ? [self.metadata toList] : [NSNull null]),
  ];
}
@end

@implementation PigeonDocumentChange
+ (instancetype)makeWithType:(DocumentChangeType)type
                    document:(PigeonDocumentSnapshot *)document
                    oldIndex:(NSNumber *)oldIndex
                    newIndex:(NSNumber *)newIndex {
  PigeonDocumentChange *pigeonResult = [[PigeonDocumentChange alloc] init];
  pigeonResult.type = type;
  pigeonResult.document = document;
  pigeonResult.oldIndex = oldIndex;
  pigeonResult.newIndex = newIndex;
  return pigeonResult;
}
+ (PigeonDocumentChange *)fromList:(NSArray *)list {
  PigeonDocumentChange *pigeonResult = [[PigeonDocumentChange alloc] init];
  pigeonResult.type = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.document =
      [PigeonDocumentSnapshot nullableFromList:(GetNullableObjectAtIndex(list, 1))];
  NSAssert(pigeonResult.document != nil, @"");
  pigeonResult.oldIndex = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.oldIndex != nil, @"");
  pigeonResult.newIndex = GetNullableObjectAtIndex(list, 3);
  NSAssert(pigeonResult.newIndex != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonDocumentChange *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonDocumentChange fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.type),
    (self.document ? [self.document toList] : [NSNull null]),
    (self.oldIndex ?: [NSNull null]),
    (self.newIndex ?: [NSNull null]),
  ];
}
@end

@implementation PigeonQuerySnapshot
+ (instancetype)makeWithDocuments:(NSArray<PigeonDocumentSnapshot *> *)documents
                  documentChanges:(NSArray<PigeonDocumentChange *> *)documentChanges
                         metadata:(PigeonSnapshotMetadata *)metadata {
  PigeonQuerySnapshot *pigeonResult = [[PigeonQuerySnapshot alloc] init];
  pigeonResult.documents = documents;
  pigeonResult.documentChanges = documentChanges;
  pigeonResult.metadata = metadata;
  return pigeonResult;
}
+ (PigeonQuerySnapshot *)fromList:(NSArray *)list {
  PigeonQuerySnapshot *pigeonResult = [[PigeonQuerySnapshot alloc] init];
  pigeonResult.documents = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.documents != nil, @"");
  pigeonResult.documentChanges = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.documentChanges != nil, @"");
  pigeonResult.metadata =
      [PigeonSnapshotMetadata nullableFromList:(GetNullableObjectAtIndex(list, 2))];
  NSAssert(pigeonResult.metadata != nil, @"");
  return pigeonResult;
}
+ (nullable PigeonQuerySnapshot *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonQuerySnapshot fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.documents ?: [NSNull null]),
    (self.documentChanges ?: [NSNull null]),
    (self.metadata ? [self.metadata toList] : [NSNull null]),
  ];
}
@end

@implementation PigeonGetOptions
+ (instancetype)makeWithSource:(Source)source
       serverTimestampBehavior:(ServerTimestampBehavior)serverTimestampBehavior {
  PigeonGetOptions *pigeonResult = [[PigeonGetOptions alloc] init];
  pigeonResult.source = source;
  pigeonResult.serverTimestampBehavior = serverTimestampBehavior;
  return pigeonResult;
}
+ (PigeonGetOptions *)fromList:(NSArray *)list {
  PigeonGetOptions *pigeonResult = [[PigeonGetOptions alloc] init];
  pigeonResult.source = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.serverTimestampBehavior = [GetNullableObjectAtIndex(list, 1) integerValue];
  return pigeonResult;
}
+ (nullable PigeonGetOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [PigeonGetOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.source),
    @(self.serverTimestampBehavior),
  ];
}
@end

@interface FirebaseFirestoreHostApiCodecReader : FlutterStandardReader
@end
@implementation FirebaseFirestoreHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128:
      return [PigeonDocumentChange fromList:[self readValue]];
    case 129:
      return [PigeonDocumentSnapshot fromList:[self readValue]];
    case 130:
      return [PigeonDocumentSnapshot fromList:[self readValue]];
    case 131:
      return [PigeonFirebaseApp fromList:[self readValue]];
    case 132:
      return [PigeonFirebaseSettings fromList:[self readValue]];
    case 133:
      return [PigeonGetOptions fromList:[self readValue]];
    case 134:
      return [PigeonQuerySnapshot fromList:[self readValue]];
    case 135:
      return [PigeonSnapshotMetadata fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FirebaseFirestoreHostApiCodecWriter : FlutterStandardWriter
@end
@implementation FirebaseFirestoreHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[PigeonDocumentChange class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonDocumentSnapshot class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonDocumentSnapshot class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonFirebaseApp class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonFirebaseSettings class]]) {
    [self writeByte:132];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonGetOptions class]]) {
    [self writeByte:133];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonQuerySnapshot class]]) {
    [self writeByte:134];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PigeonSnapshotMetadata class]]) {
    [self writeByte:135];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FirebaseFirestoreHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FirebaseFirestoreHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FirebaseFirestoreHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FirebaseFirestoreHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FirebaseFirestoreHostApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FirebaseFirestoreHostApiCodecReaderWriter *readerWriter =
        [[FirebaseFirestoreHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FirebaseFirestoreHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger,
                                   NSObject<FirebaseFirestoreHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseFirestoreHostApi.loadBundle"
        binaryMessenger:binaryMessenger
                  codec:FirebaseFirestoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(loadBundleApp:bundle:completion:)],
                @"FirebaseFirestoreHostApi api (%@) doesn't respond to "
                @"@selector(loadBundleApp:bundle:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        FlutterStandardTypedData *arg_bundle = GetNullableObjectAtIndex(args, 1);
        [api loadBundleApp:arg_app
                    bundle:arg_bundle
                completion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
                  callback(wrapResult(output, error));
                }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseFirestoreHostApi.namedQueryGet"
        binaryMessenger:binaryMessenger
                  codec:FirebaseFirestoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(namedQueryGetApp:name:options:completion:)],
                @"FirebaseFirestoreHostApi api (%@) doesn't respond to "
                @"@selector(namedQueryGetApp:name:options:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        NSString *arg_name = GetNullableObjectAtIndex(args, 1);
        PigeonGetOptions *arg_options = GetNullableObjectAtIndex(args, 2);
        [api namedQueryGetApp:arg_app
                         name:arg_name
                      options:arg_options
                   completion:^(PigeonQuerySnapshot *_Nullable output,
                                FlutterError *_Nullable error) {
                     callback(wrapResult(output, error));
                   }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel = [[FlutterBasicMessageChannel alloc]
           initWithName:@"dev.flutter.pigeon.FirebaseFirestoreHostApi.clearPersistence"
        binaryMessenger:binaryMessenger
                  codec:FirebaseFirestoreHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(clearPersistenceApp:completion:)],
                @"FirebaseFirestoreHostApi api (%@) doesn't respond to "
                @"@selector(clearPersistenceApp:completion:)",
                api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PigeonFirebaseApp *arg_app = GetNullableObjectAtIndex(args, 0);
        [api clearPersistenceApp:arg_app
                      completion:^(PigeonQuerySnapshot *_Nullable output,
                                   FlutterError *_Nullable error) {
                        callback(wrapResult(output, error));
                      }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}