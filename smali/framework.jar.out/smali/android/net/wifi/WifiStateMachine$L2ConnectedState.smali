.class Landroid/net/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 3653
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 3656
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3657
    const v0, 0xc365

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3658
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$14108(Landroid/net/wifi/WifiStateMachine;)I

    .line 3659
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20053

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3662
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 3838
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    .line 3841
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const v11, 0x30003

    const v10, 0x20053

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3666
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3667
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3830
    :cond_0
    :goto_0
    return v6

    .line 3670
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mPreDhcpSetupDone:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3671
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 3673
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_3

    .line 3674
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v6, 0x30007

    invoke-virtual {v4, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_2
    :goto_1
    move v6, v5

    .line 3830
    goto :goto_0

    .line 3676
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v6, 0x30007

    invoke-virtual {v4, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 3685
    :sswitch_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_6

    .line 3686
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14302(Landroid/net/wifi/WifiStateMachine;I)I

    .line 3690
    :cond_4
    :goto_2
    const-string v4, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMD_POST_DHCP_ACTION for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDhcpV4Status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$14300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDhcpV6Status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$14400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 3692
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 3694
    :cond_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_9

    .line 3695
    const-string v6, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DHCP succeed for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_7

    const-string v4, "V4"

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_8

    .line 3697
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$14500(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    .line 3701
    :goto_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$14700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3687
    :cond_6
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v9, :cond_4

    .line 3688
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$14402(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_2

    .line 3695
    :cond_7
    const-string v4, "V6"

    goto :goto_3

    .line 3699
    :cond_8
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/DhcpInfoInternal;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpV6Configuration(Landroid/net/DhcpInfoInternal;)V
    invoke-static {v6, v4}, Landroid/net/wifi/WifiStateMachine;->access$14600(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V

    goto :goto_4

    .line 3702
    :cond_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v9, :cond_2

    .line 3703
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV4Status:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v4, v9, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6Status:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14400(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 3705
    const-string v4, "WifiStateMachine"

    const-string v6, "DHCP failed!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14900(Landroid/net/wifi/WifiStateMachine;)V

    .line 3707
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$15000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3724
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3725
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3728
    :sswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_2

    .line 3729
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 3730
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3731
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$13300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 3735
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v9, :cond_2

    .line 3736
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2004a

    invoke-virtual {v4, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3737
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3746
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiNative;->setScanResultHandling(I)Z

    goto/16 :goto_0

    .line 3751
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3752
    .local v2, netId:I
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    if-ne v4, v2, :cond_0

    goto/16 :goto_1

    .line 3757
    .end local v2           #netId:I
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3758
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 3759
    .local v3, result:Landroid/net/wifi/NetworkUpdateResult;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v7

    if-ne v4, v7, :cond_b

    .line 3760
    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3761
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Reconfiguring IP on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3762
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$13800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3764
    :cond_a
    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3765
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Reconfiguring proxy on connection"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3766
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;)V

    .line 3767
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;)V

    .line 3771
    :cond_b
    invoke-virtual {v3}, Landroid/net/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_c

    .line 3772
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25009

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, p1, v6}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 3774
    :cond_c
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "Failed to save network"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v7}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3775
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x25008

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v7, v6}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 3781
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #result:Landroid/net/wifi/NetworkUpdateResult;
    :sswitch_8
    const-string v6, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLastBssid:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", newBssid:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3783
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3784
    const-string v4, "WifiStateMachine"

    const-string v6, "Renew IP address for connection event!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3790
    :goto_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3791
    const-string v4, "WifiStateMachine"

    const-string v6, "Renew IPV6 address for connection event!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3792
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 3787
    :cond_d
    const-string v4, "WifiStateMachine"

    const-string/jumbo v6, "mDhcpStateMachine is null!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3794
    :cond_e
    const-string v4, "WifiStateMachine"

    const-string/jumbo v6, "mDhcpV6StateMachine is null!"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3800
    :sswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v7

    if-ne v4, v7, :cond_2

    .line 3802
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3803
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v10, v8, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 3810
    :sswitch_a
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_f

    move v4, v5

    :goto_6
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v7, v4}, Landroid/net/wifi/WifiStateMachine;->access$1102(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 3811
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$14108(Landroid/net/wifi/WifiStateMachine;)I

    .line 3812
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3814
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3815
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)I

    move-result v8

    invoke-virtual {v7, v10, v8, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    :cond_f
    move v4, v6

    .line 3810
    goto :goto_6

    .line 3820
    :sswitch_b
    new-instance v1, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v1}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 3821
    .local v1, info:Landroid/net/wifi/RssiPacketCountInfo;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;)V

    .line 3822
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 3823
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v4, v1}, Landroid/net/wifi/WifiStateMachine;->access$15800(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 3824
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x25015

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v6, v1}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3667
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_4
        0x2004a -> :sswitch_2
        0x20052 -> :sswitch_a
        0x20053 -> :sswitch_9
        0x2300c -> :sswitch_3
        0x24003 -> :sswitch_8
        0x25001 -> :sswitch_6
        0x25007 -> :sswitch_7
        0x25014 -> :sswitch_b
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_1
    .end sparse-switch
.end method
