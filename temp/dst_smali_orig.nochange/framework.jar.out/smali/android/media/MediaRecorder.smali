.class public Landroid/media/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRecorder$1;,
        Landroid/media/MediaRecorder$PromptThread;,
        Landroid/media/MediaRecorder$CallerAppInfo;,
        Landroid/media/MediaRecorder$PermissionMode;,
        Landroid/media/MediaRecorder$HDRecordMode;,
        Landroid/media/MediaRecorder$EventHandler;,
        Landroid/media/MediaRecorder$OnInfoListener;,
        Landroid/media/MediaRecorder$OnErrorListener;,
        Landroid/media/MediaRecorder$VideoEncoder;,
        Landroid/media/MediaRecorder$AudioEncoder;,
        Landroid/media/MediaRecorder$OutputFormat;,
        Landroid/media/MediaRecorder$VideoSource;,
        Landroid/media/MediaRecorder$AudioSource;
    }
.end annotation


# static fields
.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_RECORDER_ENCODER_ERROR:I = -0x44f

.field public static final MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_RECORDER_EVENT_INFO:I = 0x2

.field public static final MEDIA_RECORDER_INFO_BITRATE_ADJUSTED:I = 0x382

.field public static final MEDIA_RECORDER_INFO_CAMERA_RELEASE:I = 0x7cf

.field public static final MEDIA_RECORDER_INFO_FPS_ADJUSTED:I = 0x381

.field public static final MEDIA_RECORDER_INFO_MAX_DURATION_REACHED:I = 0x320

.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field public static final MEDIA_RECORDER_INFO_RECORDED_SIZE:I = 0x37f

.field public static final MEDIA_RECORDER_INFO_SESSIONID:I = 0x380

.field public static final MEDIA_RECORDER_INFO_START_TIMER:I = 0x7ce

.field public static final MEDIA_RECORDER_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_RECORDER_INFO_WRITE_SLOW:I = 0x383

.field public static final MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES:I = 0x3f1

.field public static final MEDIA_RECORDER_TRACK_INFO_DURATION_MS:I = 0x3eb

.field public static final MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES:I = 0x3ed

.field public static final MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS:I = 0x3ef

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_END:I = 0x7d0

.field public static final MEDIA_RECORDER_TRACK_INFO_LIST_START:I = 0x3e8

.field public static final MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS:I = 0x3ec

.field public static final MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME:I = 0x3e9

.field public static final MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS:I = 0x3f0

.field public static final MEDIA_RECORDER_TRACK_INFO_TYPE:I = 0x3ea

.field public static final MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "MediaRecorder"

