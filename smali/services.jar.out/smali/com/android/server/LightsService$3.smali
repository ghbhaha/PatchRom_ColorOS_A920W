.class Lcom/android/server/LightsService$3;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LightsService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, -0xff0100

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x4

    .line 281
    const-string v1, "com.android.settings.LED_ENABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    const-string v1, "status"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 283
    .local v0, status:I
    const-string v1, "LightsService"

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

    .line 284
    if-nez v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v6}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 286
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 287
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 288
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v7}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 349
    .end local v0           #status:I
    :cond_0
    :goto_0
    return-void

    .line 289
    .restart local v0       #status:I
    :cond_1
    if-ne v0, v6, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    goto :goto_0

    .line 295
    .end local v0           #status:I
    :cond_3
    const-string v1, "com.android.settings.LED_NOTIFICATION_COLOR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    const-string v1, "status"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 297
    .restart local v0       #status:I
    const-string v1, "LightsService"

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

    .line 298
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 299
    if-nez v0, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    const/high16 v2, -0x1

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    .line 305
    :goto_1
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    goto/16 :goto_0

    .line 301
    :cond_4
    if-ne v0, v6, :cond_5

    .line 302
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v8}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    goto :goto_1

    .line 304
    :cond_5
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v7}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    goto :goto_1

    .line 307
    .end local v0           #status:I
    :cond_6
    const-string v1, "com.android.settings.LED_BATTERY_COLOR"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 308
    const-string v1, "status"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 309
    .restart local v0       #status:I
    const-string v1, "LightsService"

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

    .line 310
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 311
    if-nez v0, :cond_7

    .line 312
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    const/high16 v2, -0x1

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    .line 318
    :goto_2
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    goto/16 :goto_0

    .line 313
    :cond_7
    if-ne v0, v6, :cond_8

    .line 314
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v8}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    goto :goto_2

    .line 316
    :cond_8
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #setter for: Lcom/android/server/LightsService$Light;->mColor:I
    invoke-static {v1, v7}, Lcom/android/server/LightsService$Light;->access$1302(Lcom/android/server/LightsService$Light;I)I

    goto :goto_2

    .line 320
    .end local v0           #status:I
    :cond_9
    const-string v1, "com.android.settings.LED_FLASH_FREQUENCY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "status"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 322
    .restart local v0       #status:I
    const-string v1, "LightsService"

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

    .line 323
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-ne v1, v6, :cond_b

    .line 324
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v6}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 325
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 326
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v7}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 327
    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_a

    .line 328
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    const/16 v2, 0x1f4

    #setter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1402(Lcom/android/server/LightsService$Light;I)I

    .line 329
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    const/16 v2, 0x7d0

    #setter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1502(Lcom/android/server/LightsService$Light;I)I

    .line 334
    :goto_3
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    goto/16 :goto_0

    .line 331
    :cond_a
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    const/16 v2, 0x3e8

    #setter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1402(Lcom/android/server/LightsService$Light;I)I

    .line 332
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v4

    add-int/lit16 v2, v0, -0x3e8

    #setter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1502(Lcom/android/server/LightsService$Light;I)I

    goto :goto_3

    .line 335
    :cond_b
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #getter for: Lcom/android/server/LightsService$Light;->mMode:I
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1100(Lcom/android/server/LightsService$Light;)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v6}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 337
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 338
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v1, v7}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;Z)Z

    .line 339
    const/16 v1, 0xbb8

    if-ne v0, v1, :cond_c

    .line 340
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    const/16 v2, 0x1f4

    #setter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1402(Lcom/android/server/LightsService$Light;I)I

    .line 341
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    const/16 v2, 0x7d0

    #setter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1502(Lcom/android/server/LightsService$Light;I)I

    .line 346
    :goto_4
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    #calls: Lcom/android/server/LightsService$Light;->reStartLight()V
    invoke-static {v1}, Lcom/android/server/LightsService$Light;->access$1200(Lcom/android/server/LightsService$Light;)V

    goto/16 :goto_0

    .line 343
    :cond_c
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    const/16 v2, 0x3e8

    #setter for: Lcom/android/server/LightsService$Light;->mOnMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1402(Lcom/android/server/LightsService$Light;I)I

    .line 344
    iget-object v1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v1

    aget-object v1, v1, v5

    add-int/lit16 v2, v0, -0x3e8

    #setter for: Lcom/android/server/LightsService$Light;->mOffMS:I
    invoke-static {v1, v2}, Lcom/android/server/LightsService$Light;->access$1502(Lcom/android/server/LightsService$Light;I)I

    goto :goto_4
.end method
