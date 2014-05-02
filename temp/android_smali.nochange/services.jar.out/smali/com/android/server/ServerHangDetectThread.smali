.class Lcom/android/server/ServerHangDetectThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerHangDetectThread$HangDetectHandler;
    }
.end annotation


# static fields
.field static final DETECT_HANG:I = 0x4d2

.field static final SIGNAL_STKFLT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static sServerHangDetectThread:Lcom/android/server/ServerHangDetectThread;


# instance fields
.field final mHandler:Landroid/os/Handler;

.field mHangDetectCompleted:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1346
    const-string v0, "ServerHangDetectThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Lcom/android/server/ServerHangDetectThread$HangDetectHandler;

    invoke-direct {v0, p0}, Lcom/android/server/ServerHangDetectThread$HangDetectHandler;-><init>(Lcom/android/server/ServerHangDetectThread;)V

    iput-object v0, p0, Lcom/android/server/ServerHangDetectThread;->mHandler:Landroid/os/Handler;

    .line 1348
    return-void
.end method

.method public static getInstance()Lcom/android/server/ServerHangDetectThread;
    .locals 1

    .prologue
    .line 1351
    sget-object v0, Lcom/android/server/ServerHangDetectThread;->sServerHangDetectThread:Lcom/android/server/ServerHangDetectThread;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Lcom/android/server/ServerHangDetectThread;

    invoke-direct {v0}, Lcom/android/server/ServerHangDetectThread;-><init>()V

    sput-object v0, Lcom/android/server/ServerHangDetectThread;->sServerHangDetectThread:Lcom/android/server/ServerHangDetectThread;

    .line 1355
    :cond_0
    sget-object v0, Lcom/android/server/ServerHangDetectThread;->sServerHangDetectThread:Lcom/android/server/ServerHangDetectThread;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1360
    const-string v1, "SystemServer"

    const-string v2, "ServerThread Hang Detection is started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ServerHangDetectThread;->mHangDetectCompleted:Z

    .line 1365
    iget-object v1, p0, Lcom/android/server/ServerHangDetectThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1368
    const-wide/16 v1, 0x3a98

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/ServerHangDetectThread;->mHangDetectCompleted:Z

    if-nez v1, :cond_0

    .line 1377
    const-string v1, "SystemServer"

    const-string v2, "ServerThread has no response for 15 sec. Dump stack trace..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_0

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SystemServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
