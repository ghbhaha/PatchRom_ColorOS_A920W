.class public Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.super Ljava/lang/Object;
.source "OppoKeyguardViewMediator.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "zhangkai@Plf.DesktopApp.Keyguard add for apklock"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$9;,
        Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$ViewMediatorCallback;
    }
.end annotation


# static fields
.field private static final ALARM_BOOT:I = 0x73

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_MESSAGE:Z = true

.field private static final DBG_WAKE:Z = false

.field static final DEBUG:Z = false

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final GLASS_UNLOCK_PROCESS:Ljava/lang/String; = "com.oppo.LockScreenGlassBoard"

.field private static final GLASS_UNLOCK_SERVICE:Ljava/lang/String; = "com.oppo.LockScreenGlassBoard.OppoLockScreenGlassBoard"

.field private static final HANDLE_SET_APK_SHOWING:I = 0x10

.field private static final HIDE:I = 0x3

.field private static final HIDE_APK_LOCKSCREEN:I = 0x11

.field public static final IPO_DISABLE:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field public static final IPO_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final KEYGUARD_APK_DONE:I = 0x14

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_RELAYOUT:I = 0x3e8

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final LAUNCH_PWROFF_ALARM:Ljava/lang/String; = "android.intent.action.LAUNCH_POWEROFF_ALARM"

.field private static final MSG_DM_KEYGUARD_UPDATE:I = 0x3e9

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_BOOT_DONE_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot.done"

.field private static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field public static final OMADM_LAWMO_LOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_LOCK"

.field public static final OMADM_LAWMO_UNLOCK:Ljava/lang/String; = "com.mediatek.dm.LAWMO_UNLOCK"

.field private static final OPPO_LOCKSCREEN_MGR_SERVICE_NAME:Ljava/lang/String; = "com.oppo.keyguard.LockScreenManagerService"

.field private static final PasswordUnlockProcess:Ljava/lang/String; = "com.oppo.OppoPasswordUnlock"

.field private static final PasswordUnlockService:Ljava/lang/String; = "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

.field private static final PatternUnlockProcess:Ljava/lang/String; = "com.oppo.OppoPatternUnlock"

.field private static final PatternUnlockService:Ljava/lang/String; = "com.oppo.OppoPatternUnlock.OppoPatternUnlockService"

.field static final REMOVE_IPOWIN:Ljava/lang/String; = "alarm.boot.remove.ipowin"

.field private static final RESET:I = 0x4

.field public static final RESET_FOR_DM_LOCK:Ljava/lang/String; = "dmlock_reset"

.field private static final RESHOW_ANYWHERE:I = 0x74

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_APK_LOCKSCREEN:I = 0xf

.field private static final SHOW_ASSISTANT:I = 0xe

.field private static final SHOW_SECURE_LOCKSCREEN:I = 0x13

.field private static final SHOW_SIM_LOCKSCREEN:I = 0x12

.field private static final SimUnlockService:Ljava/lang/String; = "com.oppo.OppoSimUnlockScreen.SimUnlockScreenService"

.field private static final TAG:Ljava/lang/String; = "OppoKeyguardViewMediator"

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static volatile mApkLockScreenShowing:Z

.field private static mExternallyEnabled:Z

.field private static mHidden:Z

.field private static mShowing:Z

.field private static sWakeMSGId:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mHandler:Landroid/os/Handler;

.field private mIsIPOBoot:Z

.field private mIsShutdown:Z

.field private mKeyguardDonePending:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowingLockIcon:Z

.field private mSimApkShowSecureApk:Z

.field private mSimUnlocked:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentIntent:Landroid/content/Intent;

.field mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field numkeyguardShowSecureApkLock:Z

.field private oneOrTwoSimUnlocked:Z

.field private oneSimUnlocked:Z

.field private screenOffTime:J

