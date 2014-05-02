.class Lcom/android/server/DualBatteryService$2;
.super Ljava/util/TimerTask;
.source "DualBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DualBatteryService;->getNewTimerTask()Ljava/util/TimerTask;
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
    .line 421
    iput-object p1, p0, Lcom/android/server/DualBatteryService$2;->this$0:Lcom/android/server/DualBatteryService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/server/DualBatteryService$2;->this$0:Lcom/android/server/DualBatteryService;

    invoke-virtual {v0}, Lcom/android/server/DualBatteryService;->readDualBatteryStatus()V

    .line 425
    iget-object v0, p0, Lcom/android/server/DualBatteryService$2;->this$0:Lcom/android/server/DualBatteryService;

    #calls: Lcom/android/server/DualBatteryService;->sendIntentDualBatteryStatus()V
    invoke-static {v0}, Lcom/android/server/DualBatteryService;->access$100(Lcom/android/server/DualBatteryService;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/DualBatteryService$2;->this$0:Lcom/android/server/DualBatteryService;

    #calls: Lcom/android/server/DualBatteryService;->sendIntentBatteryLow()V
    invoke-static {v0}, Lcom/android/server/DualBatteryService;->access$200(Lcom/android/server/DualBatteryService;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/DualBatteryService$2;->this$0:Lcom/android/server/DualBatteryService;

    #calls: Lcom/android/server/DualBatteryService;->sendIntentShutDown()V
    invoke-static {v0}, Lcom/android/server/DualBatteryService;->access$300(Lcom/android/server/DualBatteryService;)V

    .line 428
    return-void
.end method
