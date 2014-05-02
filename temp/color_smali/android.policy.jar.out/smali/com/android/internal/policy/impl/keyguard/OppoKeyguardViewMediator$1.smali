.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "OppoKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 2
    .parameter "phoneState"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7
    .parameter "simState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .local v1, lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v4, :cond_1

    :cond_0
    move v2, v3

    .local v2, lastWasLocked:Z
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$9;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z
    invoke-static {v4, v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1100(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const-string v3, "OppoKeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSimStateChanged isAirplaneModeOn() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1100(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isUseApkLock()Z

    move-result v0

    .local v0, isUseApkLock:Z
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1300()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x88b8

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v4, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .end local v0           #isUseApkLock:Z
    :pswitch_3
    monitor-enter p0

    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3

    :cond_a
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 6
    .parameter "simState"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$9;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .local v0, lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v2

    .local v1, lastWasLocked:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto :goto_0

    .end local v0           #lastSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v1           #lastWasLocked:Z
    :pswitch_2
    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1702(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    :cond_4
    if-ne v2, p2, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1802(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getRetryPukCount(I)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_8

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, p1, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const-string v3, "OppoKeyguardViewMediator"

    const-string v4, "We have dismissed PIN, so, we should reset the PIN flag"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3, p2, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAirplaneModeOn(Landroid/content/Context;)Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1100(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const-string v2, "OppoKeyguardViewMediator"

    const-string v3, "onSimStateChangedGemini isAirplaneModeOn || isSimLockScreenRunning."

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1402(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onUserRemoved(I)V
    .locals 1
    .parameter "userId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 4
    .parameter "userId"

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, options:Landroid/os/Bundle;
    const-string v1, "showuserswitcher"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showsecuritychallenge"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    monitor-exit v2

    return-void

    .end local v0           #options:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
