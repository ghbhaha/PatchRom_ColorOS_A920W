.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$NewSimDialogCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SequenceDialog;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    }
.end annotation


# static fields
.field private static final ACTION_WALLPAPER_SET:Ljava/lang/String; = "com.mediatek.lockscreen.action.WALLPAPER_SET"

.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static DEBUG:Z = false

.field private static DEBUG_SIM_STATES:Z = false

.field private static final EXTRA_COMPLETE:Ljava/lang/String; = "com.mediatek.lockscreen.extra.COMPLETE"

.field private static final FAILED_BIOMETRIC_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0x3

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final GMS_SETUP_COMPONENT:Ljava/lang/String; = "com.google.android.setupwizard.SetupWizardActivity"

.field private static final GMS_SETUP_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field static final LOW_BATTERY_THRESHOLD:I = 0x10

.field private static final MSG_BATTERY_UPDATE:I = 0x12e

.field private static final MSG_BOOTUP_MODE_PICK:I = 0x3f3

.field protected static final MSG_BOOT_COMPLETED:I = 0x139

.field private static final MSG_CARRIER_INFO_UPDATE:I = 0x12f

.field private static final MSG_CLOCK_VISIBILITY_CHANGED:I = 0x133

.field private static final MSG_CONFIGURATION_CHANGED:I = 0x3ed

.field private static final MSG_DEVICE_PROVISIONED:I = 0x134

.field private static final MSG_DOWNLOAD_CALIBRATION_DATA_UPDATE:I = 0x3f5

.field private static final MSG_DPM_STATE_CHANGED:I = 0x135

.field private static final MSG_DUAL_BATTERY_UPDATE:I = 0x146

.field private static final MSG_KEYGUARD_RESET_DISMISS:I = 0x3ef

.field private static final MSG_KEYGUARD_SIM_NAME_UPDATE:I = 0x3ee

.field private static final MSG_KEYGUARD_UPDATE_LAYOUT:I = 0x3f0

.field private static final MSG_KEYGUARD_VISIBILITY_CHANGED:I = 0x138

.field private static final MSG_LOCK_SCREEN_WALLPAPER_SET:I = 0x13a

.field private static final MSG_MODEM_RESET:I = 0x3f1

.field private static final MSG_PHONE_STATE_CHANGED:I = 0x132

.field private static final MSG_PRE_3G_SWITCH:I = 0x3f2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x131

.field private static final MSG_SIMINFO_CHANGED:I = 0x3ec

.field private static final MSG_SIM_DETECTED:I = 0x3ea

.field private static final MSG_SIM_STATE_CHANGE:I = 0x130

.field private static final MSG_SYSTEM_STATE:I = 0x3f4

.field private static final MSG_TIME_UPDATE:I = 0x12d

.field private static final MSG_USER_REMOVED:I = 0x137

.field private static final MSG_USER_SWITCHED:I = 0x136

.field private static final PIN_PUK_RESET:I = 0x0

.field private static final SIM_1_PIN_DISMISSED:I = 0x1

.field private static final SIM_1_PIN_PUK_MASK:I = 0x5

.field private static final SIM_1_PUK_DISMISSED:I = 0x4

.field private static final SIM_2_PIN_DISMISSED:I = 0x2

.field private static final SIM_2_PIN_PUK_MASK:I = 0xa

.field private static final SIM_2_PUK_DISMISSED:I = 0x8

.field private static SIM_DETECT_NEW:Ljava/lang/String; = null

.field private static SIM_DETECT_REMOVE:Ljava/lang/String; = null

.field private static SIM_DETECT_SWAP:Ljava/lang/String; = null

.field private static final SYSTEM_STATE_BOOTUP:I = 0x1

.field private static final SYSTEM_STATE_SHUTDOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUpdateMonitor"

.field public static sDualSimSetting:I

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAlternateUnlockEnabled:Z

.field private mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCalibrationData:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockVisible:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCtaDialog:Landroid/app/AlertDialog;

.field private mDeviceProvisioned:Z

.field private mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

.field private mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

.field private mDualBatteryCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedAttempts:I

.field private mFailedBiometricUnlockAttempts:I

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardDMLocked:Z

.field private mKeyguardIsVisible:Z

.field mNetSearching:Z

.field mNetSearchingGemini:Z

.field private mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field private mPinPukDismissFlag:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPromptView:Landroid/view/View;

.field private mQueryBaseTime:J

.field private mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

.field private mRingMode:I

.field private mSIMResetModem:Z

