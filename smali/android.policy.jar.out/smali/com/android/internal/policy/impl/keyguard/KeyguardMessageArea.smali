.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.super Landroid/widget/TextView;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
    }
.end annotation


# static fields
.field static final BATTERY_LOW_ICON:I = 0x0

.field static final CHARGING_ICON:I = 0x0

.field private static DUAL_BATTERY_MODE:Z = false

.field protected static final FADE_DURATION:I = 0x2ee

.field static final SECURITY_MESSAGE_DURATION:I = 0x1388


# instance fields
.field protected mBatteryCharged:Z

.field private mBatteryDetialStatus:I

.field protected mBatteryIsLow:Z

.field mBatteryLevel:I

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

.field private mDualBatteryCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field mMessage:Ljava/lang/CharSequence;

.field mPluggedIn:Z

.field private mSeparator:Ljava/lang/CharSequence;

.field mShowingBatteryInfo:Z

.field mShowingBouncer:Z

.field mShowingMessage:Z

.field mTimeout:J

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->DUAL_BATTERY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPluggedIn:Z

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    .line 69
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mDualBatteryCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setSelected(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mDualBatteryCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerDualBatteryCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;)V

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040548

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    return-object p1
.end method

.method private varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, b:Ljava/lang/StringBuilder;
    aget-object v3, p1, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 230
    aget-object v2, p1, v1

    .line 231
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v2           #text:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v1, :cond_0

    .line 303
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mPluggedIn:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->isDeviceCharging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryCharged:Z

    if-eqz v1, :cond_1

    const v1, 0x10402f7

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    .line 316
    :cond_0
    :goto_1
    return-object v0

    .line 305
    :cond_1
    const v1, 0x10402f6

    goto :goto_0

    .line 309
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryIsLow:Z

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402f9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iput v5, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1
.end method

.method private hideMessage(IZ)V
    .locals 5
    .parameter "duration"
    .parameter "thenUpdate"

    .prologue
    const/4 v4, 0x0

    .line 320
    if-lez p1, :cond_2

    .line 321
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 322
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 323
    if-eqz p2, :cond_0

    .line 324
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 331
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 338
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 334
    if-eqz p2, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    goto :goto_0
.end method

.method private setTextMediatek(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, b:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x205009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method private showMessage(I)V
    .locals 5
    .parameter "duration"

    .prologue
    const/high16 v4, 0x3f80

    .line 341
    if-lez p1, :cond_0

    .line 342
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 343
    .local v0, anim:Landroid/animation/Animator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 344
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 348
    .end local v0           #anim:Landroid/animation/Animator;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x2

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 247
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    if-nez v2, :cond_1

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 247
    .end local v0           #ownerInfoEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .restart local v0       #ownerInfoEnabled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mBatteryDetialStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mDualBatteryCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeDualBatteryCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;)V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 381
    return-void
.end method

.method public securityMessageChanged()V
    .locals 4

    .prologue
    .line 193
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setAlpha(F)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingMessage:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method update()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    new-instance v1, Llibcore/util/MutableInt;

    invoke-direct {v1, v6}, Llibcore/util/MutableInt;-><init>(I)V

    .line 212
    .local v1, icon:Llibcore/util/MutableInt;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getChargeInfo(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getCurrentMessage()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 213
    .local v2, status:Ljava/lang/CharSequence;
    iget v3, v1, Llibcore/util/MutableInt;->value:I

    invoke-virtual {p0, v3, v6, v6, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    .line 216
    .local v0, dmLocked:Z
    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->setTextMediatek(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
