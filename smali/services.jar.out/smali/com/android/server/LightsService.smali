.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_COUNT:I = 0x8

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_WIFI:I = 0x7

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private mTurnOffByUser:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [Lcom/android/server/LightsService$Light;

    iput-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/LightsService;->mTurnOffByUser:Z

    new-instance v1, Lcom/android/server/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    new-instance v1, Lcom/android/server/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v1

    iput v1, p0, Lcom/android/server/LightsService;->mNativePointer:I

    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v1, "hardware"

    iget-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$Light;

    invoke-direct {v2, p0, v0}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    aput-object v2, v1, v0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LightsService;->registerReceiver()V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/LightsService;->getDefaultNotificationColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/LightsService;->getDefaultBatteryColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/LightsService;->getDefaultLedOff()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mTurnOffByUser:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mTurnOffByUser:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$700(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 37
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method private static native finalize_native(I)V
.end method

.method private getDefaultBatteryColor()I
    .locals 5

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, color:I
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_battery_color"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 370
    .local v1, colorIndex:I
    if-nez v1, :cond_0

    .line 371
    const/high16 v0, -0x1

    .line 376
    :goto_0
    return v0

    .line 372
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 373
    const v0, -0xff0100

    goto :goto_0

    .line 375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultLedOff()I
    .locals 5

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, ledoff:I
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_flash_frequency"

    const/16 v4, 0x1388

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 382
    .local v1, value:I
    const/16 v2, 0xbb8

    if-ne v1, v2, :cond_0

    .line 383
    const/16 v0, 0x7d0

    .line 387
    :goto_0
    return v0

    .line 385
    :cond_0
    add-int/lit16 v0, v1, -0x3e8

    goto :goto_0
.end method

.method private getDefaultNotificationColor()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, color:I
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_notification_color"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 357
    .local v1, colorIndex:I
    if-nez v1, :cond_0

    .line 358
    const/high16 v0, -0x1

    .line 363
    :goto_0
    return v0

    .line 359
    :cond_0
    if-ne v1, v4, :cond_1

    .line 360
    const v0, -0xff0100

    goto :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native init_native()I
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.settings.LED_ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "com.android.settings.LED_NOTIFICATION_COLOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "com.android.settings.LED_BATTERY_COLOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v1, "com.android.settings.LED_FLASH_FREQUENCY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    return-void
.end method

.method private static native setLight_native(IIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 246
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 247
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method
