.class Lcom/android/server/DualBatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "DualBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DualBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/DualBatteryService;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v0, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    .line 131
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v1, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    #calls: Lcom/android/server/DualBatteryService;->getNewTimerTask()Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/android/server/DualBatteryService;->access$000(Lcom/android/server/DualBatteryService;)Ljava/util/TimerTask;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimerTask:Ljava/util/TimerTask;

    .line 132
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v0, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v1, v1, Lcom/android/server/DualBatteryService;->mDualBatteryTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v0, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    iget-object v0, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 137
    iget-object v0, p0, Lcom/android/server/DualBatteryService$1;->this$0:Lcom/android/server/DualBatteryService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/DualBatteryService;->mDualBatteryTimer:Ljava/util/Timer;

    goto :goto_0
.end method