.field private mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimCardChangedDialog:Landroid/app/AlertDialog;

.field private mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

.field private mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

.field private mTelephonyPlmn:Ljava/lang/CharSequence;

.field private mTelephonyPlmnGemini:Ljava/lang/CharSequence;

.field private mTelephonySpn:Ljava/lang/CharSequence;

.field private mTelephonySpnGemini:Ljava/lang/CharSequence;

.field private mWallpaperSetComplete:Z

.field private mWallpaperUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 104
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    .line 1314
    const-string v0, "NEW"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    .line 1315
    const-string v0, "REMOVE"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    .line 1316
    const-string v0, "SWAP"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    .line 1324
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sDualSimSetting:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    .line 146
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 164
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 165
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 171
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 179
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 277
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1287
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1290
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1293
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1294
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1310
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    .line 1311
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1312
    iput-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1381
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 1382
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 1394
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 1398
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    .line 2594
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    .line 604
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 607
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    .line 610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmCheckLocked()V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initPhoneStateListener()V

    .line 615
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 618
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDeviceProvisioned is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v3, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 630
    :cond_0
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/16 v6, 0x64

    invoke-direct {v3, v4, v6, v5, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 631
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    .line 634
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 639
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v3, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 654
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v3, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    const-string v3, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v3, "android.intent.action.RADIO_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v3, "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v3, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v3, "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v3, "com.mediatek.lockscreen.action.WALLPAPER_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v3, "android.intent.action.ACTION_DUAL_BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v3, "com.mediatek.action.UNREAD_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    .local v0, bootCompleteFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 685
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 692
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    return-void

    .end local v0           #bootCompleteFilter:Landroid/content/IntentFilter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_2
    move v3, v5

    .line 615
    goto/16 :goto_0

    .line 703
    .restart local v0       #bootCompleteFilter:Landroid/content/IntentFilter;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 705
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    return p1
.end method

.method static synthetic access$1072(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMCardChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMNameUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRadioStateChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handle3GSwitchEvent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSystemStateChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDownloadCalibrationDataUpdate()V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSIMResetModem:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSIMResetModem:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDualBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootupModePick()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSIMInfoChanged(I)V

    return-void
.end method

.method private dmCheckLocked()V
    .locals 7

    .prologue
    .line 1485
    :try_start_0
    const-string v4, "DMAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1486
    .local v1, binder:Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 1487
    invoke-static {v1}, Lcom/mediatek/common/dm/DMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DMAgent;

    move-result-object v0

    .line 1488
    .local v0, agent:Lcom/mediatek/common/dm/DMAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DMAgent;->isLockFlagSet()Z

    move-result v3

    .line 1489
    .local v3, flag:Z
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dmCheckLocked, the lock flag is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setDmLocked(Z)V

    .line 1497
    .end local v0           #agent:Lcom/mediatek/common/dm/DMAgent;
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #flag:Z
    :goto_0
    return-void

    .line 1492
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_0
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "dmCheckLocked, DMAgent doesn\'t exit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1494
    .end local v1           #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1495
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "KeyguardUpdateMonitor"

    const-string v5, "get DM status failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .parameter "context"

    .prologue
    .line 597
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 600
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private getSimNumber(I)I
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1927
    const/4 v0, 0x0

    .line 1928
    .local v0, n:I
    :goto_0
    if-eqz p1, :cond_1

    .line 1929
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1930
    add-int/lit8 v0, v0, 0x1

    .line 1932
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1934
    :cond_1
    return v0
.end method

.method private getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1047
    const-string v1, "showPlmn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN =  TRUE "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v1, "plmn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, plmn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1053
    .end local v0           #plmn:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1050
    .restart local v0       #plmn:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1052
    .end local v0           #plmn:Ljava/lang/String;
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "EXTRA_SHOW_PLMN = FALSE  "

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1069
    const-string v1, "showSpn"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1075
    .end local v0           #spn:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handle3GSwitchEvent()V
    .locals 1

    .prologue
    .line 2154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 2155
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .parameter "status"

    .prologue
    .line 877
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "handleBatteryUpdate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v3, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 880
    .local v0, batteryUpdateInteresting:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDualBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;Z)V

    .line 882
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 883
    if-eqz v0, :cond_2

    .line 884
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 885
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 886
    .local v1, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 887
    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 884
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v1           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v2           #i:I
    :cond_2
    return-void
.end method

.method private handleBootupModePick()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2205
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2206
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handleBootupModePick"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 2211
    .local v0, simname:[Ljava/lang/String;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlotForCTA(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 2212
    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlotForCTA(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2213
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x2050036

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    .line 2284
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2285
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2286
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 2292
    :cond_1
    sput v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sDualSimSetting:I

    .line 2293
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCtaDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2294
    return-void
.end method

.method private handleCarrierInfoUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;)V
    .locals 5
    .parameter "spnUpdate"

    .prologue
    .line 897
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCarrierInfoUpdate: plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 901
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 902
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 903
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 904
    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    if-nez v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 900
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 907
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 910
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 914
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_4
    return-void
.end method

.method private handleClockVisibilityChanged()V
    .locals 4

    .prologue
    .line 967
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleClockVisibilityChanged()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 969
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 970
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 971
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 968
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private handleDownloadCalibrationDataUpdate()V
    .locals 4

    .prologue
    .line 1939
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleDownloadCalibrationDataUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1941
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1942
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1943
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1940
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1946
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method private handleDualBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;Z)V
    .locals 4
    .parameter "dualBatteryArgs"
    .parameter "pluggedIn"

    .prologue
    .line 2649
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleDualBatteryUpdate"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    .line 2651
    .local v1, oldPluggedIn:Z
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->needupdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eq p2, v1, :cond_4

    .line 2653
    :cond_2
    if-eqz p1, :cond_3

    .line 2654
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    .line 2656
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2657
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;->onRefreshDualBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)V

    .line 2656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2660
    .end local v0           #i:I
    :cond_4
    return-void
.end method

.method private handleKeyguardVisibilityChanged(I)V
    .locals 6
    .parameter "showing"

    .prologue
    const/4 v2, 0x1

    .line 980
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleKeyguardVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    if-ne p1, v2, :cond_2

    .line 982
    .local v2, isShowing:Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 983
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 984
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 985
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 986
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 983
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 981
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v2           #isShowing:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 989
    .restart local v1       #i:I
    .restart local v2       #isShowing:Z
    :cond_3
    return-void
.end method

.method private handleRadioStateChanged(I)V
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2158
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRadioStateChanged, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSim2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 2161
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 2162
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_3

    .line 2164
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 2165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    .line 2173
    :cond_2
    :goto_0
    return-void

    .line 2167
    :cond_3
    if-ne v4, p1, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_2

    .line 2169
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    if-eqz v0, :cond_2

    .line 2170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;->onRadioStateChanged(I)V

    goto :goto_0
.end method

.method private handleSIMCardChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1895
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1896
    .local v1, factory:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1897
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1898
    const v2, 0x2050085

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1907
    const v2, 0x2050094

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1908
    const v2, 0x2050080

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1909
    const v2, 0x2070018

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    .line 1911
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1912
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1913
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1914
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    .line 1915
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1916
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1923
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1924
    return-void
.end method

.method private handleSIMInfoChanged(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1884
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1885
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1886
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1887
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1888
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSIMInfoChanged(I)V

    .line 1885
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1892
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private handleSIMNameUpdate(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1872
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1873
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1874
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1875
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1876
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1873
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1879
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->updateResources()V

    .line 1881
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    .locals 7
    .parameter "simArgs"

    .prologue
    .line 920
    iget-object v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 922
    .local v2, state:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 923
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: intentValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state resolved to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldssimtate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", oldsim2state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v4, :cond_3

    .line 929
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 930
    .local v3, tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 936
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_7

    .line 937
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG_SIM_STATES:Z

    if-eqz v4, :cond_1

    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatching state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    if-nez v4, :cond_4

    .line 939
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 940
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: mSimState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 946
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 947
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 948
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_2

    .line 949
    iget v4, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 946
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 932
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    .end local v3           #tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 933
    .restart local v3       #tempState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 942
    :cond_4
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 943
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimStateChange: mSim2State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 953
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 954
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 955
    .restart local v0       #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_6

    .line 956
    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 953
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 961
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_7
    return-void
.end method

.method private handleSystemStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    if-nez v0, :cond_1

    .line 2178
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2179
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "mSystemStateCallback is null, skipped!"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2194
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2195
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "received unknown system state change event"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2186
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysBootup()V

    goto :goto_0

    .line 2190
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;->onSysShutdown()V

    goto :goto_0

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTimeUpdate()V
    .locals 4

    .prologue
    .line 864
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleTimeUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 866
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 867
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 865
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method private initPhoneStateListener()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 2086
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2110
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 2133
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2135
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2136
    .local v2, t:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2137
    .local v1, notifyNow:Ljava/lang/Boolean;
    const-string v5, "telephony.registry"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    .line 2138
    .local v3, tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "KeyguardUpdateMonitor"

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v5, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 2139
    const-string v5, "telephony.registry2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 2140
    .local v4, tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "KeyguardUpdateMonitor"

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2150
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :goto_1
    return-void

    .line 2136
    .restart local v2       #t:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2141
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2142
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "Fail to listen GEMINI state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2143
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2144
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "The registry is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2147
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v7, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1
.end method

.method private initSimChangedPrompt()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 1588
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getNewSimSlot()I

    move-result v3

    .line 1589
    .local v3, newSimSlot:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSimDetectStatus()Ljava/lang/String;

    move-result-object v5

    .line 1591
    .local v5, simDetectStatus:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1592
    .local v1, msg:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimNumber(I)I

    move-result v2

    .line 1593
    .local v2, newSimNumber:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x20e0062

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1594
    .local v0, firstName:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x20e0063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1596
    .local v4, secondName:Landroid/widget/TextView;
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_NEW:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1598
    if-ne v2, v9, :cond_1

    .line 1599
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1600
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050081

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1605
    :goto_0
    const/4 v6, 0x0

    .line 1606
    .local v6, simId:I
    :goto_1
    if-eqz v3, :cond_5

    .line 1607
    add-int/lit8 v6, v6, 0x1

    .line 1608
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_0

    .line 1609
    if-ne v6, v9, :cond_2

    .line 1610
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    .line 1619
    :cond_0
    :goto_2
    ushr-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1602
    .end local v6           #simId:I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1611
    .restart local v6       #simId:I
    :cond_2
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1612
    if-ne v2, v9, :cond_3

    .line 1613
    invoke-virtual {p0, v0, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 1615
    :cond_3
    invoke-virtual {p0, v4, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameBySlot(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 1621
    .end local v6           #simId:I
    :cond_4
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_REMOVE:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1622
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050083

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1623
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1624
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1633
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    const v8, 0x20e0061

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    return-void

    .line 1625
    :cond_6
    sget-object v7, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->SIM_DETECT_SWAP:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1626
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050084

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1628
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1630
    :cond_7
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown SIMCard Changed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private initSimSettingsView()V
    .locals 31

    .prologue
    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "voice_call_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v24

    .line 1638
    .local v24, voiceCallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "sms_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v13

    .line 1640
    .local v13, smsSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "gprs_connection_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1642
    .local v6, dataSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "video_call_sim_setting"

    const-wide/16 v29, -0x5

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v19

    .line 1644
    .local v19, videoCallSlot:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "phone"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 1645
    .local v15, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v27

    if-eqz v27, :cond_1

    const/16 v26, 0x1

    .line 1646
    .local v26, voiceCapable:Z
    :goto_0
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v27

    if-eqz v27, :cond_2

    const/4 v10, 0x1

    .line 1647
    .local v10, smsCapable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimChangedStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->getSIMCount()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    const/4 v8, 0x1

    .line 1649
    .local v8, multiSim:Z
    :goto_2
    sget-boolean v27, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v27, :cond_0

    .line 1650
    const-string v27, "KeyguardUpdateMonitor"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initSimSettingsView, isVoiceCapable="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", isSmsCapabl="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", voicecallSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", smsSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", dataSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", videoSlot="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", multiSim="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0064

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x2050099

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0066

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1663
    .local v21, voiceCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0067

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1664
    .local v23, voiceCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0065

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1665
    .local v22, voiceCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVoiceCall(ZZ)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1666
    const v27, 0x2050086

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1667
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1672
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0069

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1673
    .local v16, videoCall:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006a

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1674
    .local v18, videoCallOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e0068

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1675
    .local v17, videoCallItem:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowVideoCall(ZZ)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 1676
    const v27, 0x205009a

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1677
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1682
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006c

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1683
    .local v9, sms:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1684
    .local v12, smsOptr:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006b

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1685
    .local v11, smsItem:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->shouldShowSms(ZZ)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1686
    const v27, 0x2050087

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1687
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1692
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1693
    .local v4, data:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPromptView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x20e006f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1694
    .local v5, dataOptr:Landroid/widget/TextView;
    const v27, 0x2050088

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1695
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->addOptrNameById(Landroid/widget/TextView;J)V

    .line 1696
    return-void

    .line 1645
    .end local v4           #data:Landroid/widget/TextView;
    .end local v5           #dataOptr:Landroid/widget/TextView;
    .end local v8           #multiSim:Z
    .end local v9           #sms:Landroid/widget/TextView;
    .end local v10           #smsCapable:Z
    .end local v11           #smsItem:Landroid/view/View;
    .end local v12           #smsOptr:Landroid/widget/TextView;
    .end local v16           #videoCall:Landroid/widget/TextView;
    .end local v17           #videoCallItem:Landroid/view/View;
    .end local v18           #videoCallOptr:Landroid/widget/TextView;
    .end local v21           #voiceCall:Landroid/widget/TextView;
    .end local v22           #voiceCallItem:Landroid/view/View;
    .end local v23           #voiceCallOptr:Landroid/widget/TextView;
    .end local v26           #voiceCapable:Z
    :cond_1
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1646
    .restart local v26       #voiceCapable:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1647
    .restart local v10       #smsCapable:Z
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1669
    .restart local v8       #multiSim:Z
    .restart local v21       #voiceCall:Landroid/widget/TextView;
    .restart local v22       #voiceCallItem:Landroid/view/View;
    .restart local v23       #voiceCallOptr:Landroid/widget/TextView;
    :cond_4
    const/16 v27, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1679
    .restart local v16       #videoCall:Landroid/widget/TextView;
    .restart local v17       #videoCallItem:Landroid/view/View;
    .restart local v18       #videoCallOptr:Landroid/widget/TextView;
    :cond_5
    const/16 v27, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1689
    .restart local v9       #sms:Landroid/widget/TextView;
    .restart local v11       #smsItem:Landroid/view/View;
    .restart local v12       #smsOptr:Landroid/widget/TextView;
    :cond_6
    const/16 v27, 0x8

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private internetCallIsOn()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1710
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    .line 1711
    .local v1, isSupport:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_internet_call_value"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 1712
    .local v0, isOn:Z
    :goto_0
    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1713
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internetCallIsOn, isSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1718
    :goto_1
    return v2

    .end local v0           #isOn:Z
    :cond_1
    move v0, v3

    .line 1711
    goto :goto_0

    .restart local v0       #isOn:Z
    :cond_2
    move v2, v3

    .line 1718
    goto :goto_1
.end method

.method public static isAlarmBoot()Z
    .locals 3

    .prologue
    .line 1801
    const-string v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, bootReason:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1804
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1802
    .end local v1           #ret:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBatteryUpdateInteresting(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .parameter "old"
    .parameter "current"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1014
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 1015
    .local v0, nowPluggedIn:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v2

    .line 1016
    .local v2, wasPluggedIn:Z
    if-ne v2, v3, :cond_1

    if-ne v0, v3, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v5, v6, :cond_1

    move v1, v3

    .line 1021
    .local v1, stateChangedWhilePluggedIn:Z
    :goto_0
    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_2

    .line 1039
    :cond_0
    :goto_1
    return v3

    .end local v1           #stateChangedWhilePluggedIn:Z
    :cond_1
    move v1, v4

    .line 1016
    goto :goto_0

    .line 1031
    .restart local v1       #stateChangedWhilePluggedIn:Z
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    .line 1036
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isBatteryLow()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 1039
    goto :goto_1
.end method

.method public static isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1246
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1262
    move-object v0, p1

    .line 1263
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z
    .locals 4
    .parameter "state"
    .parameter "simId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1270
    move-object v0, p1

    .line 1271
    .local v0, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    if-nez p2, :cond_4

    .line 1272
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 1276
    :cond_3
    :goto_0
    return v1

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_5

    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPINDismissFlag(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_3

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method private sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 1121
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 1122
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 1123
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 1125
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1131
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 1134
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 1142
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCalibrationData:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDownloadCalibrationDataUpdate(Z)V

    .line 1143
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 1144
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSearchNetworkUpdate(IZ)V

    .line 1147
    :cond_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1
.end method

.method private shouldShowSms(ZZ)Z
    .locals 3
    .parameter "smsCapable"
    .parameter "multiSim"

    .prologue
    .line 1737
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1738
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowSms, smsCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1742
    const/4 v0, 0x1

    .line 1744
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowVideoCall(ZZ)Z
    .locals 3
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1723
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1724
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowVideoCall, video_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 3G_SWITCH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", voiceCallCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekVT3G324MSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isMediatekGemini3GSwitchSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    const/4 v0, 0x1

    .line 1733
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowVoiceCall(ZZ)Z
    .locals 3
    .parameter "voiceCallCapable"
    .parameter "multiSim"

    .prologue
    .line 1699
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1700
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldShowVoiceCall, voiceCallCapable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", multiSim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->internetCallIsOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    :cond_1
    const/4 v0, 0x1

    .line 1705
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 710
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 723
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 729
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 731
    .local v0, provisioned:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    .line 732
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 733
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x134

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    :cond_1
    return-void
.end method


# virtual methods
.method public addOptrNameById(Landroid/widget/TextView;J)V
    .locals 5
    .parameter "v"
    .parameter "simId"

    .prologue
    const/4 v4, 0x0

    .line 1761
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1762
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1764
    .local v1, simCardNamePadding:I
    invoke-virtual {p1, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1765
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameById(J)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1767
    const v2, 0x2050093

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1771
    :goto_0
    return-void

    .line 1769
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public addOptrNameBySlot(Landroid/widget/TextView;I)V
    .locals 5
    .parameter "v"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    .line 1748
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1749
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20b001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1751
    .local v1, simCardNamePadding:I
    invoke-virtual {p1, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1752
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, optrname:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1754
    const v2, 0x2050093

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1758
    :goto_0
    return-void

    .line 1756
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearFailedUnlockAttempts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1205
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1206
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1207
    return-void
.end method

.method public dmIsLocked()Z
    .locals 1

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    return v0
.end method

.method public getFailedUnlockAttempts()I
    .locals 1

    .prologue
    .line 1201
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    return v0
.end method

.method public getLastSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2032
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2033
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2LastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2LastState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2037
    :goto_0
    return-object v0

    .line 2036
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimLastState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getMaxBiometricUnlockAttemptsReached()Z
    .locals 2

    .prologue
    .line 1226
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptrDrawableById(J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 1523
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1524
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOptrDrawableById, xxsimId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v3, p1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1526
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_1

    .line 1527
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "getOptrDrawableBySlotId, return null"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 1530
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "slot"

    .prologue
    .line 1573
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1574
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrDrawableBySlot, xxslot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1576
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1577
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrDrawableBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    const/4 v1, 0x0

    .line 1580
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 1583
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameById(J)Ljava/lang/String;
    .locals 5
    .parameter "simId"

    .prologue
    const-wide/16 v3, 0x0

    .line 1501
    cmp-long v1, p1, v3

    if-lez v1, :cond_1

    .line 1502
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameById, xxsimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1504
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1505
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const/4 v1, 0x0

    .line 1518
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1508
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1511
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_2

    .line 1512
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1513
    :cond_2
    const-wide/16 v1, -0x2

    cmp-long v1, v1, p1

    if-nez v1, :cond_3

    .line 1514
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1515
    :cond_3
    cmp-long v1, v3, p1

    if-nez v1, :cond_4

    .line 1516
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x205008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1518
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOptrNameBySlot(J)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    .line 1537
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 1538
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1540
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    .line 1541
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const/4 v1, 0x0

    .line 1545
    :goto_0
    return-object v1

    .line 1544
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1548
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getOptrNameBySlotForCTA(J)Ljava/lang/String;
    .locals 5
    .parameter "slot"

    .prologue
    const v4, 0x205007d

    .line 1553
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3

    .line 1554
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOptrNameBySlot, xxSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    long-to-int v2, p1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 1556
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1557
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "getOptrNameBySlotId, return null"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-wide/16 v1, 0x1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 02"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1568
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :goto_0
    return-object v1

    .line 1561
    .restart local v0       #info:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1564
    :cond_2
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1568
    .end local v0           #info:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPINDismissFlag(IZ)Z
    .locals 8
    .parameter "simId"
    .parameter "pinOrPuk"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1994
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPINDismissFlag, simId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pinOrPuk="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mPinPukDismissFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    if-nez p1, :cond_0

    .line 1999
    const/4 v0, 0x1

    .line 2000
    .local v0, pinFlag:I
    const/4 v1, 0x4

    .line 2005
    .local v1, pukFlag:I
    :goto_0
    const/4 v2, 0x0

    .line 2006
    .local v2, result:Z
    if-eqz p2, :cond_2

    .line 2007
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v5, v0

    if-ne v5, v0, :cond_1

    move v2, v3

    .line 2011
    :goto_1
    return v2

    .line 2002
    .end local v0           #pinFlag:I
    .end local v1           #pukFlag:I
    .end local v2           #result:Z
    :cond_0
    const/4 v0, 0x2

    .line 2003
    .restart local v0       #pinFlag:I
    const/16 v1, 0x8

    .restart local v1       #pukFlag:I
    goto :goto_0

    .restart local v2       #result:Z
    :cond_1
    move v2, v4

    .line 2007
    goto :goto_1

    .line 2009
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_3

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method public getQueryBaseTime()J
    .locals 2

    .prologue
    .line 2589
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    return-wide v0
.end method

.method getRetryPukCount(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 2541
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2542
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2545
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getSearchingFlag(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 1855
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1856
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearchingGemini:Z

    .line 1858
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mNetSearching:Z

    goto :goto_0
.end method

.method public getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3
    .parameter "simId"

    .prologue
    .line 2022
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2023
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSim2State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2027
    :goto_0
    return-object v0

    .line 2026
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method public getTelephonyPlmn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonyPlmn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 2047
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmnGemini:Ljava/lang/CharSequence;

    .line 2050
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTelephonySpn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTelephonySpn(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simId"

    .prologue
    .line 2055
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpnGemini:Ljava/lang/CharSequence;

    .line 2058
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWallpaperStatus()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperSetComplete:Z

    return v0
.end method

.method public getWallpaperUpdate()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    return v0
.end method

.method protected handleBootCompleted()V
    .locals 3

    .prologue
    .line 772
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 773
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 775
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 773
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDevicePolicyManagerStateChanged()V
    .locals 3

    .prologue
    .line 743
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 744
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 745
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 743
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 749
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleDeviceProvisioned()V
    .locals 4

    .prologue
    .line 805
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 807
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 805
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 813
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 815
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 817
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 818
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 820
    :cond_2
    return-void
.end method

.method protected handleLockScreenUpdateLayout(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1863
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1864
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 1865
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 1866
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenUpdate(I)V

    .line 1863
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1869
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 826
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePhoneStateChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 829
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 831
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 832
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 838
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 839
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 840
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_3

    .line 841
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 838
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 833
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    .end local v1           #i:I
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 834
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 835
    :cond_5
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 844
    .restart local v1       #i:I
    :cond_6
    return-void
.end method

.method protected handleRingerModeChange(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 850
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRingerModeChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 852
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 853
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 854
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 852
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    return-void
.end method

.method protected handleUserRemoved(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 793
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 794
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 795
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserRemoved(I)V

    .line 793
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method protected handleUserSwitched(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .parameter "userId"
    .parameter "reply"

    .prologue
    .line 755
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 757
    .local v0, cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitched(I)V

    .line 755
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v0           #cb:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 763
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_1
    return-void

    .line 764
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public handleWallpaperSet()V
    .locals 3

    .prologue
    .line 997
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 998
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "WALLPAPER_SET:handleWallpaperSet"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;->onWallpaperSetComplete()V

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    :cond_0
    return-void
.end method

.method public hasBootCompleted()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public isAlternateUnlockEnabled()Z
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    return v0
.end method

.method public isClockVisible()Z
    .locals 1

    .prologue
    .line 1214
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    return v0
.end method

.method public isDeviceCharging()Z
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isEncryptMode()Z
    .locals 2

    .prologue
    .line 2066
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2067
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGMSRunning()Z
    .locals 6

    .prologue
    .line 1816
    const/4 v2, 0x0

    .line 1817
    .local v2, running:Z
    const/4 v1, 0x1

    .line 1818
    .local v1, isExist:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    .line 1819
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.setupwizard"

    const-string v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    .line 1822
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :goto_0
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1830
    :cond_0
    const/4 v2, 0x1

    .line 1832
    :cond_1
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGMSRunning, isGMSExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", running = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    return v2

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isPhoneAppReady()Z
    .locals 8

    .prologue
    .line 1456
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1458
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    .line 1459
    .local v3, ready:Z
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1460
    .local v5, runningAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_0

    .line 1461
    const-string v6, "KeyguardUpdateMonitor"

    const-string v7, "runningAppInfo == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1470
    .end local v3           #ready:Z
    .local v4, ready:I
    :goto_0
    return v4

    .line 1464
    .end local v4           #ready:I
    .restart local v3       #ready:Z
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1465
    .local v1, app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android.phone"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1466
    const/4 v3, 0x1

    .end local v1           #app:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    move v4, v3

    .line 1470
    .restart local v4       #ready:I
    goto :goto_0
.end method

.method public isSIMInserted(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 1780
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1782
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1789
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "KeyguardUpdateMonitor"

    const-string v4, "Get sim insert status failure!"

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1789
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSimLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1238
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1239
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLockedGemini(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1241
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSimLockedGemini(I)Z
    .locals 4
    .parameter "simId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1444
    if-ne p1, v1, :cond_2

    .line 1445
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1449
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1253
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1254
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecureGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1256
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 1104
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1107
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 1108
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    :cond_1
    :goto_1
    return-void

    .line 1106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1113
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1115
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public registerDualBatteryCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2641
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;->onRefreshDualBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)V

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2644
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "Object tried to add another DualBattery callback"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerRadioStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 2019
    return-void
.end method

.method public registerSystemStateCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSystemStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SystemStateCallback;

    .line 1954
    return-void
.end method

.method public removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 1090
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1091
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1096
    :cond_2
    return-void
.end method

.method public removeDualBatteryCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDualBatteryCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2664
    return-void
.end method

.method public reportClockVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1157
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mClockVisible:Z

    .line 1158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1159
    return-void
.end method

.method public reportDialogClose()V
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->reportDialogClose()V

    .line 2316
    return-void
.end method

.method public reportFailedBiometricUnlockAttempt()V
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedBiometricUnlockAttempts:I

    .line 1223
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:I

    .line 1211
    return-void
.end method

.method public reportSimUnlocked()V
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 1178
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1180
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 2075
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    .line 2076
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    .line 2078
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 2080
    :cond_2
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "here, SIM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state is NETWORK_LOCKED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportWallpaperSet()V
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mWallpaperUpdate:Z

    .line 1010
    return-void
.end method

.method public requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mDialogSequenceManager:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V

    .line 2309
    return-void
.end method

.method public sendKeyguardVisibilityChanged(Z)V
    .locals 4
    .parameter "showing"

    .prologue
    .line 1150
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyguardVisibilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1152
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1154
    return-void

    .line 1152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlternateUnlockEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1234
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mAlternateUnlockEnabled:Z

    .line 1235
    return-void
.end method

.method public setDebugFilterStatus(Z)V
    .locals 0
    .parameter "debugFlag"

    .prologue
    .line 1793
    sput-boolean p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->DEBUG:Z

    .line 1794
    return-void
.end method

.method public setDmLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 1479
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mKeyguardDMLocked:Z

    .line 1480
    return-void
.end method

.method public setPINDismiss(IZZ)V
    .locals 5
    .parameter "simId"
    .parameter "pinOrPuk"
    .parameter "dismiss"

    .prologue
    .line 1968
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPINDismiss, simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pinOrPuk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dismiss="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPinPukDismissFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    if-nez p1, :cond_0

    .line 1973
    const/4 v0, 0x1

    .line 1974
    .local v0, pinFlag:I
    const/4 v1, 0x4

    .line 1979
    .local v1, pukFlag:I
    :goto_0
    if-eqz p3, :cond_2

    .line 1980
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    if-eqz p2, :cond_1

    .end local v0           #pinFlag:I
    :goto_1
    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    .line 1984
    :goto_2
    return-void

    .line 1976
    .end local v1           #pukFlag:I
    :cond_0
    const/4 v0, 0x2

    .line 1977
    .restart local v0       #pinFlag:I
    const/16 v1, 0x8

    .restart local v1       #pukFlag:I
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1980
    goto :goto_1

    .line 1982
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    if-eqz p2, :cond_3

    xor-int/lit8 v2, v0, -0x1

    :goto_3
    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mPinPukDismissFlag:I

    goto :goto_2

    :cond_3
    xor-int/lit8 v2, v1, -0x1

    goto :goto_3
.end method

.method public setQueryBaseTime()V
    .locals 2

    .prologue
    .line 2583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mQueryBaseTime:J

    .line 2584
    return-void
.end method

.method public unRegisterRadioStateCallback()V
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mRadioStateCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$RadioStateCallback;

    .line 1958
    return-void
.end method

.method updateResources()V
    .locals 4

    .prologue
    .line 1837
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1838
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const v3, 0x2050080

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1840
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1841
    .local v0, nagbtn:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1842
    const v2, 0x2050094

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1844
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mSimCardChangedDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1845
    .local v1, posbtn:Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 1846
    const v2, 0x2050085

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1849
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimChangedPrompt()V

    .line 1850
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->initSimSettingsView()V

    .line 1852
    .end local v0           #nagbtn:Landroid/widget/Button;
    .end local v1           #posbtn:Landroid/widget/Button;
    :cond_2
    return-void
.end method
