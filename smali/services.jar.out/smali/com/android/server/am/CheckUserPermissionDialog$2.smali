.class Lcom/android/server/am/CheckUserPermissionDialog$2;
.super Landroid/os/CountDownTimer;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CheckUserPermissionDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
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
    .line 180
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$502(Lcom/android/server/am/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 196
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v0, v0, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$200(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, v1, Lcom/android/server/am/CheckUserPermissionDialog;->receiver:Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->dismiss()V

    .line 200
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .parameter "millisUntilFinished"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 183
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    div-long v1, p1, v6

    long-to-int v1, v1

    #setter for: Lcom/android/server/am/CheckUserPermissionDialog;->mSecondsCountdown:I
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$002(Lcom/android/server/am/CheckUserPermissionDialog;I)I

    .line 184
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$200(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040561

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

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

    .line 185
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

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

    .line 186
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mDisableCountDown:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$100(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/am/CheckUserPermissionDialog;->access$400(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/CheckUserPermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v0, v0, Lcom/android/server/am/CheckUserPermissionDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    .line 190
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$2;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->show()V

    .line 191
    return-void
.end method
