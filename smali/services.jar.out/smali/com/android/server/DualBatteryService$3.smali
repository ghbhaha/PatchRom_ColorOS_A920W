.class Lcom/android/server/DualBatteryService$3;
.super Landroid/os/UEventObserver;
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
    .line 432
    iput-object p1, p0, Lcom/android/server/DualBatteryService$3;->this$0:Lcom/android/server/DualBatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 435
    const-string v1, "leish:DualBatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>onUEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DualBatteryService$3;->this$0:Lcom/android/server/DualBatteryService;

    #getter for: Lcom/android/server/DualBatteryService;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/server/DualBatteryService;->access$400(Lcom/android/server/DualBatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v1, "1"

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 437
    .local v0, invalidCharger:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/DualBatteryService$3;->this$0:Lcom/android/server/DualBatteryService;

    #getter for: Lcom/android/server/DualBatteryService;->mInvalidCharger:I
    invoke-static {v1}, Lcom/android/server/DualBatteryService;->access$400(Lcom/android/server/DualBatteryService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/android/server/DualBatteryService$3;->this$0:Lcom/android/server/DualBatteryService;

    #setter for: Lcom/android/server/DualBatteryService;->mInvalidCharger:I
    invoke-static {v1, v0}, Lcom/android/server/DualBatteryService;->access$402(Lcom/android/server/DualBatteryService;I)I

    .line 440
    :cond_0
    const-string v1, "leish:DualBatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<onUEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DualBatteryService$3;->this$0:Lcom/android/server/DualBatteryService;

    #getter for: Lcom/android/server/DualBatteryService;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/server/DualBatteryService;->access$400(Lcom/android/server/DualBatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 436
    .end local v0           #invalidCharger:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
