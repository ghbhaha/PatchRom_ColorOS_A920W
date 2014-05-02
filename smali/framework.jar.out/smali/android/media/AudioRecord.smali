.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$1;,
        Landroid/media/AudioRecord$PromptThread;,
        Landroid/media/AudioRecord$CallerAppInfo;,
        Landroid/media/AudioRecord$PermissionMode;,
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioRecord-Java"

.field private static sCheckList:[Ljava/lang/String;


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:I

.field private mNativeRecorderInJavaObj:I

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSecurityConfirm:Z

.field private mSessionId:I

.field private mState:I

.field private mSysContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 9
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"
    .parameter "bufferSizeInBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/16 v0, 0x5622

    iput v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 162
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 166
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 172
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mSysContext:Landroid/content/Context;

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioRecord;->mSecurityConfirm:Z

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 248
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 252
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioRecord;->audioParamCheck(IIII)V

    .line 254
    invoke-direct {p0, p5}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 257
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 258
    .local v7, session:[I
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    .line 261
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v2, p0, Landroid/media/AudioRecord;->mRecordSource:I

    iget v3, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v4, p0, Landroid/media/AudioRecord;->mChannels:I

    iget v5, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v6, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;IIIII[I)I

    move-result v8

    .line 264
    .local v8, initResult:I
    if-eqz v8, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when initializing native AudioRecord object."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/AudioRecord;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Landroid/media/AudioRecord;->mSysContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/media/AudioRecord;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Landroid/media/AudioRecord;->mSysContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Landroid/media/AudioRecord;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1117
    if-eqz p1, :cond_0

    .line 1118
    const-string v0, "amoiSystemCheckRecord"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_0
    return-void

    .line 1120
    :cond_0
    const-string v0, "amoiSystemCheckRecord"

    const-string/jumbo v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .parameter "audioBufferSize"

    .prologue
    const/4 v2, 0x1

    .line 354
    iget v3, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    mul-int v0, v3, v1

    .line 356
    .local v0, frameSizeInBytes:I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v2, :cond_2

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    .end local v0           #frameSizeInBytes:I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 360
    .restart local v0       #frameSizeInBytes:I
    :cond_2
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 361
    return-void
.end method

.method private audioParamCheck(IIII)V
    .locals 3
    .parameter "audioSource"
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 288
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 297
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 306
    iput p3, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 308
    sparse-switch p3, :sswitch_data_0

    .line 321
    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 322
    iput v1, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 323
    iput v1, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 313
    const/16 v0, 0x10

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    .line 329
    :goto_0
    packed-switch p4, :pswitch_data_0

    .line 338
    iput v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :sswitch_1
    iput v2, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 318
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioRecord;->mChannels:I

    goto :goto_0

    .line 331
    :pswitch_0
    iput v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 342
    :goto_1
    return-void

    .line 335
    :pswitch_1
    iput p4, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_1

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 891
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 892
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 895
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p2
    :goto_0
    return-object p2

    .line 893
    .restart local p2
    :catch_0
    move-exception v1

    .line 894
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

    invoke-direct {p0, v3}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCallerPermission(Landroid/media/AudioRecord$CallerAppInfo;Ljava/lang/String;)Landroid/media/AudioRecord$PermissionMode;
    .locals 16
    .parameter "callerInfo"
    .parameter "appWant"

    .prologue
    .line 985
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/media/AudioRecord$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 986
    .local v8, appName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/AudioRecord$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 987
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 989
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v14, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 993
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    .line 994
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 995
    .local v15, systemApp:Z
    :goto_1
    const/4 v12, 0x0

    .line 997
    .local v12, needCheck:Z
    if-eqz v15, :cond_1

    .line 998
    sget-object v1, Landroid/media/AudioRecord;->sCheckList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 999
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/AudioRecord$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/media/AudioRecord;->sCheckList:[Ljava/lang/String;

    .line 1003
    :cond_0
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    sget-object v1, Landroid/media/AudioRecord;->sCheckList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 1004
    sget-object v1, Landroid/media/AudioRecord;->sCheckList:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1005
    const/4 v12, 0x1

    .line 1011
    .end local v11           #index:I
    :cond_1
    if-eqz v15, :cond_2

    if-eqz v12, :cond_a

    .line 1012
    :cond_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/media/AudioRecord$CallerAppInfo;->mContext:Landroid/content/Context;

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

    .line 1014
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_5

    .line 1015
    const-string v1, "cursor null!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    .line 1016
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ASK:Landroid/media/AudioRecord$PermissionMode;

    .line 1041
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_3
    return-object v1

    .line 990
    .end local v12           #needCheck:Z
    .end local v15           #systemApp:Z
    :catch_0
    move-exception v10

    .line 991
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

    invoke-direct {v0, v1}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 994
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1003
    .restart local v11       #index:I
    .restart local v12       #needCheck:Z
    .restart local v15       #systemApp:Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1018
    .end local v11           #index:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v13, "query"

    .line 1020
    .local v13, permission:Ljava/lang/String;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1021
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1022
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1027
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1029
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V

    .line 1030
    if-nez v13, :cond_7

    .line 1031
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ASK:Landroid/media/AudioRecord$PermissionMode;

    goto :goto_3

    .line 1027
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1033
    :cond_7
    const-string v1, "enable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1034
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ALLOW:Landroid/media/AudioRecord$PermissionMode;

    goto :goto_3

    .line 1035
    :cond_8
    const-string v1, "disable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1036
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->DENY:Landroid/media/AudioRecord$PermissionMode;

    goto :goto_3

    .line 1038
    :cond_9
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ASK:Landroid/media/AudioRecord$PermissionMode;

    goto :goto_3

    .line 1041
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #permission:Ljava/lang/String;
    :cond_a
    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ALLOW:Landroid/media/AudioRecord$PermissionMode;

    goto :goto_3
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .parameter "sampleRateInHz"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, channelCount:I
    sparse-switch p1, :sswitch_data_0

    .line 498
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 516
    :cond_0
    :goto_0
    return v1

    .line 490
    :sswitch_0
    const/4 v0, 0x1

    .line 503
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    .line 504
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 505
    goto :goto_0

    .line 494
    :sswitch_1
    const/4 v0, 0x2

    .line 495
    goto :goto_1

    .line 508
    :cond_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 509
    .local v1, size:I
    if-nez v1, :cond_2

    move v1, v2

    .line 510
    goto :goto_0

    .line 512
    :cond_2
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 513
    goto :goto_0

    .line 486
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 872
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 876
    const-string v0, "AudioRecord-Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ android.media.AudioRecord ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "audiorecord_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 819
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 820
    .local v1, recorder:Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 827
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method amoiSystemSecurityCheck()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_finalize()V

    .line 384
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/media/AudioRecord;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .parameter "audioBuffer"
    .parameter "sizeInBytes"

    .prologue
    .line 665
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 666
    const/4 v0, -0x3

    .line 673
    :goto_0
    return v0

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    .line 670
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 673
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInBytes"
    .parameter "sizeInBytes"

    .prologue
    .line 617
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 618
    const/4 v0, -0x3

    .line 626
    :goto_0
    return v0

    .line 621
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 623
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 626
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .parameter "audioData"
    .parameter "offsetInShorts"
    .parameter "sizeInShorts"

    .prologue
    .line 641
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 642
    const/4 v0, -0x3

    .line 650
    :goto_0
    return v0

    .line 645
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 647
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 650
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 377
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 378
    return-void

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .parameter "markerInFrames"

    .prologue
    .line 727
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .parameter "periodInFrames"

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 687
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 699
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 703
    if-eqz p1, :cond_1

    .line 704
    if-eqz p2, :cond_0

    .line 705
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 713
    :goto_0
    monitor-exit v1

    .line 715
    return-void

    .line 708
    :cond_0
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 711
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 544
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 554
    :cond_1
    monitor-exit v1

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .parameter "syncEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 572
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 580
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 582
    :cond_1
    monitor-exit v1

    .line 583
    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 591
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 597
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 598
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 599
    monitor-exit v1

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
