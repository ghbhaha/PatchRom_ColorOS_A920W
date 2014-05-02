.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 4064
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    .line 4067
    if-ne p1, v0, :cond_1

    .line 4068
    const-string v0, "AudioService"

    const-string v1, " CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "PhoneMode=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4071
    invoke-static {}, Landroid/media/AudioService;->access$8800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4072
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;Z)Z

    .line 4073
    monitor-exit v1

    .line 4089
    :cond_0
    :goto_0
    return-void

    .line 4073
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4074
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 4075
    const-string v0, "AudioService"

    const-string v1, " CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "PhoneMode=2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4078
    invoke-static {}, Landroid/media/AudioService;->access$8800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4079
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;Z)Z

    .line 4080
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 4081
    :cond_2
    if-nez p1, :cond_0

    .line 4082
    const-string v0, "AudioService"

    const-string v1, " CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "PhoneMode=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4085
    invoke-static {}, Landroid/media/AudioService;->access$8800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4086
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$8902(Landroid/media/AudioService;Z)Z

    .line 4087
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method
