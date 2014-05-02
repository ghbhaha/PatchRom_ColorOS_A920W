.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$InputMethodSettings;,
        Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale; = null

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_BIND_METHOD:I = 0xbc2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_RESTART_INPUT:I = 0x7da

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SHOW_IM_CONFIG:I = 0x4

.field static final MSG_SHOW_IM_PICKER:I = 0x1

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x2

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field static final MSG_UNBIND_METHOD:I = 0xbb8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String; = null

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field private static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0x2710L

.field public static mImsPid:I


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

.field private final mImeSelectedOnBoot:Z

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInputShown:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocale:Ljava/util/Locale;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNextArg:I

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field mScreenOn:Z

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field mSystemReady:Z

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    .line 162
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/InputMethodManagerService;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/InputMethodManagerService;->ENGLISH_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 13
    .parameter "context"
    .parameter "windowManager"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 616
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 183
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v1, -0x1

    invoke-direct {v0, v3, v3, v1}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 189
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 193
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 200
    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 380
    iput-boolean v11, p0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 382
    iput v12, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 391
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 617
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 618
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 619
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 621
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 623
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    new-instance v1, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 629
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 630
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 632
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    .line 633
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    const v1, 0x1080354

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 634
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 635
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 636
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    iput-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 637
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    iput v12, v0, Landroid/app/Notification;->defaults:I

    .line 638
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 639
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 642
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "android.system.imeswitcher"

    aput-object v2, v1, v12

    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 644
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12, v10, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 647
    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 649
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 650
    .local v6, broadcastFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 660
    iput-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 661
    const/4 v5, 0x0

    .line 663
    .local v5, userId:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 682
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v11}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 689
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    .line 691
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 692
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;-><init>(Landroid/content/Context;Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    .line 695
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    .line 696
    .local v7, defaultImiId:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 698
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 699
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->enableAllIMEsIfThereIsNoEnabledIME()V

    .line 701
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v0, :cond_0

    .line 702
    const-string v0, "InputMethodManagerService"

    const-string v1, "No IME selected. Choose the most applicable IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 706
    :cond_0
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 707
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked()V

    .line 711
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 712
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    return-void

    .line 683
    .end local v7           #defaultImiId:Ljava/lang/String;
    .end local v9           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v8

    .line 684
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "InputMethodManagerService"

    const-string v1, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #defaultImiId:Ljava/lang/String;
    :cond_1
    move v0, v12

    .line 696
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/InputMethodManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->checkCurrentLocaleChangedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/InputMethodManagerService;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/android/server/InputMethodManagerService;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/android/server/InputMethodManagerService;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method private addShortcutInputMethodAndSubtypes(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .parameter "imi"
    .parameter "subtype"

    .prologue
    .line 3283
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3284
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3290
    :goto_0
    return-void

    .line 3286
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3287
    .local v0, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3288
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .parameter "service"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 960
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 961
    :cond_0
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v0

    goto :goto_0
.end method

.method private calledFromValidUser()Z
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v2, 0x1

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 929
    .local v0, uid:I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 930
    .local v1, userId:I
    sget-boolean v3, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 931
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- calledFromForegroundUserOrSystemProcess ? calling uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " system uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " calling userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", foreground user id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", calling pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    if-eq v0, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 955
    :cond_1
    :goto_0
    return v2

    .line 945
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 948
    sget-boolean v3, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 949
    const-string v3, "InputMethodManagerService"

    const-string v4, "--- Access granted because the calling process has the INTERACT_ACROSS_USERS_FULL permission"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :cond_3
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .parameter "subtype"

    .prologue
    const/4 v0, 0x1

    .line 2926
    if-nez p1, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCurrentLocaleChangedLocked()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(Z)V

    .line 793
    return-void
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 4

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getMostApplicableDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 2479
    .local v0, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    .line 2480
    sget-boolean v1, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2481
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New default IME was selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 2484
    const/4 v1, 0x1

    .line 2487
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z
    .locals 3
    .parameter "imi"
    .parameter "language"

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 841
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 842
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    const/4 v2, 0x1

    .line 846
    :goto_1
    return v2

    .line 841
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 14
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3150
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v11}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 3151
    .local v5, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v6, 0x0

    .line 3152
    .local v6, mostApplicableIMI:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v7, 0x0

    .line 3153
    .local v7, mostApplicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v1, 0x0

    .line 3156
    .local v1, foundInSystemIME:Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3157
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 3158
    .local v4, imiId:Ljava/lang/String;
    if-eqz v1, :cond_1

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3161
    :cond_1
    const/4 v9, 0x0

    .line 3162
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v11, 0x1

    invoke-virtual {p0, v3, v11}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 3165
    .local v0, enabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_2

    .line 3166
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3171
    :cond_2
    if-nez v9, :cond_3

    .line 3172
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v0, p1, v12, v13}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3175
    :cond_3
    invoke-static {v3, p1}, Lcom/android/server/InputMethodManagerService;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3177
    .local v8, overridingImplicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 3181
    .local v10, subtypesForSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v9, :cond_4

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_4

    .line 3182
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3187
    :cond_4
    if-nez v9, :cond_5

    .line 3188
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v11, v10, p1, v12, v13}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3191
    :cond_5
    if-eqz v9, :cond_0

    .line 3192
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3194
    move-object v6, v3

    .line 3195
    move-object v7, v9

    .line 3208
    .end local v0           #enabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #imiId:Ljava/lang/String;
    .end local v8           #overridingImplicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypesForSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    sget-boolean v11, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 3209
    if-eqz v6, :cond_7

    .line 3210
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Most applicable shortcut input method was:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    if-eqz v7, :cond_7

    .line 3213
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Most applicable shortcut input method subtype was:,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_7
    if-eqz v6, :cond_a

    .line 3220
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3223
    :goto_2
    return-object v11

    .restart local v0       #enabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v3       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v4       #imiId:Ljava/lang/String;
    .restart local v8       #overridingImplicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v9       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8
    move-object v10, v8

    .line 3177
    goto :goto_1

    .line 3197
    .restart local v10       #subtypesForSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_9
    if-nez v1, :cond_0

    .line 3199
    move-object v6, v3

    .line 3200
    move-object v7, v9

    .line 3201
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 3203
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3223
    .end local v0           #enabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #imiId:Ljava/lang/String;
    .end local v8           #overridingImplicitlyEnabledSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypesForSearch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_a
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 11
    .parameter "res"
    .parameter
    .parameter "mode"
    .parameter "locale"
    .parameter "canIgnoreLocaleAsLastResort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .prologue
    .line 3100
    .local p1, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 3101
    :cond_0
    const/4 v2, 0x0

    .line 3144
    :cond_1
    :goto_0
    return-object v2

    .line 3103
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3104
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3106
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3107
    .local v4, language:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3108
    .local v5, partialMatchFound:Z
    const/4 v1, 0x0

    .line 3109
    .local v1, applicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 3110
    .local v2, firstMatchedModeSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3111
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 3112
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3113
    .local v6, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 3116
    .local v7, subtypeLocale:Ljava/lang/String;
    if-eqz p2, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3117
    :cond_4
    if-nez v2, :cond_5

    .line 3118
    move-object v2, v6

    .line 3120
    :cond_5
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3122
    move-object v1, v6

    .line 3132
    .end local v6           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7           #subtypeLocale:Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    if-nez p4, :cond_1

    .line 3138
    :cond_7
    sget-boolean v8, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 3139
    if-eqz v1, :cond_8

    .line 3140
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Applicable InputMethodSubtype was found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v2, v1

    .line 3144
    goto :goto_0

    .line 3124
    .restart local v6       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7       #subtypeLocale:Ljava/lang/String;
    :cond_9
    if-nez v5, :cond_a

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3126
    move-object v1, v6

    .line 3127
    const/4 v5, 0x1

    .line 3111
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private finishSession(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 3
    .parameter "sessionState"

    .prologue
    .line 1360
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 1362
    :try_start_0
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1365
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V

    goto :goto_0
.end method

.method private getAppShowFlags()I
    .locals 2

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 1093
    or-int/lit8 v0, v0, 0x2

    .line 1097
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_0

    .line 1095
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 3242
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v4, v6

    .line 3278
    :goto_0
    return-object v4

    .line 3245
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v7

    if-eq v7, v9, :cond_2

    move v3, v4

    .line 3247
    .local v3, subtypeIsSelected:Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3248
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    move-object v4, v6

    .line 3249
    goto :goto_0

    .end local v1           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #subtypeIsSelected:Z
    :cond_2
    move v3, v5

    .line 3245
    goto :goto_1

    .line 3251
    .restart local v1       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v3       #subtypeIsSelected:Z
    :cond_3
    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/server/InputMethodManagerService;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3253
    :cond_4
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/InputMethodManagerService;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 3254
    .local v2, subtypeId:I
    if-ne v2, v9, :cond_7

    .line 3258
    invoke-virtual {p0, v1, v4}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 3262
    .local v0, explicitlyOrImplicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 3263
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3278
    .end local v0           #explicitlyOrImplicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v2           #subtypeId:I
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 3264
    .restart local v0       #explicitlyOrImplicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v2       #subtypeId:I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 3265
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string v7, "keyboard"

    invoke-static {v5, v0, v7, v6, v4}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3268
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_5

    .line 3269
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v0, v6, v6, v4}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2

    .line 3275
    .end local v0           #explicitlyOrImplicitlyEnabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2
