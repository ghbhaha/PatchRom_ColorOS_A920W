.class Lcom/android/server/BatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 215
    const-string v1, "com.android.settings.LED_BATTERY_COLOR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    const-string v1, "status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 217
    .local v0, status:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver onReceive status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    if-nez v0, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    const/high16 v2, -0x1

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$702(Lcom/android/server/BatteryService$Led;I)I

    .line 235
    .end local v0           #status:I
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v0       #status:I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    const v2, -0xff0100

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$702(Lcom/android/server/BatteryService$Led;I)I

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I
    invoke-static {v1, v4}, Lcom/android/server/BatteryService$Led;->access$702(Lcom/android/server/BatteryService$Led;I)I

    goto :goto_0

    .line 224
    .end local v0           #status:I
    :cond_3
    const-string v1, "com.android.settings.LED_FLASH_FREQUENCY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 226
    .restart local v0       #status:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver onReceive status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_4

    .line 228
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    const/16 v2, 0x1f4

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$802(Lcom/android/server/BatteryService$Led;I)I

    .line 229
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    const/16 v2, 0x7d0

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$902(Lcom/android/server/BatteryService$Led;I)I

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    const/16 v2, 0x3e8

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$802(Lcom/android/server/BatteryService$Led;I)I

    .line 232
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v1

    add-int/lit16 v2, v0, -0x3e8

    #setter for: Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService$Led;->access$902(Lcom/android/server/BatteryService$Led;I)I

    goto :goto_0
.end method
