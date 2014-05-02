.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private getMessageString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "SHOW"

    goto :goto_0

    :sswitch_1
    const-string v0, "HIDE"

    goto :goto_0

    :sswitch_2
    const-string v0, "RESET"

    goto :goto_0

    :sswitch_3
    const-string v0, "VERIFY_UNLOCK"

    goto :goto_0

    :sswitch_4
    const-string v0, "NOTIFY_SCREEN_OFF"

    goto :goto_0

    :sswitch_5
    const-string v0, "NOTIFY_SCREEN_ON"

    goto :goto_0

    :sswitch_6
    const-string v0, "WAKE_WHEN_READY"

    goto :goto_0

    :sswitch_7
    const-string v0, "KEYGUARD_DONE"

    goto :goto_0

    :sswitch_8
    const-string v0, "KEYGUARD_DONE_DRAWING"

    goto :goto_0

    :sswitch_9
    const-string v0, "KEYGUARD_DONE_AUTHENTICATING"

    goto :goto_0

    :sswitch_a
    const-string v0, "SET_HIDDEN"

    goto :goto_0

    :sswitch_b
    const-string v0, "KEYGUARD_TIMEOUT"

    goto :goto_0

    :sswitch_c
    const-string v0, "SHOW_ASSISTANT"

    goto :goto_0

    :sswitch_d
    const-string v0, "KEYGUARD_RELAYOUT"

    goto :goto_0

    :sswitch_e
    const-string v0, "ALARM_BOOT"

    goto :goto_0

    :sswitch_f
    const-string v0, "RESHOW_ANYWHERE"

    goto :goto_0

    :sswitch_10
    const-string v0, "MSG_DM_KEYGUARD_UPDATE"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x3e8 -> :sswitch_d
        0x3e9 -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "OppoKeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage enter msg name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const-string v0, "OppoKeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage exit msg name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleWakeWhenReady(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;II)V

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :sswitch_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    monitor-enter v1

    :try_start_0
    const-string v0, "OppoKeyguardViewMediator"

    const-string v2, "doKeyguardLocked, because:KEYGUARD_TIMEOUT"

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$3900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowAssistant()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2

    :goto_3
    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardReLayout(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :sswitch_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleAlarmBoot()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "sys.boot.reason"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6$1;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_3

    :goto_4
    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleDMKeyguardUpdate(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :sswitch_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowApkLockscreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleSetApkShowing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    :goto_5
    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardApkDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    :sswitch_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowSimLockscreen(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;I)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowSecureLockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_14
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_13
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x3e8 -> :sswitch_d
        0x3e9 -> :sswitch_10
    .end sparse-switch
.end method
