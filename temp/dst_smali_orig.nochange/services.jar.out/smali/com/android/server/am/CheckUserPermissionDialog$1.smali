.class Lcom/android/server/am/CheckUserPermissionDialog$1;
.super Landroid/os/CountDownTimer;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CheckUserPermissionDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CheckUserPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CheckUserPermissionDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$502(Lcom/android/server/am/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 129
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$700(Lcom/android/server/am/CheckUserPermissionDialog;)Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppChecking:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deny"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v0, v0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$200(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, v1, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->dismiss()V

    .line 135
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 116
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    div-long v1, p1, v6

    long-to-int v1, v1

    #setter for: Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$002(Lcom/android/server/am/CheckUserPermissionDialog;I)I

    .line 117
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$200(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040561

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I
    invoke-static {v5}, Lcom/android/server/am/CheckUserPermissionDialog;->access$000(Lcom/android/server/am/CheckUserPermissionDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$102(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

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

    #calls: Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$300(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$100(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/am/CheckUserPermissionDialog;->access$400(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v0, v0, Lcom/android/server/am/CheckUserPermissionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    .line 123
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$1;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->show()V

    .line 124
    return-void
.end method
