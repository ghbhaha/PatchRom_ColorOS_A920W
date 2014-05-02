.class public Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jun.Zhang@Plf.Framework, [-final]:modify for oppo button light"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Light"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 0
    .parameter
    .parameter "id"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_ACCESS:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jun.Zhang@Plf.Framework, [-private]:modify for oppo button light"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService$Light;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->reStartLight()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/LightsService$Light;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/LightsService$Light;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/LightsService$Light;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method private reStartLight()V
    .locals 7

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    iget v2, p0, Lcom/android/server/LightsService$Light;->mColor:I

    iget v3, p0, Lcom/android/server/LightsService$Light;->mMode:I

    iget v4, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    iget v5, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    iget v6, p0, Lcom/android/server/LightsService$Light;->mBrightnessMode:I

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$700(IIIIIII)V

    .line 179
    return-void
.end method

.method private setLightLocked(IIIII)V
    .locals 9
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 140
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-eq p4, v0, :cond_4

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v2, :cond_5

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mTurnOffByUser:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$400(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 148
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 149
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 150
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 151
    iput p5, p0, Lcom/android/server/LightsService$Light;->mBrightnessMode:I

    .line 160
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v1, :cond_6

    :cond_3
    if-eqz p1, :cond_6

    .line 161
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 162
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string v0, "led_enable"

    const/4 v1, 0x1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, enable:I
    if-nez v7, :cond_6

    .line 175
    .end local v7           #enable:I
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :cond_4
    :goto_1
    return-void

    .line 154
    :cond_5
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 155
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 156
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 157
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    goto :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$700(IIIIIII)V

    goto :goto_1
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .prologue
    .line 114
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 115
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 121
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    :cond_0
    monitor-exit p0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 76
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    and-int/lit16 v1, p1, 0xff

    .line 81
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 82
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 95
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->getDefaultNotificationColor()I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)I

    move-result p1

    .line 99
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v2, :cond_2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->getDefaultLedOff()I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$200(Lcom/android/server/LightsService;)I

    move-result p4

    .line 101
    const/16 v0, 0x7d0

    if-ne p4, v0, :cond_4

    .line 102
    const/16 p3, 0x1f4

    .line 107
    :cond_2
    :goto_1
    monitor-enter p0

    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    return-void

    .line 97
    :cond_3
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #calls: Lcom/android/server/LightsService;->getDefaultBatteryColor()I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result p1

    goto :goto_0

    .line 104
    :cond_4
    const/16 p3, 0x3e8

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 6

    .prologue
    .line 127
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOff #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-enter p0

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method
