.class Lcom/android/server/am/CheckUserPermissionDialog;
.super Landroid/app/AlertDialog;
.source "CheckUserPermissionDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;
    }
.end annotation


# static fields
.field static final ALLOW:I = 0x1

.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field static final DENY:I = 0x3

.field static final REMEBER:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentApp:Ljava/lang/String;

.field private mDisableCountDown:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/String;

.field private mRememberChoice:Z

.field private mSecondsCountdown:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

.field private sCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 12
    .parameter "context"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 69
    new-instance v0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 242
    new-instance v0, Lcom/android/server/am/CheckUserPermissionDialog$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/CheckUserPermissionDialog$3;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 172
    iput-object p2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mMessage:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 175
    const/16 v7, 0xa

    .line 176
    .local v7, countSeconds:I
    const/16 v10, 0x3e8

    .line 177
    .local v10, millisSeconds:I
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    .line 178
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const v1, 0x1040561

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/android/server/am/CheckUserPermissionDialog$2;

    iget v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/CheckUserPermissionDialog$2;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 202
    const-string v0, "NEW CheckUserPermissionDialog"

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 205
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x10900b0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 207
    .local v9, layout:Landroid/view/View;
    const v0, 0x1020358

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .local v11, rememberChoice:Landroid/widget/CheckBox;
    move-object v0, p3

    .line 209
    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    invoke-virtual {p0, v9}, Lcom/android/server/am/CheckUserPermissionDialog;->setView(Landroid/view/View;)V

    .line 211
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->setIcon(I)V

    .line 212
    const v0, 0x1040014

    invoke-virtual {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->setTitle(I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040482

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 217
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 228
    .local v6, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 229
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->show()V

    .line 231
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 14
    .parameter "service"
    .parameter "context"
    .parameter "checkInfo"

    .prologue
    .line 100
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 69
    new-instance v1, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 242
    new-instance v1, Lcom/android/server/am/CheckUserPermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CheckUserPermissionDialog$3;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;)V

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 102
    const-string v1, "appWant"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 103
    .local v7, appWant:Ljava/lang/String;
    const-string v1, "message"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mMessage:Ljava/lang/String;

    .line 104
    iput-object v7, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 107
    const/16 v9, 0x10

    .line 108
    .local v9, countSeconds:I
    const/16 v12, 0x3e8

    .line 109
    .local v12, millisSeconds:I
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    .line 110
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const v2, 0x1040561

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->recordInentOpenCamera(Ljava/lang/String;)Z

    .line 113
    new-instance v1, Lcom/android/server/am/CheckUserPermissionDialog$1;

    iget v2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CheckUserPermissionDialog$1;-><init>(Lcom/android/server/am/CheckUserPermissionDialog;JJ)V

    invoke-virtual {v1}, Lcom/android/server/am/CheckUserPermissionDialog$1;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 137
    const-string v1, "NEW CheckUserPermissionDialog"

    invoke-direct {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 140
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900b0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 142
    .local v11, layout:Landroid/view/View;
    const v1, 0x1020358

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 144
    .local v13, rememberChoice:Landroid/widget/CheckBox;
    invoke-virtual {v13, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    invoke-virtual {p0, v11}, Lcom/android/server/am/CheckUserPermissionDialog;->setView(Landroid/view/View;)V

    .line 146
    const v1, 0x1080027

    invoke-virtual {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->setIcon(I)V

    .line 147
    const v1, 0x1040014

    invoke-virtual {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->setTitle(I)V

    .line 148
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 149
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const v3, 0x1040482

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 152
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 163
    .local v8, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 164
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->show()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/CheckUserPermissionDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/CheckUserPermissionDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/am/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/CheckUserPermissionDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/CheckUserPermissionDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mRememberChoice:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/CheckUserPermissionDialog;->saveSystemSecurityCheck(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 395
    const-string v0, "AmoiSystemSecurity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string v0, "AmoiSystemSecurity"

    const-string v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordInentOpenCamera(Ljava/lang/String;)Z
    .locals 13
    .parameter "appWant"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 270
    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 271
    .local v11, split:I
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, appName:Ljava/lang/String;
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, fieldColumn:Ljava/lang/String;
    const-string v0, "access32"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordInentOpenCamera: fieldColumn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "access33"

    aput-object v3, v2, v10

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v10

    const-string v5, "name DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 311
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v10

    .line 281
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v10, 0x1

    .line 283
    .local v10, retV:Z
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 284
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "access33"

    const-string v1, "intentCamera"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 292
    .local v9, i:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    .line 293
    const/4 v10, 0x1

    goto :goto_1

    .line 295
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 299
    .end local v9           #i:I
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v0, "name"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "access33"

    const-string v1, "intentCamera"

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #retV:Z
    :cond_4
    move v10, v4

    .line 311
    goto :goto_0
.end method

.method private saveSystemSecurityCheck(Ljava/lang/String;Z)Z
    .locals 15
    .parameter "appWant"
    .parameter "allow"

    .prologue
    .line 314
    const/16 v1, 0x7c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 315
    .local v13, split:I
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, appName:Ljava/lang/String;
    add-int/lit8 v1, v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, fieldColumn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSystemSecurityCheck: fieldColumn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    const-string v6, "name DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 322
    const/4 v12, 0x0

    .line 353
    :goto_0
    return v12

    .line 324
    :cond_0
    const/4 v12, 0x1

    .line 325
    .local v12, retV:Z
    if-eqz p2, :cond_1

    const-string v11, "enable"

    .line 327
    .local v11, permission:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 328
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v14, values:Landroid/content/ContentValues;
    invoke-virtual {v14, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 336
    .local v10, i:I
    const/4 v1, -0x1

    if-eq v10, v1, :cond_2

    .line 337
    const/4 v12, 0x1

    goto :goto_2

    .line 325
    .end local v10           #i:I
    .end local v11           #permission:Ljava/lang/String;
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_1
    const-string v11, "disable"

    goto :goto_1

    .line 339
    .restart local v10       #i:I
    .restart local v11       #permission:Ljava/lang/String;
    .restart local v14       #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 343
    .end local v10           #i:I
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .restart local v14       #values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v14, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public cancelCountDownTimer()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "cancel sCountDownTimer"

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 360
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->dismiss()V

    .line 365
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remember this choice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 236
    iput-boolean p2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mRememberChoice:Z

    .line 237
    if-eqz p2, :cond_0

    .line 240
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string v1, "onCreate"

    invoke-direct {p0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 84
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 88
    :pswitch_0
    const-string v0, "KEYCODE_BACK"

    invoke-direct {p0, v0}, Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppChecking:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;

    const-string v2, "deny"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/am/CheckUserPermissionDialog;->cancelCountDownTimer()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
