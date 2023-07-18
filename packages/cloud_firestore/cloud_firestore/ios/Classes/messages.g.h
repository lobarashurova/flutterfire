// Autogenerated from Pigeon (v10.1.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import <Foundation/Foundation.h>

@protocol FlutterBinaryMessenger;
@protocol FlutterMessageCodec;
@class FlutterError;
@class FlutterStandardTypedData;

NS_ASSUME_NONNULL_BEGIN

/// An enumeration of document change types.
typedef NS_ENUM(NSUInteger, DocumentChangeType) {
  /// Indicates a new document was added to the set of documents matching the
  /// query.
  DocumentChangeTypeAdded = 0,
  /// Indicates a document within the query was modified.
  DocumentChangeTypeModified = 1,
  /// Indicates a document within the query was removed (either deleted or no
  /// longer matches the query.
  DocumentChangeTypeRemoved = 2,
};

/// An enumeration of firestore source types.
typedef NS_ENUM(NSUInteger, Source) {
  /// Causes Firestore to try to retrieve an up-to-date (server-retrieved) snapshot, but fall back
  /// to
  /// returning cached data if the server can't be reached.
  SourceServerAndCache = 0,
  /// Causes Firestore to avoid the cache, generating an error if the server cannot be reached. Note
  /// that the cache will still be updated if the server request succeeds. Also note that
  /// latency-compensation still takes effect, so any pending write operations will be visible in
  /// the
  /// returned data (merged into the server-provided data).
  SourceServer = 1,
  /// Causes Firestore to immediately return a value from the cache, ignoring the server completely
  /// (implying that the returned value may be stale with respect to the value on the server). If
  /// there is no data in the cache to satisfy the `get` call,
  /// [DocumentReference.get] will throw a [FirebaseException] and
  /// [Query.get] will return an empty [QuerySnapshotPlatform] with no documents.
  SourceCache = 2,
};

typedef NS_ENUM(NSUInteger, ServerTimestampBehavior) {
  /// Return null for [FieldValue.serverTimestamp()] values that have not yet
  ServerTimestampBehaviorNone = 0,
  /// Return local estimates for [FieldValue.serverTimestamp()] values that have not yet been set to
  /// their final value.
  ServerTimestampBehaviorEstimate = 1,
  /// Return the previous value for [FieldValue.serverTimestamp()] values that have not yet been set
  /// to their final value.
  ServerTimestampBehaviorPrevious = 2,
};

@class PigeonFirebaseSettings;
@class PigeonFirebaseApp;
@class PigeonSnapshotMetadata;
@class PigeonDocumentSnapshot;
@class PigeonDocumentChange;
@class PigeonQuerySnapshot;
@class PigeonGetOptions;

@interface PigeonFirebaseSettings : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithPersistenceEnabled:(nullable NSNumber *)persistenceEnabled
                                      host:(nullable NSString *)host
                                sslEnabled:(nullable NSNumber *)sslEnabled
                            cacheSizeBytes:(nullable NSNumber *)cacheSizeBytes
                 ignoreUndefinedProperties:(NSNumber *)ignoreUndefinedProperties;
@property(nonatomic, strong, nullable) NSNumber *persistenceEnabled;
@property(nonatomic, copy, nullable) NSString *host;
@property(nonatomic, strong, nullable) NSNumber *sslEnabled;
@property(nonatomic, strong, nullable) NSNumber *cacheSizeBytes;
@property(nonatomic, strong) NSNumber *ignoreUndefinedProperties;
@end

@interface PigeonFirebaseApp : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithAppName:(NSString *)appName settings:(PigeonFirebaseSettings *)settings;
@property(nonatomic, copy) NSString *appName;
@property(nonatomic, strong) PigeonFirebaseSettings *settings;
@end

@interface PigeonSnapshotMetadata : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithHasPendingWrites:(NSNumber *)hasPendingWrites
                             isFromCache:(NSNumber *)isFromCache;