.field private twoSimUnlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    sput v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sWakeMSGId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 11
    .parameter "context"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsIPOBoot:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    iput-object v10, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mConnection:Landroid/content/ServiceConnection;

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->screenOffTime:J

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$5;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, p0, v8, v10, v6}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "show keyguard"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v8, "keyguardWakeAndHandOff"

    invoke-virtual {v5, v6, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.normal.shutdown"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.LAUNCH_POWEROFF_ALARM"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.android.policy.keyguard_changed"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.normal.boot"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz p2, :cond_6

    .end local p2
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .local v4, wm:Landroid/view/WindowManager;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1, v4, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v8, 0x2800

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "show_status_bar_lock"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowLockIcon:Z

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    new-instance v5, Landroid/media/SoundPool;

    invoke-direct {v5, v6, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v5, "lock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, soundPath:Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundId:I

    :cond_0
    if-eqz v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundId:I

    if-nez v5, :cond_2

    :cond_1
    const-string v5, "OppoKeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to load lock sound from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v5, "unlock_sound"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v5, v3, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUnlockSoundId:I

    :cond_3
    if-eqz v3, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUnlockSoundId:I

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "OppoKeyguardViewMediator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to load unlock sound from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .local v2, lockSoundDefaultAttenuation:I
    const-wide/high16 v5, 0x4024

    int-to-float v7, v2

    const/high16 v8, 0x41a0

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundVolume:F

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$3;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mConnection:Landroid/content/ServiceConnection;

    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #lockSoundDefaultAttenuation:I
    .end local v3           #soundPath:Ljava/lang/String;
    .end local v4           #wm:Landroid/view/WindowManager;
    .restart local p2
    :cond_6
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    .end local p2
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v4       #wm:Landroid/view/WindowManager;
    :cond_7
    move v5, v7

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;)Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->bindToLockscreenManager(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsIPOBoot:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleWakeWhenReady(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardReLayout(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleAlarmBoot()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleDMKeyguardUpdate(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowApkLockscreen()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleSetApkShowing()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleKeyguardApkDone(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowSimLockscreen(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShowSecureLockScreen()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendRemoveIPOWinBroadcast()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->startAlarm()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v4, :cond_2

    const-string v4, "OppoKeyguardViewMediator"

    const-string v5, "Could not get status bar manager"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v3

    .local v3, isSecure:Z
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const v5, 0x1040508

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, contentDescription:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "secure"

    const v6, 0x1080554

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowingLockIcon:Z

    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .local v2, flags:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oppo_status_bar_enable_when_lock"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, enableStatusBar:I
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v4, :cond_7

    :cond_4
    const/high16 v4, 0x100

    or-int/2addr v2, v4

    if-nez v3, :cond_5

    if-nez v1, :cond_6

    :cond_5
    const/high16 v4, 0x1

    or-int/2addr v2, v4

    :cond_6
    if-eqz v3, :cond_7

    const/high16 v4, 0x8

    or-int/2addr v2, v4

    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v2}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .end local v1           #enableStatusBar:I
    .end local v2           #flags:I
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "secure"

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1
.end method

.method private bindToLockscreenManager(Z)Z
    .locals 6
    .parameter "showLockscreen"

    .prologue
    const/4 v2, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oppo.keyguard.LockScreenManagerService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, service:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const/16 v3, 0x1111

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v0

    .local v0, bindSuccessful:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    if-eqz v3, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I

    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$8;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    return-object v0
.end method

.method private doKeyguardLaterLocked()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    const-string v14, "screen_off_timeout"

    const/16 v15, 0x7530

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v2, v14

    .local v2, displayTimeout:J
    const-string v14, "lock_screen_lock_after_timeout"

    const/16 v15, 0x1388

    invoke-static {v1, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    int-to-long v5, v14

    .local v5, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v7

    .local v7, policyTimeout:J
    const-wide/16 v14, 0x0

    cmp-long v14, v7, v14

    if-lez v14, :cond_0

    const-wide/16 v14, 0x0

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long v14, v7, v2

    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .local v10, timeout:J
    :goto_0
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    :goto_1
    return-void

    .end local v10           #timeout:J
    :cond_0
    move-wide v10, v5

    .restart local v10       #timeout:J
    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    add-long v12, v14, v10

    .local v12, when:J
    new-instance v4, Landroid/content/Intent;

    const-string v14, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v14, "seq"

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x1000

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .local v9, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private doKeyguardLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 17
    .parameter "options"

    .prologue
    sget-boolean v14, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->setKeyguardEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkShow()Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "keyguard.no_require_sim"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_b

    const/4 v8, 0x1

    .local v8, requireSim:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v7

    .local v7, provisioned:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v11

    .local v11, state:Lcom/android/internal/telephony/IccCardConstants$State;
    const/4 v5, 0x0

    .local v5, lockedOrMissing:Z
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v12

    .local v12, stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_3
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_c

    if-eqz v8, :cond_c

    :cond_5
    const/4 v10, 0x1

    .local v10, simLockedOrMissing:Z
    :goto_2
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_6
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v12, v14, :cond_d

    if-eqz v8, :cond_d

    :cond_8
    const/4 v9, 0x1

    .local v9, simGeminilockedOrMissing:Z
    :goto_3
    if-nez v10, :cond_9

    if-eqz v9, :cond_e

    :cond_9
    const/4 v5, 0x1

    .end local v9           #simGeminilockedOrMissing:Z
    .end local v10           #simLockedOrMissing:Z
    .end local v12           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_4
    const/4 v4, 0x0

    .local v4, keyguardDisable:Z
    const/4 v6, 0x1

    .local v6, motaUpdateFirst:Z
    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v3

    .local v3, dmLocked:Z
    const-string v14, "OppoKeyguardViewMediator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "lockedOrMissing is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", requireSim="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", provisioned="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", keyguardisable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", dmLocked="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_a

    if-nez v7, :cond_a

    if-eqz v3, :cond_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_18

    if-eqz v4, :cond_18

    if-nez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v14

    if-nez v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v3           #dmLocked:Z
    .end local v4           #keyguardDisable:Z
    .end local v5           #lockedOrMissing:Z
    .end local v6           #motaUpdateFirst:Z
    .end local v7           #provisioned:Z
    .end local v8           #requireSim:Z
    .end local v11           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .restart local v5       #lockedOrMissing:Z
    .restart local v7       #provisioned:Z
    .restart local v8       #requireSim:Z
    .restart local v11       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v12       #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_2

    .restart local v10       #simLockedOrMissing:Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_3

    .restart local v9       #simGeminilockedOrMissing:Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_4

    .end local v9           #simGeminilockedOrMissing:Z
    .end local v10           #simLockedOrMissing:Z
    .end local v12           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_f
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_10
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_11
    sget-object v14, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v11, v14, :cond_13

    if-eqz v8, :cond_13

    :cond_12
    const/4 v5, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_13
    const/4 v5, 0x0

    goto :goto_6

    .restart local v4       #keyguardDisable:Z
    .restart local v6       #motaUpdateFirst:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .local v2, cr:Landroid/content/ContentResolver;
    const-string v14, "lockscreen.disabled"

    invoke-static {v2, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, value:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, booleanValue:Z
    if-eqz v13, :cond_15

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v1, 0x1

    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v14

    if-nez v14, :cond_17

    if-eqz v1, :cond_17

    const/4 v4, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_16
    const/4 v1, 0x0

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    goto :goto_8

    .end local v1           #booleanValue:Z
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v13           #value:Ljava/lang/String;
    .restart local v3       #dmLocked:Z
    :cond_18
    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    if-eqz v14, :cond_1a

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showLostSimLockScreen()V

    goto/16 :goto_0

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V

    goto/16 :goto_0
.end method

.method private getApkUnlockWindow()Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, binder:Landroid/os/IBinder;
    :try_start_0
    new-instance v2, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v2}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    invoke-virtual {v2}, Landroid/view/IOppoWindowManagerImpl;->getApkUnlockWindow()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v2, "OppoKeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApkUnlockWindow()... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAlarmBoot()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsIPOBoot:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsIPOBoot:Z

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->startAlarm()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method private handleDMKeyguardUpdate(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    const-string v1, "OppoKeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDMKeyguardUpdate lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleDisableSystemUIForDM(Z)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, option:Landroid/os/Bundle;
    const-string v1, "dmlock_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleDisableSystemUIForDM(Z)V
    .locals 3
    .parameter "lock"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OppoKeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->playSounds(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->hide()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardApkDone(Z)V
    .locals 1
    .parameter "wakeup"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeUp()V

    :cond_1
    return-void
.end method

.method private handleKeyguardDone(Z)V
    .locals 3
    .parameter "wakeup"

    .prologue
    const-string v0, "OppoKeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardDone, wakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isUseApkLock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeUp()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleHide()V

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardReLayout(Z)V
    .locals 1
    .parameter "dmLock"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reLayoutScreen(Z)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOff()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->getApkUnlockWindow()Landroid/os/IBinder;

    move-result-object v0

    .local v0, binder:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkShow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    goto :goto_0

    .end local v0           #binder:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleReset(Landroid/os/Bundle;)V
    .locals 1
    .parameter "options"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->reset(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetApkShowing()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendUserPresentBroadcast()V

    :cond_1
    return-void
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 4
    .parameter "options"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->adjustStatusBarLocked()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->playSounds(Z)V

    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleShowApkLockscreen()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isUseApkLock()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_pkg"

    const-string v3, "com.oppo.OppoPatternUnlock.OppoPatternUnlockService"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_process"

    const-string v3, "com.oppo.OppoPatternUnlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->bindToLockscreenManager(Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_pkg"

    const-string v3, "com.oppo.OppoPatternUnlock.OppoPatternUnlockService"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_process"

    const-string v3, "com.oppo.OppoPatternUnlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_pkg"

    const-string v3, "com.oppo.OppoPasswordUnlock.OppoPasswordUnlockService"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_process"

    const-string v3, "com.oppo.OppoPasswordUnlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_pkg"

    const-string v3, "com.oppo.LockScreenGlassBoard.OppoLockScreenGlassBoard"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_unlock_change_process"

    const-string v3, "com.oppo.LockScreenGlassBoard"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    invoke-interface {v1}, Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;->showApkLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "showApkLockscreen() failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleShowSecureLockScreen()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x64

    const/16 v2, 0x13

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkOnScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkOnScreen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLocked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private handleShowSimLockscreen(I)V
    .locals 8
    .parameter "simId"

    .prologue
    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z

    move-result v2

    .local v2, isSimLockScreenRunning:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .local v3, mResolver:Landroid/content/ContentResolver;
    const-string v5, "oppo_unlock_change_pkg"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, currentUnlockService:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "ACTION_UNBIND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, sintent:Landroid/content/Intent;
    const-string v5, "SERVICE_NAME"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.oppo.OppoSimUnlockScreen.SimUnlockScreenService"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/16 v5, 0x1111

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "SIMID"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_1

    const-string v5, "PINORPUK"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string v5, "PINORPUK"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardApkDone(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->updateActivityLockScreenState()V

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(II)V
    .locals 2
    .parameter "keyCode"
    .parameter "wakeMSGId"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OppoKeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideApkLockscreen()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->bindToLockscreenManager(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "bindToLockscreenManager() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    invoke-interface {v1}, Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;->hideApkLockscreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "hideApkLockscreen() failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "mLockScreenManager == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isKeyguardEnabled()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method public static isKeyguardNotShowing()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardShowingAndNotHidden()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimLockScreenRunning()Z
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .local v3, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v1, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "com.oppo.OppoSimUnlockScreen"

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v1           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimLocked()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "keyguard.no_require_sim"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .local v2, requireSim:Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    .local v3, state:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .local v4, stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v3, v7, :cond_4

    if-eqz v2, :cond_4

    :cond_0
    move v0, v5

    .local v0, lockedOrMissing:Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v7, :cond_5

    if-eqz v2, :cond_5

    :cond_1
    move v1, v5

    .local v1, lockedOrMissingGemini:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    move v0, v5

    :goto_3
    return v0

    .end local v0           #lockedOrMissing:Z
    .end local v1           #lockedOrMissingGemini:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v4           #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    move v2, v6

    goto :goto_0

    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v4       #stateGemini:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    move v0, v6

    goto :goto_1

    .restart local v0       #lockedOrMissing:Z
    :cond_5
    move v1, v6

    goto :goto_2

    .restart local v1       #lockedOrMissingGemini:Z
    :cond_6
    move v0, v6

    goto :goto_3
.end method

.method private isSimPinSecure()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .local v0, sim2State:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v4, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v4, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private killCurrentApkLockScreen()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_unlock_change_process"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, currentUnlockProcess:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendUserPresentBroadcast()V

    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundId:I

    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mMasterStreamType:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendRemoveIPOWinBroadcast()V
    .locals 3

    .prologue
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "sendRemoveIPOWinBroadcast ... "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "alarm.boot.remove.ipowin"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, in:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .local v0, currentUser:Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .end local v0           #currentUser:Landroid/os/UserHandle;
    :cond_0
    return-void
.end method

.method private showApkLockscreen()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showLostSimLockScreen()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "com.oppo.OppoSimUnlockScreen.SimUnlockScreenService"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSimLockScreenRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.OppoSimUnlockScreen.SimUnlockScreenService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startAlarm()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, in:Landroid/content/Intent;
    const-string v1, "isAlarmBoot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private wakeWhenReady(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sWakeMSGId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sWakeMSGId:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    sget v3, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sWakeMSGId:I

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public checkApkKeyguardStatus(Z)V
    .locals 1
    .parameter "isRemovingSimWindow"

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    :cond_1
    return-void
.end method

.method public dmCheckLocked()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v0

    return v0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .parameter "options"

    .prologue
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleShowAssistant()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->showAssistant()V

    return-void
.end method

.method public isAddApkLockWindow(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    const-string v1, "oppo lockscreen hostview"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    if-nez v1, :cond_0

    const-string v0, "OppoKeyguardViewMediator"

    const-string v1, "Trying to add a normal apk lockscreen window while mSimUnlocked==false, not allowed!! kill it now and return false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->killCurrentApkLockScreen()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "Preparing to add a sim unlock window while normal apk lock window is not removed, kill the normal apk lock process and return true."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->killCurrentApkLockScreen()V

    goto :goto_0
.end method

.method public isAlarmUnlockScreen()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isAlarmUnlockScreen()Z

    move-result v0

    return v0
.end method

.method public isApkOnScreen()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, isShowLock:Z
    :try_start_0
    new-instance v2, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v2}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    invoke-virtual {v2}, Landroid/view/IOppoWindowManagerImpl;->isLockOnShow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OppoKeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApkOnScreen()... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isApkShow()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, isShowLock:Z
    :try_start_0
    new-instance v2, Landroid/view/IOppoWindowManagerImpl;

    invoke-direct {v2}, Landroid/view/IOppoWindowManagerImpl;-><init>()V

    invoke-virtual {v2}, Landroid/view/IOppoWindowManagerImpl;->isLockWndShow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    :goto_1
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OppoKeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApkShow()... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, activityManager:Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .local v2, serviceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .local v4, serviceName:Landroid/content/ComponentName;
    const-string v6, "OppoKeyguardViewMediator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serviceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseApkLock()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, isUseApkLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_unlock_change_pkg"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, witch_pkg:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keyguardApkDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardApkDone(ZZ)V

    return-void
.end method

.method public keyguardApkDone(ZZ)V
    .locals 6
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string v3, "OppoKeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardApkDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyguardDone(ZZ)V
    .locals 2
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    monitor-enter p0

    const v0, 0x11170

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardApkDone(ZZ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keyguardSetApkLockScreenShowing(Z)V
    .locals 2
    .parameter "showing"

    .prologue
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mIsShutdown:Z

    if-eqz v0, :cond_0

    const-string v0, "OppoKeyguardViewMediator"

    const-string v1, "Shutdown already, don\'t play sound effect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->playSounds(Z)V

    goto :goto_0
.end method

.method public keyguardShowSecureApkLock(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v1, 0x1

    const-wide/16 v4, 0x32

    const/16 v3, 0x13

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->userActivity()V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimUnlocked:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSimApkShowSecureApk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneOrTwoSimUnlocked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->numkeyguardShowSecureApkLock:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->oneSimUnlocked:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->twoSimUnlocked:Z

    goto :goto_1
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLaterLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 5
    .parameter "why"

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->screenOffTime:J

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .local v0, lockImmediately:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideLocked()V

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->notifyScreenOffLocked()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #lockImmediately:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #lockImmediately:Z
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkShow()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    if-nez v0, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .locals 6
    .parameter "showListener"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSystemReady:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->screenOffTime:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_lock_after_timeout"

    const/16 v5, 0x1388

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHidden:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isApkShow()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSuppressNextLockSound:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockScreenManager:Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;

    invoke-interface {v1}, Lcom/oppo/individuationsettings/unlocker/ILockScreenManager;->notifyScreenTurnedOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mScreenOn:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "notifyScreenTurnedOn() failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :try_start_4
    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "mLockScreenManager == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->doKeyguardLocked()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(I)V
    .locals 0
    .parameter "keyCode"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeWhenReady(I)V

    return-void
.end method

.method public onWakeMotionWhenKeyguardShowingTq()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeWhenReady(I)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugflag"

    .prologue
    return-void
.end method

.method public setHidden(Z)V
    .locals 6
    .parameter "isHidden"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "OppoKeyguardViewMediator"

    const-string v2, "isSecure() == true, cannot disable keyguard!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-nez p1, :cond_4

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mShowing:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mApkLockScreenShowing:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideApkLockscreen()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->hideLocked()V

    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->showApkLockscreen()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public showAssistant()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->userActivity(J)V

    return-void
.end method

.method public userActivity(J)V
    .locals 4
    .parameter "holdMs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "OppoKeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    return-void
.end method
