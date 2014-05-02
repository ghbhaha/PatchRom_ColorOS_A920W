.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.first_time_boot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_GPS_TIME_SYNC_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_CONNECTED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final ICS_BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.boot.count"

.field private static final NOT_SET:J = -0x1L

.field private static final POLLING_INTERVAL_MS:J = 0x5265c00L

.field private static final POLLING_INTERVAL_SHORTER_MS:J = 0x1388L

.field private static POLL_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"

.field private static final TIME_ERROR_THRESHOLD_MS:I = 0x1388

.field private static final TRY_AGAIN_TIMES_MAX:I = 0x10

.field private static mDefaultYear:I = 0x0

.field private static final mHostNum:I = 0x4

.field private static mIsOverMobile:Z

.field private static final mSntphost:[Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDynamicServer:Ljava/lang/String;

.field private mGpsHandler:Landroid/os/Handler;

.field private mGpsThread:Landroid/os/HandlerThread;

.field private mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

.field private mGpsTimerThread:Ljava/lang/Thread;

.field private mGpsToastHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIsGpsTimeSyncRunning:Z

.field private mLastNtpFetchTime:J

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mThread:Landroid/os/HandlerThread;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeout:J

.field private mTryAgainCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    const/16 v0, 0x7dc

    sput v0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 86
    sput-boolean v2, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 101
    sput v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cn.pool.ntp.org"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "203.117.180.36"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "time-a.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time-nw.nist.gov"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NetworkTimeUpdateService;->mSntphost:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 106
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 122
    iput-wide v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 129
    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeout:J

    .line 323
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    iput-boolean v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 503
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$5;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$5;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    .line 510
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$6;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$6;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 139
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 141
    sget-object v1, Lcom/android/server/NetworkTimeUpdateService;->mSntphost:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mDynamicServer:Ljava/lang/String;

    .line 142
    new-instance v1, Landroid/util/NtpTrustedTime;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mDynamicServer:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 144
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, pollIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkTimeUpdateService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkTimeUpdateService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->getGpsTimeSyncState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    return p1
.end method

.method private getGpsTimeSyncState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 431
    :cond_0
    :goto_0
    return v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 11
    .parameter "event"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v7

    if-nez v7, :cond_0

    .line 300
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 239
    .local v5, refTime:J
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 240
    const-wide/32 v7, 0x5265c00

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    .local v0, currentTime:J
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_7

    .line 248
    :cond_2
    const-string v7, "NetworkTimeUpdateService"

    const-string v8, "Before Ntp fetch"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 253
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    rem-int/lit8 v2, v7, 0x4

    .line 255
    .local v2, index:I
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTryAgainCounter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";mHostNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v7, Lcom/android/server/NetworkTimeUpdateService;->mSntphost:[Ljava/lang/String;

    aget-object v7, v7, v2

    iput-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mDynamicServer:Ljava/lang/String;

    .line 257
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ntp fetch host = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mDynamicServer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mDynamicServer:Ljava/lang/String;

    const-wide/16 v9, 0x1388

    invoke-interface {v7, v8, v9, v10}, Landroid/util/TrustedTime;->forceRefresh(Ljava/lang/String;J)Z

    .line 264
    .end local v2           #index:I
    :cond_3
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<amoi log>>>>forceRefresh is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v9}, Landroid/util/TrustedTime;->forceRefresh()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getCacheAge"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v9}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-gez v7, :cond_9

    .line 266
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v3

    .line 267
    .local v3, ntp:J
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 270
    sub-long v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_8

    .line 273
    :cond_4
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    sub-long v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gtz v7, :cond_5

    .line 275
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For initial setup, rtc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_5
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ntp time to be set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 280
    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 285
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 299
    .end local v3           #ntp:J
    :cond_7
    const-wide/32 v7, 0x5265c00

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 283
    .restart local v3       #ntp:J
    :cond_8
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ntp time is close enough = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 288
    .end local v3           #ntp:J
    :cond_9
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 289
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    const/16 v8, 0x10

    if-gt v7, v8, :cond_a

    .line 290
    const-wide/16 v7, 0x1388

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 293
    :cond_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 294
    const-wide/32 v7, 0x5265c00

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .parameter "interval"

    .prologue
    .line 308
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 310
    .local v2, now:J
    add-long v0, v2, p1

    .line 311
    .local v0, next:J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 312
    return-void
.end method


# virtual methods
.method public onGpsTimeChanged(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 459
    if-eqz p1, :cond_1

    .line 460
    const v0, 0x2bf20

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const v2, 0x20500dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public startUsingGpsWithTimeout(ILjava/lang/String;)V
    .locals 6
    .parameter "milliseconds"
    .parameter "timeoutMsg"

    .prologue
    const/4 v1, 0x1

    .line 471
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    if-ne v0, v1, :cond_0

    .line 472
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "WARNING: Gps Time Sync is already run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 475
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 478
    const-string v0, "NetworkTimeUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start using GPS for GPS time sync timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeoutMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 480
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 481
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/NetworkTimeUpdateService$4;-><init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    .line 499
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 151
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 153
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    .line 155
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "NetworkTimeUpdateService"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    .line 156
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 157
    new-instance v8, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 161
    new-instance v8, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v9, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 162
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 165
    const-string v8, "NetworkTimeUpdateService"

    const-string v9, "add GPS time sync handler and looper"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "NetworkTimeUpdateService"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    .line 167
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v8, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    .line 170
    new-instance v8, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    .line 171
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    .line 175
    const-string v8, "persist.sys.boot.count"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, icsString:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v7

    .line 177
    .local v4, isIcsVersion:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 207
    :cond_0
    :goto_1
    return-void

    .end local v4           #isIcsVersion:Z
    :cond_1
    move v4, v2

    .line 176
    goto :goto_0

    .line 181
    .restart local v4       #isIcsVersion:Z
    :cond_2
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2090005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 182
    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x20a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/NetworkTimeUpdateService;->mIsOverMobile:Z

    .line 184
    const-string v8, "persist.sys.first_time_boot"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, tempString:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v2

    .line 186
    .local v3, isFirstBoot:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 187
    const-string v8, "ro.kernel.qemu"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 189
    .local v2, isEmulator:Z
    :goto_3
    if-eqz v2, :cond_5

    .line 190
    const-string v7, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isEmulator:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #isEmulator:Z
    .end local v3           #isFirstBoot:Z
    :cond_3
    move v3, v7

    .line 185
    goto :goto_2

    .restart local v3       #isFirstBoot:Z
    :cond_4
    move v2, v7

    .line 188
    goto :goto_3

    .line 194
    .restart local v2       #isEmulator:Z
    :cond_5
    const-string v8, "vold.decrypt"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, decryptState:Ljava/lang/String;
    const-string v8, "NetworkTimeUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decryptState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "trigger_restart_framework"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    :cond_6
    new-instance v6, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, today:Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 199
    const-string v8, "NetworkTimeUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "First boot:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with date:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v8, v6, Landroid/text/format/Time;->monthDay:I

    iget v9, v6, Landroid/text/format/Time;->month:I

    sget v10, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v6, v8, v9, v10}, Landroid/text/format/Time;->set(III)V

    .line 201
    const-string v8, "NetworkTimeUpdateService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set the year to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v8, "persist.sys.first_time_boot"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto/16 :goto_1
.end method