@property(nonatomic, strong) NSNumber *hasPendingWrites;
@property(nonatomic, strong) NSNumber *isFromCache;
@end

@interface PigeonDocumentSnapshot : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithPath:(NSString *)path
                        data:(nullable NSDictionary<NSString *, id> *)data
                    metadata:(PigeonSnapshotMetadata *)metadata;
@property(nonatomic, copy) NSString *path;
@property(nonatomic, strong, nullable) NSDictionary<NSString *, id> *data;
@property(nonatomic, strong) PigeonSnapshotMetadata *metadata;
@end

@interface PigeonDocumentChange : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithType:(DocumentChangeType)type
                    document:(PigeonDocumentSnapshot *)document
                    oldIndex:(NSNumber *)oldIndex
                    newIndex:(NSNumber *)newIndex;
@property(nonatomic, assign) DocumentChangeType type;
@property(nonatomic, strong) PigeonDocumentSnapshot *document;
@property(nonatomic, strong) NSNumber *oldIndex;
@property(nonatomic, strong) NSNumber *newIndex;
@end

@interface PigeonQuerySnapshot : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithDocuments:(NSArray<PigeonDocumentSnapshot *> *)documents
                  documentChanges:(NSArray<PigeonDocumentChange *> *)documentChanges
                         metadata:(PigeonSnapshotMetadata *)metadata;
@property(nonatomic, strong) NSArray<PigeonDocumentSnapshot *> *documents;
@property(nonatomic, strong) NSArray<PigeonDocumentChange *> *documentChanges;
@property(nonatomic, strong) PigeonSnapshotMetadata *metadata;
@end

@interface PigeonGetOptions : NSObject
/// `init` unavailable to enforce nonnull fields, see the `make` class method.
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)makeWithSource:(Source)source
       serverTimestampBehavior:(ServerTimestampBehavior)serverTimestampBehavior;
@property(nonatomic, assign) Source source;
@property(nonatomic, assign) ServerTimestampBehavior serverTimestampBehavior;
@end

/// The codec used by FirebaseFirestoreHostApi.
NSObject<FlutterMessageCodec> *FirebaseFirestoreHostApiGetCodec(void);

@protocol FirebaseFirestoreHostApi
- (void)loadBundleApp:(PigeonFirebaseApp *)app
               bundle:(FlutterStandardTypedData *)bundle
           completion:(void (^)(NSString *_Nullable, FlutterError *_Nullable))completion;
- (void)namedQueryGetApp:(PigeonFirebaseApp *)app
                    name:(NSString *)name
                 options:(PigeonGetOptions *)options
              completion:
                  (void (^)(PigeonQuerySnapshot *_Nullable, FlutterError *_Nullable))completion;
- (void)clearPersistenceApp:(PigeonFirebaseApp *)app
                 completion:(void (^)(FlutterError *_Nullable))completion;
- (void)disableNetworkApp:(PigeonFirebaseApp *)app
               completion:(void (^)(FlutterError *_Nullable))completion;
- (void)enableNetworkApp:(PigeonFirebaseApp *)app
              completion:(void (^)(FlutterError *_Nullable))completion;
- (void)terminateApp:(PigeonFirebaseApp *)app
          completion:(void (^)(FlutterError *_Nullable))completion;
- (void)waitForPendingWritesApp:(PigeonFirebaseApp *)app
                     completion:(void (^)(FlutterError *_Nullable))completion;
- (void)setIndexConfigurationApp:(PigeonFirebaseApp *)app
              indexConfiguration:(NSString *)indexConfiguration
                      completion:(void (^)(FlutterError *_Nullable))completion;
- (void)setLoggingEnabledLoggingEnabled:(NSNumber *)loggingEnabled
                             completion:(void (^)(FlutterError *_Nullable))completion;
@end

extern void FirebaseFirestoreHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger,
                                          NSObject<FirebaseFirestoreHostApi> *_Nullable api);

NS_ASSUME_NONNULL_END