.end method

.method private getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 993
    .local v0, enabledInputMethodAndSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 994
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 997
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    return-object v0
.end method

.method private getImeShowFlags()I
    .locals 2

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 1082
    or-int/lit8 v0, v0, 0x3

    .line 1087
    :cond_0
    :goto_0
    return v0

    .line 1084
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_0

    .line 1085
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 14
    .parameter "res"
    .parameter "imi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3022
    invoke-static {p1}, Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v10

    .line 3023
    .local v10, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget-object v12, v12, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3024
    .local v11, systemLocale:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3084
    :cond_0
    :goto_0
    return-object v3

    .line 3025
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3027
    .local v1, applicableModeAndSubtypesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 3028
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 3030
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3031
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3032
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 3033
    .local v8, mode:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3034
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    .end local v8           #mode:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3038
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_4

    .line 3039
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 3041
    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_8

    .line 3042
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3043
    .restart local v9       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 3044
    .local v7, locale:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 3053
    .restart local v8       #mode:Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3054
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3056
    .local v2, applicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_7

    .line 3057
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3041
    .end local v2           #applicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3058
    .restart local v2       #applicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3060
    :cond_7
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3063
    .end local v2           #applicableSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7           #locale:Ljava/lang/String;
    .end local v8           #mode:Ljava/lang/String;
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_8
    const-string v12, "keyboard"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3065
    .local v5, keyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3067
    .local v3, applicableSubtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v5, :cond_a

    const-string v12, "AsciiCapable"

    invoke-virtual {v5, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 3068
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_a

    .line 3069
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3070
    .restart local v9       #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    .line 3071
    .restart local v8       #mode:Ljava/lang/String;
    const-string v12, "keyboard"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v12, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v9, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3073
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3077
    .end local v8           #mode:Ljava/lang/String;
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_a
    if-nez v5, :cond_0

    .line 3078
    const-string v12, "keyboard"

    const/4 v13, 0x1

    invoke-static {p0, v10, v12, v11, v13}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 3080
    .local v6, lastResortKeyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v6, :cond_0

    .line 3081
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getMostApplicableDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;
    .locals 5

    .prologue
    .line 2457
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    .line 2458
    .local v0, enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2460
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2461
    .local v2, i:I
    const/4 v1, -0x1

    .line 2462
    .local v1, firstFoundSystemIme:I
    :cond_0
    :goto_0
    if-lez v2, :cond_2

    .line 2463
    add-int/lit8 v2, v2, -0x1

    .line 2464
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2465
    .local v3, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->isSystemImeThatHasEnglishSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2474
    .end local v1           #firstFoundSystemIme:I
    .end local v2           #i:I
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return-object v3

    .line 2468
    .restart local v1       #firstFoundSystemIme:I
    .restart local v2       #i:I
    .restart local v3       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    if-gez v1, :cond_0

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2469
    move v1, v2

    goto :goto_0

    .line 2472
    .end local v3           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    move-object v3, v4

    goto :goto_1

    .line 2474
    .end local v1           #firstFoundSystemIme:I
    .end local v2           #i:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "imi"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2446
    .local v3, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 2447
    .local v2, subtypeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2448
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 2449
    .local v1, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2450
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2453
    .end local v1           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method private getSelectedInputMethodSubtypeId(Ljava/lang/String;)I
    .locals 3
    .parameter "id"

    .prologue
    .line 2995
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2996
    .local v0, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_0

    .line 2997
    const/4 v2, -0x1

    .line 3000
    :goto_0
    return v2

    .line 2999
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethodSubtypeHashCode()I

    move-result v1

    .line 3000
    .local v1, subtypeHashCode:I
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    goto :goto_0
.end method

.method private static getStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4109
    .local v3, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4110
    :catch_0
    move-exception v0

    .line 4111
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 4113
    .local v1, frames:[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, j:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 4114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4117
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .parameter "imi"
    .parameter "subtypeHashCode"

    .prologue
    .line 3008
    if-eqz p0, :cond_1

    .line 3009
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    .line 3010
    .local v2, subtypeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3011
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 3012
    .local v1, ims:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 3017
    .end local v0           #i:I
    .end local v1           #ims:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2           #subtypeCount:I
    :goto_1
    return v0

    .line 3010
    .restart local v0       #i:I
    .restart local v1       #ims:Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v2       #subtypeCount:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3017
    .end local v0           #i:I
    .end local v1           #ims:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2           #subtypeCount:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .parameter "imi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v2, subtypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 2437
    .local v1, subtypeCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2438
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2440
    :cond_0
    return-object v2
.end method

.method private handleDebugCmd(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "option"

    .prologue
    .line 4233
    const-string v1, "-d"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4234
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 4235
    .local v0, action:Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4236
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/InputMethodManagerService;->runDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 4247
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-void

    .line 4237
    .restart local v0       #action:Ljava/lang/String;
    :cond_0
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4238
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/InputMethodManagerService;->runDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 4240
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->printUsage(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 4242
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    const-string v1, "-h"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4243
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->printUsage(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 4245
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; use -h for help"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isScreenLocked()Z
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "inputMethod"

    .prologue
    .line 2430
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSystemImeThatHasEnglishSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "imi"

    .prologue
    .line 833
    invoke-static {p0}, Lcom/android/server/InputMethodManagerService;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    const/4 v0, 0x0

    .line 836
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/InputMethodManagerService;->ENGLISH_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/InputMethodManagerService;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .parameter "imi"
    .parameter "subtypeHashCode"

    .prologue
    .line 3004
    invoke-static {p0, p1}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSystemDefaultIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 5
    .parameter "imi"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 803
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v1

    .line 807
    :cond_1
    invoke-static {p1}, Lcom/android/server/InputMethodManagerService;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 808
    goto :goto_0

    .line 813
    :cond_2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 815
    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 817
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/InputMethodManagerService;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 820
    goto :goto_0

    .line 823
    .end local v0           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 826
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 827
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found no subtypes in a system IME: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private needsToShowImeSwitchOngoingNotification()Z
    .locals 15

    .prologue
    .line 1450
    iget-boolean v12, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 1493
    :goto_0
    return v12

    .line 1451
    :cond_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 1452
    :cond_1
    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 1453
    :try_start_0
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v12}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v5

    .line 1454
    .local v5, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1455
    .local v0, N:I
    const/4 v12, 0x2

    if-le v0, v12, :cond_2

    const/4 v12, 0x1

    monitor-exit v13

    goto :goto_0

    .line 1494
    .end local v0           #N:I
    .end local v5           #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1456
    .restart local v0       #N:I
    .restart local v5       #imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    const/4 v12, 0x1

    if-ge v0, v12, :cond_3

    const/4 v12, 0x0

    :try_start_1
    monitor-exit v13

    goto :goto_0

    .line 1457
    :cond_3
    const/4 v7, 0x0

    .line 1458
    .local v7, nonAuxCount:I
    const/4 v1, 0x0

    .line 1459
    .local v1, auxCount:I
    const/4 v8, 0x0

    .line 1460
    .local v8, nonAuxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 1461
    .local v2, auxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 1462
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 1463
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v12, 0x1

    invoke-virtual {p0, v4, v12}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 1465
    .local v11, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 1466
    .local v10, subtypeCount:I
    if-nez v10, :cond_5

    .line 1467
    add-int/lit8 v7, v7, 0x1

    .line 1461
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1469
    :cond_5
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v10, :cond_4

    .line 1470
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1471
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1472
    add-int/lit8 v7, v7, 0x1

    .line 1473
    move-object v8, v9

    .line 1469
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1475
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1476
    move-object v2, v9

    goto :goto_3

    .line 1481
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #j:I
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypeCount:I
    .end local v11           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    const/4 v12, 0x1

    if-gt v7, v12, :cond_8

    const/4 v12, 0x1

    if-le v1, v12, :cond_9

    .line 1482
    :cond_8
    const/4 v12, 0x1

    monitor-exit v13

    goto :goto_0

    .line 1483
    :cond_9
    const/4 v12, 0x1

    if-ne v7, v12, :cond_c

    const/4 v12, 0x1

    if-ne v1, v12, :cond_c

    .line 1484
    if-eqz v8, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1489
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_0

    .line 1491
    :cond_b
    const/4 v12, 0x1

    monitor-exit v13

    goto/16 :goto_0

    .line 1493
    :cond_c
    const/4 v12, 0x0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4322
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mNextArg:I

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 4323
    const/4 v0, 0x0

    .line 4326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mNextArg:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/InputMethodManagerService;->mNextArg:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private printUsage(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    .line 4215
    const-string v0, "Input method manager service dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4216
    const-string v0, "  [-d] [-h] [cmd] [option] ..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    const-string v0, "  -d enable <zone>          enable the debug zone"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4218
    const-string v0, "  -d disable <zone>         disable the debug zone"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    const-string v0, "       zone list:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    const-string v0, "         0 : InputMethodManagerService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4221
    const-string v0, "         1 : InputMethodService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    const-string v0, "         2 : InputMethodManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4223
    const-string v0, "  -h                        print the dump usage"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    return-void
.end method

.method private refreshImeWindowVisibilityLocked()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 905
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 906
    .local v0, conf:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v6, v4, :cond_2

    move v2, v4

    .line 908
    .local v2, haveHardKeyboard:Z
    :goto_0
    if-eqz v2, :cond_3

    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move v1, v4

    .line 911
    .local v1, hardKeyShown:Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 914
    .local v3, isScreenLocked:Z
    :goto_2
    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v5, 0x3

    :cond_1
    iput v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 916
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->updateImeWindowStatusLocked()V

    .line 917
    return-void

    .end local v1           #hardKeyShown:Z
    .end local v2           #haveHardKeyboard:Z
    .end local v3           #isScreenLocked:Z
    :cond_2
    move v2, v5

    .line 906
    goto :goto_0

    .restart local v2       #haveHardKeyboard:Z
    :cond_3
    move v1, v5

    .line 908
    goto :goto_1

    .restart local v1       #hardKeyShown:Z
    :cond_4
    move v3, v5

    .line 911
    goto :goto_2
.end method

.method private resetAllInternalStateLocked(Z)V
    .locals 6
    .parameter "updateOnlyWhenLocaleChanged"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 750
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 755
    .local v1, newLocale:Ljava/util/Locale;
    if-eqz p1, :cond_2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 757
    :cond_2
    if-nez p1, :cond_3

    .line 758
    invoke-virtual {p0, v4, v5}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 759
    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 760
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 762
    :cond_3
    sget-boolean v3, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 763
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locale has been changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_4
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;-><init>(Landroid/content/Context;Lcom/android/server/InputMethodManagerService;)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    .line 767
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 768
    if-nez p1, :cond_6

    .line 769
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, selectedImiId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 773
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 779
    .end local v2           #selectedImiId:Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked()V

    .line 780
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;

    .line 781
    if-nez p1, :cond_0

    .line 783
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Unexpected exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 777
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 727
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    const/4 v0, 0x0

    .line 732
    .local v0, defIm:Landroid/view/inputmethod/InputMethodInfo;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 733
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_2

    .line 734
    invoke-direct {p0, v2, p1}, Lcom/android/server/InputMethodManagerService;->isValidSystemDefaultIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 735
    move-object v0, v2

    .line 736
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 740
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 741
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getMostApplicableDefaultIMELocked()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 742
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No default found, using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_4
    if-eqz v0, :cond_0

    .line 745
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    goto :goto_0
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .parameter "newDefaultIme"

    .prologue
    .line 2977
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2978
    .local v1, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, -0x1

    .line 2980
    .local v2, lastSubtypeId:I
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2981
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2982
    .local v3, subtypeHashCode:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2984
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2991
    .end local v3           #subtypeHashCode:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2992
    return-void

    .line 2986
    .restart local v3       #subtypeHashCode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2987
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private runDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 4256
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 4258
    .local v0, args:[Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->nextArg()Ljava/lang/String;

    move-result-object v1

    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 4259
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4260
    sput-boolean p3, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    goto :goto_0

    .line 4261
    :cond_0
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4262
    if-eqz p3, :cond_1

    const-string v2, "enable"

    :goto_1
    aput-object v2, v0, v3

    .line 4263
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->runInputMethodServiceDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 4262
    :cond_1
    const-string v2, "disable"

    goto :goto_1

    .line 4264
    :cond_2
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4265
    if-eqz p3, :cond_3

    const-string v2, "enable"

    :goto_2
    aput-object v2, v0, v3

    .line 4266
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->runInputMethodManagerDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 4265
    :cond_3
    const-string v2, "disable"

    goto :goto_2

    .line 4268
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->printUsage(Ljava/io/PrintWriter;)V

    .line 4272
    :cond_5
    return-void
.end method

.method private runInputMethodManagerDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4297
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_0

    .line 4299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4304
    :cond_0
    :goto_0
    return-void

    .line 4300
    :catch_0
    move-exception v0

    .line 4301
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client dead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private runInputMethodServiceDebug(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4281
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    .line 4283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4288
    :cond_0
    :goto_0
    return-void

    .line 4284
    :catch_0
    move-exception v0

    .line 4285
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input method client dead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCurrentInputMethodAndSubtypeToHistory()V
    .locals 3

    .prologue
    .line 2931
    sget-object v0, Lcom/android/server/InputMethodManagerService;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 2932
    .local v0, subtypeId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v1, :cond_0

    .line 2933
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2935
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2936
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->addSubtypeToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    :cond_1
    return-void
.end method

.method private setImeWindowVisibilityStatusHiddenLocked()V
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 901
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->updateImeWindowStatusLocked()V

    .line 902
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6
    .parameter "token"
    .parameter "id"
    .parameter "subtypeId"

    .prologue
    .line 2207
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2208
    if-nez p1, :cond_0

    .line 2209
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2212
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2228
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2216
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_1

    .line 2217
    const-string v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring setInputMethod of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    monitor-exit v3

    .line 2229
    :goto_0
    return-void

    .line 2222
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2224
    .local v0, ident:J
    :try_start_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2226
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2228
    monitor-exit v3

    goto :goto_0

    .line 2226
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 3
    .parameter "imi"
    .parameter "subtypeId"
    .parameter "setSubtypeOnly"

    .prologue
    const/4 v2, -0x1

    .line 2943
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->saveCurrentInputMethodAndSubtypeToHistory()V

    .line 2946
    if-eqz p1, :cond_0

    if-gez p2, :cond_2

    .line 2947
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSelectedSubtype(I)V

    .line 2948
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2970
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 2972
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 2974
    :cond_1
    return-void

    .line 2950
    :cond_2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 2951
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 2952
    .local v0, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSelectedSubtype(I)V

    .line 2953
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 2955
    .end local v0           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->putSelectedSubtype(I)V

    .line 2957
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 2972
    :cond_4
    const-string v1, ""

    goto :goto_1
.end method

.method private showConfigureInputMethods()V
    .locals 4

    .prologue
    .line 2586
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2587
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2590
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 2591
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 4
    .parameter "inputMethodId"

    .prologue
    .line 2575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2576
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2580
    const-string v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2582
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 2583
    return-void
.end method

.method private showInputMethodMenu()V
    .locals 1

    .prologue
    .line 2567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 2568
    return-void
.end method

.method private showInputMethodMenuInternal(Z)V
    .locals 30
    .parameter "showSubtypes"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "Jianjun.Dan@Plf.Framework.SDK add inputmothod select"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 2598
    sget-boolean v25, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v25, :cond_0

    const-string v25, "InputMethodManagerService"

    const-string v26, "Show switching menu"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2601
    .local v8, context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v16

    .line 2603
    .local v16, isScreenLocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v18

    .line 2604
    .local v18, lastInputMethodId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v19

    .line 2605
    .local v19, lastInputMethodSubtypeId:I
    sget-boolean v25, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v25, :cond_1

    const-string v25, "InputMethodManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Current IME: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2608
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked()Ljava/util/HashMap;

    move-result-object v14

    .line 2610
    .local v14, immis:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v25

    if-nez v25, :cond_3

    .line 2611
    :cond_2
    monitor-exit v26

    .line 2739
    :goto_0
    return-void

    .line 2614
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v13

    .line 2620
    .local v13, imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    const/16 v25, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 2621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 2622
    .local v10, currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_4

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 2624
    .local v9, currentImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v25

    move/from16 v0, v25

    invoke-static {v9, v0}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v19

    .line 2629
    .end local v9           #currentImi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v10           #currentSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    .line 2630
    .local v4, N:I
    new-array v0, v4, [Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 2631
    new-array v0, v4, [I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    .line 2632
    const/4 v7, 0x0

    .line 2633
    .local v7, checkedItem:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v4, :cond_8

    .line 2634
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 2635
    .local v17, item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v27, v0

    aput-object v27, v25, v12

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    move/from16 v27, v0

    aput v27, v25, v12

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v25, v0

    aget-object v25, v25, v12

    invoke-virtual/range {v25 .. v25}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move-object/from16 v25, v0

    aget v21, v25, v12

    .line 2639
    .local v21, subtypeId:I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    if-eqz v21, :cond_6

    :cond_5
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 2642
    :cond_6
    move v7, v12

    .line 2633
    .end local v21           #subtypeId:I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2646
    .end local v17           #item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :cond_8
    const/16 v25, 0x0

    sget-object v27, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v28, 0x101005d

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2649
    .local v5, a:Landroid/content/res/TypedArray;
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v25

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v27, Lcom/android/server/InputMethodManagerService$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2658
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v27, "layout_inflater"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 2661
    .local v15, inflater:Landroid/view/LayoutInflater;
    const v25, 0xc090432

    const/16 v27, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 2663
    .local v24, tv:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2666
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v25, v0

    const v27, 0x102029f

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x0

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 2674
    .local v20, res:Landroid/content/res/Resources;
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v22

    .line 2675
    .local v22, textColor:I
    if-eqz v22, :cond_9

    .line 2676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v25, v0

    const v27, 0x102025a

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 2677
    .local v23, title:Landroid/widget/TextView;
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2681
    .end local v23           #title:Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v25, v0

    const v27, 0x10202a0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Switch;

    .line 2683
    .local v11, hardKeySwitch:Landroid/widget/Switch;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardEnabled()Z

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2684
    new-instance v25, Lcom/android/server/InputMethodManagerService$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2693
    new-instance v6, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    const v25, 0x10900ca

    move/from16 v0, v25

    invoke-direct {v6, v8, v0, v13, v7}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 2697
    .local v6, adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v25, v0

    new-instance v27, Lcom/android/server/InputMethodManagerService$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2720
    if-eqz p1, :cond_a

    if-nez v16, :cond_a

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v25, v0

    const v27, 0x1040459

    new-instance v28, Lcom/android/server/InputMethodManagerService$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2730
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    const/16 v27, 0x7dc

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x10

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    const-string v27, "Select input method"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog;->show()V

    .line 2738
    monitor-exit v26

    goto/16 :goto_0

    .end local v4           #N:I
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v7           #checkedItem:I
    .end local v11           #hardKeySwitch:Landroid/widget/Switch;
    .end local v12           #i:I
    .end local v13           #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    .end local v14           #immis:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v20           #res:Landroid/content/res/Resources;
    .end local v22           #textColor:I
    .end local v24           #tv:Landroid/view/View;
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 2667
    .restart local v4       #N:I
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v7       #checkedItem:I
    .restart local v12       #i:I
    .restart local v13       #imList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    .restart local v14       #immis:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v15       #inflater:Landroid/view/LayoutInflater;
    .restart local v24       #tv:Landroid/view/View;
    :cond_b
    const/16 v25, 0x8

    goto/16 :goto_2
.end method

.method private showInputMethodSubtypeMenu()V
    .locals 1

    .prologue
    .line 2571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenuInternal(Z)V

    .line 2572
    return-void
.end method

.method private switchUserLocked(I)V
    .locals 2
    .parameter "newUserId"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->setCurrentUserId(I)V

    .line 798
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 799
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetAllInternalStateLocked(Z)V

    .line 800
    return-void
.end method

.method private updateImeWindowStatusLocked()V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 921
    return-void
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 9
    .parameter "client"
    .parameter "inputContext"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1032
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v0, Lcom/android/server/InputMethodManagerService$ClientState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;
    .locals 6
    .parameter "initial"

    .prologue
    .line 1101
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1107
    .local v0, session:Lcom/android/server/InputMethodManagerService$SessionState;
    if-eqz p1, :cond_3

    .line 1108
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1114
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v1, :cond_2

    .line 1115
    sget-boolean v1, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InputMethodManagerService"

    const-string v2, "Attach new input asks to show input"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1118
    :cond_2
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    return-object v1

    .line 1111
    :cond_3
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7da

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    goto :goto_0
.end method

.method buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2492
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-boolean v17, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v17, :cond_0

    .line 2493
    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--- re-buildInputMethodList , \n ------ \n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->getStackTrace()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 2496
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->clear()V

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2500
    .local v13, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 2501
    .local v5, config:Landroid/content/res/Configuration;
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v9, 0x1

    .line 2502
    .local v9, haveHardKeyboard:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getDisabledSystemInputMethods()Ljava/lang/String;

    move-result-object v7

    .line 2503
    .local v7, disabledSysImes:Ljava/lang/String;
    if-nez v7, :cond_1

    const-string v7, ""

    .line 2505
    :cond_1
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.view.InputMethod"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getCurrentUserId()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v15

    .line 2509
    .local v15, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 2511
    .local v3, additionalSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 2512
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 2513
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    .line 2514
    .local v16, si:Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    .local v4, compName:Landroid/content/ComponentName;
    const-string v17, "android.permission.BIND_INPUT_METHOD"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 2517
    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skipping input method "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": it does not require the permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2501
    .end local v3           #additionalSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v4           #compName:Landroid/content/ComponentName;
    .end local v7           #disabledSysImes:Ljava/lang/String;
    .end local v9           #haveHardKeyboard:Z
    .end local v10           #i:I
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v15           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #si:Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2523
    .restart local v3       #additionalSubtypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v4       #compName:Landroid/content/ComponentName;
    .restart local v7       #disabledSysImes:Ljava/lang/String;
    .restart local v9       #haveHardKeyboard:Z
    .restart local v10       #i:I
    .restart local v14       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v15       #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #si:Landroid/content/pm/ServiceInfo;
    :cond_4
    sget-boolean v17, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Checking "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_5
    :try_start_0
    new-instance v12, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v14, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    .line 2527
    .local v12, p:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 2529
    .local v11, id:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Lcom/android/server/InputMethodManagerService;->isValidSystemDefaultIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v12}, Lcom/android/server/InputMethodManagerService;->isSystemImeThatHasEnglishSubtype(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_8

    .line 2536
    :cond_7
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 2539
    :cond_8
    sget-boolean v17, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v17, :cond_2

    .line 2540
    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Found a third-party input method "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 2543
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #p:Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v8

    .line 2544
    .local v8, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to load input method "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2545
    .end local v8           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v8

    .line 2546
    .local v8, e:Ljava/io/IOException;
    const-string v17, "InputMethodManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to load input method "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2550
    .end local v4           #compName:Landroid/content/ComponentName;
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    .end local v16           #si:Landroid/content/pm/ServiceInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v6

    .line 2551
    .local v6, defaultImiId:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2552
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 2553
    const-string v17, "InputMethodManagerService"

    const-string v18, "Default IME is uninstalled. Choose new default IME."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2555
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked()V

    .line 2562
    :cond_a
    :goto_3
    return-void

    .line 2559
    :cond_b
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_3
.end method

.method clearCurMethodLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1371
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_1

    .line 1372
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1373
    .local v0, cs:Lcom/android/server/InputMethodManagerService$ClientState;
    iput-boolean v4, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1374
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSession(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 1375
    iput-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    goto :goto_0

    .line 1378
    .end local v0           #cs:Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->finishSession(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 1379
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1380
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 1382
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    if-eqz v2, :cond_2

    .line 1383
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    const-string v3, "ime"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1385
    :cond_2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 4122
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.DUMP"

    invoke-virtual {v11, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    .line 4125
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    :goto_0
    return-void

    .line 4132
    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mArgs:[Ljava/lang/String;

    .line 4133
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/InputMethodManagerService;->mNextArg:I

    .line 4135
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v11, v0

    if-lez v11, :cond_1

    .line 4136
    const/4 v11, 0x0

    aget-object v9, p3, v11

    .line 4137
    .local v9, option:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_1

    .line 4138
    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v9}, Lcom/android/server/InputMethodManagerService;->handleDebugCmd(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 4147
    .end local v9           #option:Ljava/lang/String;
    :cond_1
    new-instance v10, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4149
    .local v10, p:Landroid/util/Printer;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 4150
    :try_start_0
    const-string v11, "Current Input Method Manager state:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4151
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4152
    .local v1, N:I
    const-string v11, "  Input Methods:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4153
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 4154
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 4155
    .local v7, info:Landroid/view/inputmethod/InputMethodInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  InputMethod #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4156
    const-string v11, "    "

    invoke-virtual {v7, v10, v11}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4158
    .end local v7           #info:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const-string v11, "  Clients:"

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4159
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4160
    .local v2, ci:Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Client "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4161
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    client="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4162
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    inputContext="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4163
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    sessionRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4164
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    curSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4182
    .end local v1           #N:I
    .end local v2           #ci:Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 4166
    .restart local v1       #N:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurMethodId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4167
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4168
    .local v3, client:Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurClient="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mCurSeq="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4169
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurFocusedWindow="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4170
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurId="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mHaveConnect="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mBoundToMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurToken="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4173
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurIntent="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4174
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4175
    .local v8, method:Lcom/android/internal/view/IInputMethod;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mCurMethod="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4176
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mEnabledSession="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mShowRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mShowExplicitlyRequested="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mShowForced="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mInputShown="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4181
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  mSystemReady="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " mScreenOn="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v13, p0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4182
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4184
    const-string v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4185
    if-eqz v3, :cond_4

    .line 4186
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 4188
    :try_start_2
    iget-object v11, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v11}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4196
    :goto_3
    const-string v11, " "

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4197
    if-eqz v8, :cond_5

    .line 4198
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    .line 4200
    :try_start_3
    invoke-interface {v8}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v11, p1, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4201
    :catch_0
    move-exception v4

    .line 4202
    .local v4, e:Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input method service dead: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4189
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 4190
    .restart local v4       #e:Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input method client dead: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4193
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v11, "No input method client."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 4205
    :cond_5
    const-string v11, "No input method service."

    invoke-interface {v10, v11}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .parameter "target"
    .parameter "msg"

    .prologue
    .line 1048
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1054
    :goto_0
    return-void

    .line 1051
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1052
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_0
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 1282
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .prologue
    .line 3233
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3234
    const/4 v0, 0x0

    .line 3237
    :goto_0
    return-object v0

    .line 3236
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3237
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 3238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 985
    :goto_0
    return-object v0

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 985
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 2
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1021
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .locals 3
    .parameter "imi"
    .parameter "allowsImplicitlySelectedSubtypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1003
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1005
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/List;

    move-result-object v0

    .line 1007
    .local v0, enabledSubtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, p1}, Lcom/android/server/InputMethodManagerService;->getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1010
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/view/inputmethod/InputMethodSubtype;->sort(Landroid/content/Context;ILandroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 974
    :goto_0
    return-object v0

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 974
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2146
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v6

    .line 2164
    :goto_0
    return-object v5

    .line 2149
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 2150
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 2152
    .local v1, lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2153
    :cond_1
    monitor-exit v7

    move-object v5, v6

    goto :goto_0

    .line 2154
    :cond_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2155
    .local v2, lastImi:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 2157
    :cond_3
    :try_start_1
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2158
    .local v3, lastSubtypeHash:I
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v4

    .line 2159
    .local v4, lastSubtypeId:I
    if-ltz v4, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-lt v4, v5, :cond_5

    .line 2160
    :cond_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 2162
    :cond_5
    :try_start_3
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    :try_start_4
    monitor-exit v7

    goto :goto_0

    .line 2166
    .end local v1           #lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #lastImi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v3           #lastSubtypeHash:I
    .end local v4           #lastSubtypeId:I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2163
    .restart local v1       #lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #lastImi:Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v0

    .line 2164
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v6

    goto :goto_0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 8

    .prologue
    .line 3296
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 3297
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3298
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 3302
    const-string v6, "voice"

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 3305
    .local v3, info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v3, :cond_0

    .line 3306
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3307
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3309
    :cond_0
    monitor-exit v7

    .line 3317
    .end local v3           #info:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_0
    return-object v4

    .line 3311
    :cond_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3312
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3313
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 3314
    .local v5, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3318
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v4           #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3317
    .restart local v4       #ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2294
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v5, v4

    .line 2426
    :goto_0
    return v5

    .line 2296
    :sswitch_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu()V

    goto :goto_0

    .line 2300
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showInputMethodSubtypeMenu()V

    goto :goto_0

    .line 2304
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2305
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 2310
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    goto :goto_0

    .line 2317
    :sswitch_4
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2318
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2323
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2325
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_a

    .line 2328
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 2331
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2333
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v3, v6, v4}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9

    .line 2337
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 2340
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2342
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_3
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    const/4 v6, 0x0

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v3, v6, v4}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 2346
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 2349
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2351
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_4
    sget-boolean v3, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending attach of token: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_0
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    .line 2355
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2358
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2360
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_5
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputMethodCallback;

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Lcom/android/internal/view/IInputMethodCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 2364
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2369
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2371
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_6
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2372
    .local v2, session:Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2373
    iget-object v6, v2, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v6, v3, v4}, Lcom/android/internal/view/IInputMethod;->startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2377
    .end local v2           #session:Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2380
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2382
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_7
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2383
    .restart local v2       #session:Lcom/android/server/InputMethodManagerService$SessionState;
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2384
    iget-object v6, v2, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v6, v3, v4}, Lcom/android/internal/view/IInputMethod;->restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2388
    .end local v2           #session:Lcom/android/server/InputMethodManagerService$SessionState;
    :goto_7
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2395
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    :try_start_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 2396
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 2401
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2403
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :try_start_9
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/InputBindResult;

    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 2408
    :goto_8
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 2405
    :catch_2
    move-exception v1

    .line 2406
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Client died receiving input method "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2412
    .end local v0           #args:Lcom/android/internal/os/SomeArgs;
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_e
    :try_start_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    invoke-interface {v3, v4}, Lcom/android/internal/view/IInputMethodClient;->setActive(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 2413
    :catch_3
    move-exception v1

    .line 2414
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2422
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_f
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_3

    move v3, v5

    :goto_9
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v5, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v6, v3, v4}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(ZZ)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_9

    .line 2386
    .restart local v0       #args:Lcom/android/internal/os/SomeArgs;
    :catch_4
    move-exception v3

    goto/16 :goto_7

    .line 2375
    :catch_5
    move-exception v3

    goto/16 :goto_6

    .line 2362
    :catch_6
    move-exception v3

    goto/16 :goto_5

    .line 2353
    :catch_7
    move-exception v3

    goto/16 :goto_4

    .line 2344
    :catch_8
    move-exception v3

    goto/16 :goto_3

    .line 2335
    :catch_9
    move-exception v3

    goto/16 :goto_2

    .line 2326
    :catch_a
    move-exception v3

    goto/16 :goto_1

    .line 2294
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3f2 -> :sswitch_5
        0x3fc -> :sswitch_6
        0x406 -> :sswitch_7
        0x410 -> :sswitch_8
        0x41a -> :sswitch_9
        0x7d0 -> :sswitch_a
        0x7da -> :sswitch_b
        0xbb8 -> :sswitch_c
        0xbc2 -> :sswitch_d
        0xbcc -> :sswitch_e
        0xfa0 -> :sswitch_f
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 6
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v1, 0x0

    .line 1814
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v2, :cond_2

    .line 1816
    :cond_0
    sget-boolean v2, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "InputMethodManagerService"

    const-string v3, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 1841
    :goto_0
    return v0

    .line 1820
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v2, :cond_4

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4

    .line 1821
    sget-boolean v2, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "InputMethodManagerService"

    const-string v3, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 1823
    goto :goto_0

    .line 1826
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_6

    .line 1827
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x406

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1829
    const/4 v0, 0x1

    .line 1833
    .local v0, res:Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v2, :cond_5

    .line 1834
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1835
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 1837
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 1838
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 1839
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 1840
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    goto :goto_0

    .line 1831
    .end local v0           #res:Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #res:Z
    goto :goto_1
.end method

.method hideInputMethodMenu()V
    .locals 2

    .prologue
    .line 2841
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2842
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 2843
    monitor-exit v1

    .line 2844
    return-void

    .line 2843
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideInputMethodMenuLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2847
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Hide switching menu"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2850
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2851
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 2854
    :cond_1
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2855
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 2856
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 6
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 2233
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2236
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2237
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_3

    .line 2238
    :cond_1
    sget-boolean v2, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring hideInputMethod of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 2248
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2242
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2244
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2246
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2248
    monitor-exit v3

    goto :goto_0

    .line 2246
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9
    .parameter "client"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v4, 0x0

    .line 1780
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1806
    :goto_0
    return v4

    .line 1783
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1784
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1786
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1787
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 1793
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1794
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring hideSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1797
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1809
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V

    .line 1801
    monitor-exit v5

    goto :goto_1

    .line 1807
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1809
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1805
    :cond_2
    :try_start_6
    sget-boolean v4, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "InputMethodManagerService"

    const-string v6, "Client requesting input be hidden"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public notifyImsDump(Z)V
    .locals 4
    .parameter "IsANRDump"

    .prologue
    .line 4334
    if-eqz p1, :cond_0

    .line 4335
    :try_start_0
    sget v1, Lcom/android/server/InputMethodManagerService;->mImsPid:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 4339
    :goto_0
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump IMS pid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/InputMethodManagerService;->mImsPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    :goto_1
    return-void

    .line 4337
    :cond_0
    sget v1, Lcom/android/server/InputMethodManagerService;->mImsPid:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/os/Process;->sendSignal(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4341
    :catch_0
    move-exception v0

    .line 4342
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InputMethodManagerService"

    const-string v2, "Dump IMS exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9
    .parameter "span"
    .parameter "originalString"
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    .line 1577
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1604
    :goto_0
    return v6

    .line 1580
    :cond_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 1581
    :try_start_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v8, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1583
    .local v5, targetImi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v5, :cond_3

    .line 1584
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v4

    .line 1585
    .local v4, suggestions:[Ljava/lang/String;
    if-ltz p3, :cond_1

    array-length v8, v4

    if-lt p3, v8, :cond_2

    :cond_1
    monitor-exit v7

    goto :goto_0

    .line 1603
    .end local v4           #suggestions:[Ljava/lang/String;
    .end local v5           #targetImi:Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1586
    .restart local v4       #suggestions:[Ljava/lang/String;
    .restart local v5       #targetImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, className:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1590
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    const-string v6, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    const-string v6, "before"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    const-string v6, "after"

    aget-object v8, v4, p3

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1594
    const-string v6, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v8

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1597
    .local v1, ident:J
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1599
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_0

    .line 1599
    :catchall_1
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1603
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #ident:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #suggestions:[Ljava/lang/String;
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 1289
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 1290
    const-string v0, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 1292
    monitor-exit v1

    .line 1306
    :goto_0
    return-void

    .line 1294
    :cond_0
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initiating attach with token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1297
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_3

    .line 1298
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating first session while with client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x41a

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v5, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-direct {v5, v6, p0}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/internal/view/IInputMethod;Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1305
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "name"

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1390
    :try_start_0
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCurIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 1397
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 1398
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 1399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 1400
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1405
    :cond_1
    monitor-exit v1

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .parameter "method"
    .parameter "session"

    .prologue
    .line 1309
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v3, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1315
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1316
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 1317
    .local v0, res:Lcom/android/internal/view/InputBindResult;
    iget-object v1, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1323
    .end local v0           #res:Lcom/android/internal/view/InputBindResult;
    :cond_0
    monitor-exit v2

    .line 1324
    return-void

    .line 1323
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 854
    :catch_0
    move-exception v0

    .line 857
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 858
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 860
    :cond_0
    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 6
    .parameter "spans"

    .prologue
    .line 1560
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1573
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1564
    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1565
    .local v0, currentImi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1566
    aget-object v2, p1, v1

    .line 1567
    .local v2, ss:Landroid/text/style/SuggestionSpan;
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1568
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1565
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1572
    .end local v2           #ss:Landroid/text/style/SuggestionSpan;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #currentImi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 10
    .parameter "imiId"
    .parameter "subtypes"

    .prologue
    .line 2171
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p2

    if-eqz v7, :cond_0

    .line 2177
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2178
    :try_start_0
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 2179
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v4, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 2202
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2182
    .restart local v4       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 2187
    .local v5, packageInfos:[Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2188
    :try_start_2
    array-length v6, v5

    .line 2189
    .local v6, packageNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 2190
    aget-object v7, v5, v1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2191
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v7, v4, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 2194
    .local v2, ident:J
    :try_start_3
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v7, v9}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2196
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2198
    monitor-exit v8

    goto :goto_0

    .line 2183
    .end local v1           #i:I
    .end local v2           #ident:J
    .end local v5           #packageInfos:[Ljava/lang/String;
    .end local v6           #packageNum:I
    :catch_0
    move-exception v0

    .line 2184
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "InputMethodManagerService"

    const-string v9, "Failed to get package infos"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    monitor-exit v8

    goto :goto_0

    .line 2196
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v2       #ident:J
    .restart local v5       #packageInfos:[Ljava/lang/String;
    .restart local v6       #packageNum:I
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2189
    .end local v2           #ident:J
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2202
    .end local v1           #i:I
    .end local v6           #packageNum:I
    :cond_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 6
    .parameter "subtype"

    .prologue
    const/4 v2, 0x0

    .line 3324
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3336
    :goto_0
    return v2

    .line 3327
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3328
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 3329
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3330
    .local v0, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3331
    .local v1, subtypeId:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 3332
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3333
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 3337
    .end local v0           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v1           #subtypeId:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3336
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_3

    .line 2273
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1

    .line 2275
    :try_start_0
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2281
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2283
    :try_start_1
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :cond_2
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2289
    :cond_3
    :goto_1
    return-void

    .line 2286
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2278
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 19
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 1501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1503
    .local v4, ident:J
    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-eq v12, v0, :cond_1

    .line 1504
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1505
    .local v11, uid:I
    const-string v12, "InputMethodManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring setImeWindowStatus of uid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1554
    .end local v11           #uid:I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    return-void

    .line 1509
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1510
    :try_start_2
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 1511
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 1512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    if-eqz v12, :cond_2

    .line 1513
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/server/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1515
    :cond_2
    and-int/lit8 v12, p2, 0x1

    if-eqz v12, :cond_5

    const/4 v3, 0x1

    .line 1516
    .local v3, iconVisibility:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 1517
    .local v6, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->needsToShowImeSwitchOngoingNotification()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1520
    .local v8, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v14, 0x1040458

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1522
    .local v10, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1523
    .local v7, imiLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v12, :cond_7

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v15, 0x1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, ""

    :goto_2
    aput-object v12, v14, v15

    invoke-static {v14}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1530
    .local v9, summary:Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12, v14, v10, v9, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1532
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_4

    .line 1533
    sget-boolean v12, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 1534
    const-string v12, "InputMethodManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--- show notification: label =  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", summary = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x0

    const v15, 0x1040458

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification;

    move-object/from16 v16, v0

    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v14, v15, v0, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1540
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1552
    .end local v7           #imiLabel:Ljava/lang/CharSequence;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #summary:Ljava/lang/CharSequence;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_4
    :goto_4
    monitor-exit v13

    goto/16 :goto_0

    .end local v3           #iconVisibility:Z
    .end local v6           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1554
    :catchall_1
    move-exception v12

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 1515
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1523
    .restart local v3       #iconVisibility:Z
    .restart local v6       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v7       #imiLabel:Ljava/lang/CharSequence;
    .restart local v8       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " - "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_7
    move-object v9, v7

    goto :goto_3

    .line 1543
    .end local v7           #imiLabel:Ljava/lang/CharSequence;
    .end local v8           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v12, :cond_4

    .line 1544
    sget-boolean v12, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v12, :cond_9

    .line 1545
    const-string v12, "InputMethodManagerService"

    const-string v14, "--- hide notification"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x0

    const v15, 0x1040458

    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1549
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "id"

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    :goto_0
    return-void

    .line 2024
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .parameter "token"
    .parameter "id"
    .parameter "subtype"

    .prologue
    .line 2029
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2033
    if-eqz p3, :cond_1

    .line 2034
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2039
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2037
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 2863
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2864
    const/4 v2, 0x0

    .line 2877
    :goto_0
    return v2

    .line 2866
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2867
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2870
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2881
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2875
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2877
    .local v0, ident:J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 2879
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2877
    monitor-exit v3

    goto :goto_0

    .line 2879
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 9
    .parameter "id"
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2886
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2887
    .local v3, imm:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_0

    .line 2888
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2891
    :cond_0
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    #calls: Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->access$1600(Lcom/android/server/InputMethodManagerService$InputMethodSettings;)Ljava/util/List;

    move-result-object v1

    .line 2894
    .local v1, enabledInputMethodsList:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz p2, :cond_3

    .line 2895
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2896
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    .line 2920
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    return v6

    .line 2902
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v6, p1, v8}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    move v6, v8

    .line 2904
    goto :goto_0

    .line 2906
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2907
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v6, v0, v1, p1}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2910
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v6}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 2911
    .local v5, selId:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2912
    const-string v6, "InputMethodManagerService"

    const-string v8, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    :cond_4
    move v6, v7

    .line 2916
    goto :goto_0

    .end local v5           #selId:Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 2920
    goto :goto_0
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 11
    .parameter "id"
    .parameter "subtypeId"

    .prologue
    .line 1634
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1635
    .local v3, info:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_0

    .line 1636
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1640
    :cond_0
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1641
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    .line 1642
    .local v7, subtypeCount:I
    if-gtz v7, :cond_2

    .line 1694
    .end local v7           #subtypeCount:I
    :cond_1
    :goto_0
    return-void

    .line 1645
    .restart local v7       #subtypeCount:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 1647
    .local v6, oldSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_4

    if-ge p2, v7, :cond_4

    .line 1648
    invoke-virtual {v3, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 1654
    .local v5, newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    if-eqz v5, :cond_3

    if-nez v6, :cond_5

    .line 1655
    :cond_3
    const-string v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Illegal subtype state: old subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new subtype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1652
    .end local v5           #newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .restart local v5       #newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 1659
    :cond_5
    if-eq v5, v6, :cond_1

    .line 1660
    const/4 v8, 0x1

    invoke-direct {p0, v3, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1661
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v8, :cond_1

    .line 1663
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V

    .line 1664
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v8, v5}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to call changeInputMethodSubtype"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1674
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #newSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6           #oldSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7           #subtypeCount:I
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1678
    .local v1, ident:J
    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v3, p2, v8}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1682
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 1684
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1685
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v4, intent:Landroid/content/Intent;
    const/high16 v8, 0x2000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1687
    const-string v8, "input_method_id"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1690
    .end local v4           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1692
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 9
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1730
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 1731
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    .line 1732
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 1734
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 1735
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 1736
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 1739
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 1774
    :cond_2
    :goto_0
    return v0

    .line 1743
    :cond_3
    const/4 v0, 0x0

    .line 1744
    .local v0, res:Z
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_5

    .line 1745
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3fc

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1748
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 1749
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-nez v1, :cond_4

    .line 1750
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v1, v2, v8}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1752
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 1754
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1755
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    .line 1761
    const/16 v2, 0x7d00

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v8

    const/4 v1, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1763
    const-string v1, "InputMethodManagerService"

    const-string v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1765
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40000001

    invoke-direct {p0, v1, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 1768
    :cond_6
    sget-boolean v1, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1769
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t show input: connection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    add-long/2addr v3, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .parameter "client"
    .parameter "inputMethodId"

    .prologue
    .line 2045
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2048
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2049
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 2051
    :cond_1
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodAndSubtypeEnablerFromClient of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2055
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 4
    .parameter "client"

    .prologue
    .line 2003
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2017
    :goto_0
    return-void

    .line 2006
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2007
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 2009
    :cond_1
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2016
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 6
    .parameter "token"
    .parameter "flags"

    .prologue
    .line 2253
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2269
    :goto_0
    return-void

    .line 2256
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2257
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v2, p1, :cond_2

    .line 2258
    :cond_1
    const-string v2, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring showMySoftInput of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    monitor-exit v3

    goto :goto_0

    .line 2268
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2262
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2264
    .local v0, ident:J
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2266
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2268
    monitor-exit v3

    goto :goto_0

    .line 2266
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 9
    .parameter "client"
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    const/4 v4, 0x0

    .line 1699
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1722
    :goto_0
    return v4

    .line 1702
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1703
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1705
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1706
    :try_start_1
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v6}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 1712
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1713
    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring showSoftInput of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1714
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1725
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    monitor-exit v5

    goto :goto_1

    .line 1723
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1725
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1721
    :cond_2
    :try_start_6
    sget-boolean v4, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "InputMethodManagerService"

    const-string v6, "Client requesting input be shown"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public startInput(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .parameter "client"
    .parameter "inputContext"
    .parameter "attribute"
    .parameter "controlFlags"

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1268
    const/4 v2, 0x0

    .line 1273
    :goto_0
    return-object v2

    .line 1270
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 1271
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1273
    .local v0, ident:J
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 1275
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1273
    monitor-exit v3

    goto :goto_0

    .line 1277
    .end local v0           #ident:J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1275
    .restart local v0       #ident:J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1220
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 1261
    :goto_0
    return-object v1

    .line 1224
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 1227
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    goto :goto_0

    .line 1230
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1231
    .local v0, info:Landroid/view/inputmethod/InputMethodInfo;
    if-nez v0, :cond_2

    .line 1232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_2
    invoke-virtual {p0, v7, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    .line 1237
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1238
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1239
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040486

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1241
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_intent"

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1243
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40000001

    invoke-direct {p0, v1, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 1246
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 1247
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 1248
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 1250
    :try_start_0
    sget-boolean v1, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding window token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_3
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v4, 0x7db

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_1
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1257
    :cond_4
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1258
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure connecting to input method service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1261
    goto/16 :goto_0

    .line 1253
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method startInputLocked(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .parameter "client"
    .parameter "inputContext"
    .parameter "attribute"
    .parameter "controlFlags"

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 1148
    :goto_0
    return-object v1

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1129
    .local v0, cs:Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v0, :cond_1

    .line 1130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1141
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting input on non-focused client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    const/4 v1, 0x0

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v1

    .line 1148
    :cond_2
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    goto :goto_0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 10
    .parameter "cs"
    .parameter "inputContext"
    .parameter "attribute"
    .parameter "controlFlags"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1154
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 1216
    :goto_0
    return-object v0

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_2

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked()V

    .line 1162
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switching to client: client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v0, :cond_2

    .line 1167
    iget-object v3, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0xbcc

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1173
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1174
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_3

    iput v1, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1175
    :cond_3
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1176
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 1177
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1180
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1181
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_6

    .line 1184
    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(Z)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1167
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1184
    goto :goto_2

    .line 1187
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_b

    .line 1188
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_9

    .line 1189
    iget-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_8

    .line 1190
    iput-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1191
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new session for client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41a

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    new-instance v4, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-direct {v4, v5, p0}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/internal/view/IInputMethod;Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1198
    :cond_8
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1199
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    .line 1208
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1210
    :cond_a
    const/16 v0, 0x7d00

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1216
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .locals 22
    .parameter "token"

    .prologue
    .line 2060
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2061
    const/16 v17, 0x0

    .line 2123
    :goto_0
    return v17

    .line 2063
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2064
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v11

    .line 2066
    .local v11, lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_5

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 2071
    .local v12, lastImi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    const/16 v16, 0x0

    .line 2072
    .local v16, targetLastImiId:Ljava/lang/String;
    const/4 v15, -0x1

    .line 2073
    .local v15, subtypeId:I
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 2074
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2075
    .local v9, imiIdIsSame:Z
    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2076
    .local v13, lastSubtypeHash:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    const/4 v5, -0x1

    .line 2080
    .local v5, currentSubtypeHash:I
    :goto_2
    if-eqz v9, :cond_1

    if-eq v13, v5, :cond_2

    .line 2081
    :cond_1
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16           #targetLastImiId:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 2082
    .restart local v16       #targetLastImiId:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 2086
    .end local v5           #currentSubtypeHash:I
    .end local v9           #imiIdIsSame:Z
    .end local v13           #lastSubtypeHash:I
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/List;

    move-result-object v6

    .line 2091
    .local v6, enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v6, :cond_3

    .line 2092
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 2093
    .local v4, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2096
    .local v14, locale:Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    if-ge v7, v4, :cond_3

    .line 2097
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 2098
    .local v8, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v17

    if-lez v17, :cond_8

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v19

    const-string v20, "keyboard"

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v14, v3}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 2102
    .local v10, keyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_8

    .line 2103
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v16

    .line 2104
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/server/InputMethodManagerService;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v15

    .line 2106
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2115
    .end local v4           #N:I
    .end local v6           #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7           #i:I
    .end local v8           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v10           #keyboardSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14           #locale:Ljava/lang/String;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 2116
    sget-boolean v17, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v17, :cond_4

    .line 2117
    const-string v19, "InputMethodManagerService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Switch to: "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ", from: "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ", "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2121
    const/16 v17, 0x1

    monitor-exit v18

    goto/16 :goto_0

    .line 2125
    .end local v11           #lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #lastImi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v15           #subtypeId:I
    .end local v16           #targetLastImiId:Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 2069
    .restart local v11       #lastIme:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const/4 v12, 0x0

    .restart local v12       #lastImi:Landroid/view/inputmethod/InputMethodInfo;
    goto/16 :goto_1

    .line 2076
    .restart local v9       #imiIdIsSame:Z
    .restart local v13       #lastSubtypeHash:I
    .restart local v15       #subtypeId:I
    .restart local v16       #targetLastImiId:Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto/16 :goto_2

    .line 2093
    .end local v9           #imiIdIsSame:Z
    .end local v13           #lastSubtypeHash:I
    .restart local v4       #N:I
    .restart local v6       #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 2096
    .restart local v7       #i:I
    .restart local v8       #imi:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v14       #locale:Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 2123
    .end local v4           #N:I
    .end local v6           #enabled:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7           #i:I
    .end local v8           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v14           #locale:Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 6
    .parameter "token"
    .parameter "onlyCurrentIme"

    .prologue
    const/4 v2, 0x0

    .line 2130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2140
    :goto_0
    return v1

    .line 2133
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2134
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mImListManager:Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4, p2, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodAndSubtypeListManager;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    move-result-object v0

    .line 2136
    .local v0, nextSubtype:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    if-nez v0, :cond_1

    .line 2137
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 2139
    :cond_1
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2140
    const/4 v1, 0x1

    monitor-exit v3

    goto :goto_0

    .line 2141
    .end local v0           #nextSubtype:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Lcom/android/server/StatusBarManagerService;)V
    .locals 4
    .parameter "statusBar"

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 866
    :try_start_0
    sget-boolean v1, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 867
    const-string v1, "InputMethodManagerService"

    const-string v3, "--- systemReady"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 870
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 871
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 873
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 875
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 876
    const-string v1, "ime"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/android/server/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 877
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->updateImeWindowStatusLocked()V

    .line 878
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v3, 0x1110008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 880
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 885
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mImeSelectedOnBoot:Z

    if-nez v1, :cond_2

    .line 886
    const-string v1, "InputMethodManagerService"

    const-string v3, "Reset the default IME as \"Resource\" is ready here."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->checkCurrentLocaleChangedLocked()V

    .line 889
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 897
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "InputMethodManagerService"

    const-string v3, "Unexpected exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 896
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unbindCurrentClientLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1057
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_2

    .line 1058
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindCurrentInputLocked: client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_1

    .line 1061
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1062
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbcc

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1072
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 1077
    :cond_2
    return-void
.end method

.method unbindCurrentMethodLocked(ZZ)V
    .locals 5
    .parameter "reportToClient"
    .parameter "savePosition"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1327
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1329
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 1332
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1334
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 1339
    :try_start_0
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_2
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1342
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->saveLastInputMethodWindowForTransition()V

    .line 1344
    :cond_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    :goto_0
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 1350
    :cond_4
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 1353
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_5

    .line 1354
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xbb8

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1357
    :cond_5
    return-void

    .line 1345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method updateFromSettingsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1612
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1615
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1617
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1619
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    :goto_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1631
    :goto_1
    return-void

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 1623
    invoke-virtual {p0, v6, v5}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_0

    .line 1628
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    iput-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 1629
    invoke-virtual {p0, v6, v5}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(ZZ)V

    goto :goto_1
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 12
    .parameter "token"
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 1410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1411
    .local v10, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1413
    .local v7, ident:J
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_1

    .line 1414
    :cond_0
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setInputMethod of uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1445
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    return-void

    .line 1418
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1419
    if-nez p3, :cond_4

    .line 1420
    :try_start_2
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "InputMethodManagerService"

    const-string v1, "hide the small icon for the input method"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    if-eqz v0, :cond_3

    .line 1422
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    const-string v1, "ime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1443
    :cond_3
    :goto_1
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1445
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1424
    :cond_4
    if-eqz p2, :cond_3

    .line 1425
    :try_start_4
    sget-boolean v0, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "InputMethodManagerService"

    const-string v1, "show a small icon for the input method"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1426
    :cond_5
    const/4 v6, 0x0

    .line 1429
    .local v6, contentDescription:Ljava/lang/CharSequence;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1430
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/server/InputMethodManagerService$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    .line 1436
    .end local v9           #packageManager:Landroid/content/pm/PackageManager;
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    if-eqz v0, :cond_3

    .line 1437
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    const-string v1, "ime"

    const/4 v4, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    const-string v1, "ime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1437
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1433
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public windowGainedFocus(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;)Lcom/android/internal/view/InputBindResult;
    .locals 14
    .parameter "client"
    .parameter "windowToken"
    .parameter "controlFlags"
    .parameter "softInputMode"
    .parameter "windowFlags"
    .parameter "attribute"
    .parameter "inputContext"

    .prologue
    .line 1848
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1849
    const/4 v9, 0x0

    .line 1998
    :goto_0
    return-object v9

    .line 1851
    :cond_0
    const/4 v9, 0x0

    .line 1852
    .local v9, res:Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1854
    .local v6, ident:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1855
    :try_start_1
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "windowGainedFocus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " controlFlags=#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " softInputMode=#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " windowFlags=#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1863
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 1864
    const-string v10, "InputMethodManagerService"

    const-string v12, "Window may NOT use IME, hide keyboard"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_1
    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1868
    const/4 v10, 0x0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1995
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v9, v10

    .line 1868
    goto :goto_0

    .line 1872
    :cond_2
    :try_start_2
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1873
    .local v3, cs:Lcom/android/server/InputMethodManagerService$ClientState;
    if-nez v3, :cond_3

    .line 1874
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown client "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1993
    .end local v3           #cs:Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1995
    :catchall_1
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1879
    .restart local v3       #cs:Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_3
    :try_start_4
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v12, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v10, v12}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1885
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Focus gain on non-focused client "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1887
    const/4 v10, 0x0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1995
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v9, v10

    .line 1887
    goto/16 :goto_0

    .line 1889
    :catch_0
    move-exception v10

    .line 1892
    :cond_4
    :try_start_6
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p2

    if-ne v10, v0, :cond_6

    .line 1893
    const-string v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Window already focused, ignoring focus gain of: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " attribute="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", token = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    if-eqz p6, :cond_5

    .line 1896
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v10

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1995
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v9, v10

    .line 1896
    goto/16 :goto_0

    .line 1899
    :cond_5
    const/4 v10, 0x0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1995
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v9, v10

    .line 1899
    goto/16 :goto_0

    .line 1901
    :cond_6
    :try_start_8
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 1910
    move/from16 v0, p4

    and-int/lit16 v10, v0, 0xf0

    const/16 v12, 0x10

    if-eq v10, v12, :cond_7

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    const/4 v12, 0x3

    invoke-virtual {v10, v12}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_7
    const/4 v5, 0x1

    .line 1915
    .local v5, doAutoShow:Z
    :goto_1
    and-int/lit8 v10, p3, 0x2

    if-eqz v10, :cond_b

    const/4 v8, 0x1

    .line 1922
    .local v8, isTextEditor:Z
    :goto_2
    const/4 v4, 0x0

    .line 1924
    .local v4, didStart:Z
    and-int/lit8 v10, p4, 0xf

    packed-switch v10, :pswitch_data_0

    .line 1989
    :cond_8
    :goto_3
    :pswitch_0
    if-nez v4, :cond_9

    if-eqz p6, :cond_9

    .line 1990
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v9

    .line 1993
    :cond_9
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1995
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1910
    .end local v4           #didStart:Z
    .end local v5           #doAutoShow:Z
    .end local v8           #isTextEditor:Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    .line 1915
    .restart local v5       #doAutoShow:Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    .line 1926
    .restart local v4       #didStart:Z
    .restart local v8       #isTextEditor:Z
    :pswitch_1
    if-eqz v8, :cond_c

    if-nez v5, :cond_e

    .line 1927
    :cond_c
    :try_start_9
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1931
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string v10, "InputMethodManagerService"

    const-string v12, "Unspecified window will hide input"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_d
    const/4 v10, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_3

    .line 1934
    :cond_e
    if-eqz v8, :cond_8

    if-eqz v5, :cond_8

    move/from16 v0, p4

    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 1943
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_f

    const-string v10, "InputMethodManagerService"

    const-string v12, "Unspecified window will show input"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_f
    if-eqz p6, :cond_10

    .line 1945
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v9

    .line 1947
    const/4 v4, 0x1

    .line 1949
    :cond_10
    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_3

    .line 1956
    :pswitch_2
    move/from16 v0, p4

    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 1958
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_11

    const-string v10, "InputMethodManagerService"

    const-string v12, "Window asks to hide input going forward"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_11
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_3

    .line 1963
    :pswitch_3
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_12

    const-string v10, "InputMethodManagerService"

    const-string v12, "Window asks to hide input"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_12
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_3

    .line 1967
    :pswitch_4
    move/from16 v0, p4

    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    .line 1969
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_13

    const-string v10, "InputMethodManagerService"

    const-string v12, "Window asks to show input going forward"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_13
    if-eqz p6, :cond_14

    .line 1971
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v9

    .line 1973
    const/4 v4, 0x1

    .line 1975
    :cond_14
    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_3

    .line 1979
    :pswitch_5
    sget-boolean v10, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v10, :cond_15

    const-string v10, "InputMethodManagerService"

    const-string v12, "Window asks to always show input"

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_15
    if-eqz p6, :cond_16

    .line 1981
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move/from16 v2, p3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v9

    .line 1983
    const/4 v4, 0x1

    .line 1985
    :cond_16
    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 1924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
