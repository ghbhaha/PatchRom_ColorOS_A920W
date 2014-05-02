.class Landroid/app/CheckUserPermissionDialog$1;
.super Landroid/os/CountDownTimer;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/CheckUserPermissionDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/CheckUserPermissionDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/CheckUserPermissionDialog;JJLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iput-object p6, p0, Landroid/app/CheckUserPermissionDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    #setter for: Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v2}, Landroid/app/CheckUserPermissionDialog;->access$402(Landroid/app/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 114
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    .line 116
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v0, v0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/app/CheckUserPermissionDialog;->access$200(Landroid/app/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v1, v1, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iput-object v2, v0, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 121
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 101
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    div-long v1, p1, v6

    long-to-int v1, v1

    #setter for: Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I
    invoke-static {v0, v1}, Landroid/app/CheckUserPermissionDialog;->access$002(Landroid/app/CheckUserPermissionDialog;I)I

    .line 102
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v1, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/app/CheckUserPermissionDialog;->access$200(Landroid/app/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040561

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->mSecondsCountdown:I
    invoke-static {v5}, Landroid/app/CheckUserPermissionDialog;->access$000(Landroid/app/CheckUserPermissionDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/CheckUserPermissionDialog;->access$102(Landroid/app/CheckUserPermissionDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check app visit contacts permission dialog time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p1, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/app/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/app/CheckUserPermissionDialog;->access$300(Landroid/app/CheckUserPermissionDialog;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;
    invoke-static {v2}, Landroid/app/CheckUserPermissionDialog;->access$100(Landroid/app/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/CheckUserPermissionDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v0, v0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    .line 108
    iget-object v0, p0, Landroid/app/CheckUserPermissionDialog$1;->this$0:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 109
    return-void
.end method