.field private static sCheckList:[Ljava/lang/String;


# instance fields
.field private mCallerContext:Landroid/content/Context;

.field private mEventHandler:Landroid/media/MediaRecorder$EventHandler;

.field private mFd:Ljava/io/FileDescriptor;

.field private mNativeContext:I

.field protected mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mPath:Ljava/lang/String;

.field private mSecurityConfirm:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/media/MediaRecorder;->native_init()V

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRecorder;->mSecurityConfirm:Z

    .line 1229
    iput-object v2, p0, Landroid/media/MediaRecorder;->mCallerContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    .line 140
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaRecorder;->native_setup(Ljava/lang/Object;)V

    .line 141
    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    new-instance v1, Landroid/media/MediaRecorder$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaRecorder$EventHandler;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0

    .line 134
    :cond_1
    iput-object v2, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    goto :goto_0
.end method

.method private native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setOutputFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/media/MediaRecorder;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaRecorder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/media/MediaRecorder;->mCallerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaRecorder;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/media/MediaRecorder;->mCallerContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$400(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1466
    if-eqz p1, :cond_0

    .line 1467
    const-string v0, "amoiSystemCheckMediaRecord"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :goto_0
    return-void

    .line 1469
    :cond_0
    const-string v0, "amoiSystemCheckMediaRecord"

    const-string/jumbo v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 1238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1240
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1241
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1244
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p2
    :goto_0
    return-object p2

    .line 1242
    .restart local p2
    :catch_0
    move-exception v1

    .line 1243
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager Name Not Found for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .prologue
    .line 355
    const/16 v0, 0x8

    return v0
.end method

.method private getCallerPermission(Landroid/media/MediaRecorder$CallerAppInfo;Ljava/lang/String;)Landroid/media/MediaRecorder$PermissionMode;
    .locals 16
    .parameter "callerInfo"
    .parameter "appWant"

    .prologue
    .line 1335
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/media/MediaRecorder$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 1336
    .local v8, appName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/MediaRecorder$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1337
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 1339
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v14, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1343
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    .line 1344
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 1345
    .local v15, systemApp:Z
    :goto_1
    const/4 v12, 0x0

    .line 1346
    .local v12, needCheck:Z
    if-eqz v15, :cond_1

    .line 1347
    sget-object v1, Landroid/media/MediaRecorder;->sCheckList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1348
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/MediaRecorder$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/media/MediaRecorder;->sCheckList:[Ljava/lang/String;

    .line 1352
    :cond_0
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    sget-object v1, Landroid/media/MediaRecorder;->sCheckList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 1353
    sget-object v1, Landroid/media/MediaRecorder;->sCheckList:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1354
    const/4 v12, 0x1

    .line 1360
    .end local v11           #index:I
    :cond_1
    if-eqz v15, :cond_2

    if-eqz v12, :cond_a

    .line 1361
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/MediaRecorder$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string/jumbo v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const-string/jumbo v6, "name DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1363
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_5

    .line 1364
    const-string v1, "cursor null!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    .line 1365
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->ASK:Landroid/media/MediaRecorder$PermissionMode;

    .line 1390
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_3
    return-object v1

    .line 1340
    .end local v12           #needCheck:Z
    .end local v15           #systemApp:Z
    :catch_0
    move-exception v10

    .line 1341
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager Name Not Found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1352
    .restart local v11       #index:I
    .restart local v12       #needCheck:Z
    .restart local v15       #systemApp:Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1367
    .end local v11           #index:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v13, "query"

    .line 1369
    .local v13, permission:Ljava/lang/String;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1370
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1371
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1376
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1378
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V

    .line 1379
    if-nez v13, :cond_7

    .line 1380
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->ASK:Landroid/media/MediaRecorder$PermissionMode;

    goto :goto_3

    .line 1376
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1382
    :cond_7
    const-string v1, "enable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1383
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->ALLOW:Landroid/media/MediaRecorder$PermissionMode;

    goto :goto_3

    .line 1384
    :cond_8
    const-string v1, "disable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1385
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->DENY:Landroid/media/MediaRecorder$PermissionMode;

    goto :goto_3

    .line 1387
    :cond_9
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->ASK:Landroid/media/MediaRecorder$PermissionMode;

    goto :goto_3

    .line 1390
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #permission:Ljava/lang/String;
    :cond_a
    sget-object v1, Landroid/media/MediaRecorder$PermissionMode;->ALLOW:Landroid/media/MediaRecorder$PermissionMode;

    goto :goto_3
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private native native_reset()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .parameter "mediarecorder_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const/16 v4, 0x7cf

    .line 1062
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRecorder;

    .line 1063
    .local v1, mr:Landroid/media/MediaRecorder;
    if-nez v1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    if-eqz v2, :cond_0

    .line 1068
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 1070
    const-string v2, "MediaRecorder"

    const-string v3, "MediaRecorder MEDIA_RECORDER_INFO_CAMERA_RELEASE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v2, v1, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v2, :cond_0

    .line 1073
    iget-object v2, v1, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v4, v3}, Landroid/media/MediaRecorder$OnInfoListener;->onInfo(Landroid/media/MediaRecorder;II)V

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1078
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native setParameter(Ljava/lang/String;)V
.end method


# virtual methods
.method public native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method amoiSystemSecurityCheck()Z
    .locals 1

    .prologue
    .line 1250
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1115
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_finalize()V

    return-void
.end method

.method public native getMaxAmplitude()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1127
    const-string/jumbo v0, "media-param-pause=1"

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method public prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 723
    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 724
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 726
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 736
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaRecorder;->_prepare()V

    .line 737
    return-void

    .line 728
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 730
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    .line 731
    iget-object v1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaRecorder;->_setOutputFile(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 733
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No valid output file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native release()V
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 784
    invoke-direct {p0}, Landroid/media/MediaRecorder;->native_reset()V

    .line 787
    iget-object v0, p0, Landroid/media/MediaRecorder;->mEventHandler:Landroid/media/MediaRecorder$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 788
    return-void
.end method

.method public setAlbumTag(Ljava/lang/String;)V
    .locals 2
    .parameter "album"

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAlbumTag: Null album!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_0
    return-void

    .line 1165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistTag(Ljava/lang/String;)V
    .locals 2
    .parameter "artist"

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setArtistTag: Null artist!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media-param-tag-artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioChannels(I)V
    .locals 2
    .parameter "numChannels"

    .prologue
    .line 611
    if-gtz p1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-number-of-channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public native setAudioEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 627
    if-gtz p1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 2
    .parameter "samplingRate"

    .prologue
    .line 596
    if-gtz p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Audio sampling rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-sampling-rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public native setAudioSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setAuxiliaryOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 657
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public setAuxiliaryOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 668
    const-string v0, "MediaRecorder"

    const-string/jumbo v1, "setAuxiliaryOutputFile(String) is no longer supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
.end method

.method public setCaptureRate(D)V
    .locals 5
    .parameter "fps"

    .prologue
    .line 417
    const-string/jumbo v3, "time-lapse-enable=1"

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 419
    const-wide/high16 v3, 0x3ff0

    div-double v0, v3, p1

    .line 420
    .local v0, timeBetweenFrameCapture:D
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v0

    double-to-int v2, v3

    .line 421
    .local v2, timeBetweenFrameCaptureMs:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time-between-time-lapse-frame-capture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public setHDRecordMode(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "isVideo"

    .prologue
    .line 1217
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal HDRecord mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_1
    if-eqz p2, :cond_2

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvideomode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1226
    :goto_0
    return-void

    .line 1224
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio-param-hdrecvoicemode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocation(FF)V
    .locals 8
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    const v7, 0x461c4000

    const-wide/high16 v5, 0x3fe0

    .line 466
    mul-float v3, p1, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 467
    .local v0, latitudex10000:I
    mul-float v3, p2, v7

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 469
    .local v1, longitudex10000:I
    const v3, 0xdbba0

    if-gt v0, v3, :cond_0

    const v3, -0xdbba0

    if-ge v0, v3, :cond_1

    .line 470
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    .end local v2           #msg:Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    if-gt v1, v3, :cond_2

    const v3, -0x1b7740

    if-ge v1, v3, :cond_3

    .line 474
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Longitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 478
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param-geotag-latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "param-geotag-longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public native setMaxDuration(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native setMaxFileSize(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setOnCameraReleasedListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1143
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnCameraReleasedListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 1144
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 844
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 845
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 993
    iput-object p1, p0, Landroid/media/MediaRecorder;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 994
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 440
    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-rotation-angle-degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 682
    iput-object p1, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 683
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 696
    iput-object p1, p0, Landroid/media/MediaRecorder;->mPath:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public native setOutputFormat(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setParametersExtra(Ljava/lang/String;)V
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    .line 167
    iput-object p1, p0, Landroid/media/MediaRecorder;->mSurface:Landroid/view/Surface;

    .line 168
    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 382
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 383
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 384
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 385
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 386
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 387
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3f8

    if-gt v0, v1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 393
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 394
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 395
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public setStereo3DType(Ljava/lang/String;)V
    .locals 1
    .parameter "stereo3dType"

    .prologue
    .line 1172
    const-string/jumbo v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    const-string/jumbo v0, "video-param-stereo-mode=0"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1181
    :goto_0
    return-void

    .line 1174
    :cond_0
    const-string v0, "frame_seq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1175
    const-string/jumbo v0, "video-param-stereo-mode=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :cond_1
    const-string/jumbo v0, "sidebyside"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    const-string/jumbo v0, "video-param-stereo-mode=2"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_2
    const-string/jumbo v0, "video-param-stereo-mode=3"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTimeLapseEnable()V
    .locals 1

    .prologue
    .line 1187
    const-string/jumbo v0, "time-lapse-enable=1"

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public native setVideoEncoder(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 2
    .parameter "bitRate"

    .prologue
    .line 643
    if-gtz p1, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video encoding bit rate is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-encoding-bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRecorder;->setParameter(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public native setVideoFrameRate(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoSource(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setZoomValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1194
    if-gez p1, :cond_0

    .line 1195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zoom value is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video-param-camera-digizoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->_start()V

    .line 761
    return-void
.end method

.method public native stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
