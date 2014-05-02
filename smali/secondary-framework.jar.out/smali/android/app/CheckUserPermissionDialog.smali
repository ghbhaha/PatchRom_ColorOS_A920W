.class public Landroid/app/CheckUserPermissionDialog;
.super Landroid/app/AlertDialog;
.source "CheckUserPermissionDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;
    }
.end annotation


# static fields
.field static final ALLOW:I = 0x1

.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field static final DENY:I = 0x3

.field static final REMEBER:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field public mCountDownDismiss:Z

.field private mDisableCountDown:Ljava/lang/String;

.field private mRememberChoice:Z

.field private mSecondsCountdown:I

.field receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

.field private sCountDownTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 14
    .parameter "context"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 90
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    .line 54
    new-instance v1, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-direct {v1, p0}, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;-><init>(Landroid/app/CheckUserPermissionDialog;)V

    iput-object v1, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 91
    iput-object p1, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 93
    const/16 v9, 0x10

    .line 94
    .local v9, countSeconds:I
    const/16 v12, 0x3e8

    .line 95
    .local v12, millisSeconds:I
    const/16 v1, 0x10

    iput v1, p0, Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I

    .line 96
    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

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

    iput-object v1, p0, Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    .line 98
    new-instance v1, Landroid/app/CheckUserPermissionDialog$1;

    iget v2, p0, Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    move-object v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/app/CheckUserPermissionDialog$1;-><init>(Landroid/app/CheckUserPermissionDialog;JJLandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 123
    const-string v1, "NEW CheckUserPermissionDialog"

    invoke-direct {p0, v1}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 126
    .local v10, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900b0

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 128
    .local v11, layout:Landroid/view/View;
    const v1, 0x1020358

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .local v13, rememberChoice:Landroid/widget/CheckBox;
    move-object/from16 v1, p3

    .line 130
    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v13, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-virtual {p0, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 132
    const v1, 0x1080027

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 133
    const v1, 0x1040014

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 134
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    const v3, 0x1040482

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    const/4 v1, -0x2

    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 148
    .local v8, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Landroid/app/CheckUserPermissionDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I

    return v0
.end method

.method static synthetic access$002(Landroid/app/CheckUserPermissionDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I

    return p1
.end method

.method static synthetic access$100(Landroid/app/CheckUserPermissionDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/CheckUserPermissionDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/app/CheckUserPermissionDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/CheckUserPermissionDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/CheckUserPermissionDialog;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 206
    const-string v0, "CheckUserPermissionDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method


# virtual methods
.method public cancelCountDownTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "cancel sCountDownTimer"

    invoke-direct {p0, v0}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 166
    iput-object v2, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 167
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iput-object v2, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remember this choice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 156
    iput-boolean p2, p0, Landroid/app/CheckUserPermissionDialog;->mRememberChoice:Z

    .line 157
    if-eqz p2, :cond_0

    .line 160
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v1, "onCreate"

    invoke-direct {p0, v1}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 73
    :pswitch_0
    const-string v0, "KEYCODE_BACK"

    invoke-direct {p0, v0}, Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 75
    iput-object v2, p0, Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    .line 77
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iput-object v2, p0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
