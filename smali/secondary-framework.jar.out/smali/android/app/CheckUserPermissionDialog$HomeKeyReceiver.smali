.class Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/CheckUserPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HomeKeyReceiver"
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/CheckUserPermissionDialog;


# direct methods
.method constructor <init>(Landroid/app/CheckUserPermissionDialog;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 176
    const-string v0, "reason"

    iput-object v0, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 177
    const-string v0, "globalactions"

    iput-object v0, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

    .line 178
    const-string v0, "recentapps"

    iput-object v0, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    .line 179
    const-string v0, "homekey"

    iput-object v0, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 187
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Landroid/app/CheckUserPermissionDialog;->access$400(Landroid/app/CheckUserPermissionDialog;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Landroid/app/CheckUserPermissionDialog;->access$400(Landroid/app/CheckUserPermissionDialog;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 190
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    #setter for: Landroid/app/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v2, v4}, Landroid/app/CheckUserPermissionDialog;->access$402(Landroid/app/CheckUserPermissionDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 191
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    .line 192
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v2, v2, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    #getter for: Landroid/app/CheckUserPermissionDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/app/CheckUserPermissionDialog;->access$200(Landroid/app/CheckUserPermissionDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    iget-object v3, v3, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 194
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    iput-object v4, v2, Landroid/app/CheckUserPermissionDialog;->receiver:Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;

    .line 196
    :cond_0
    iget-object v2, p0, Landroid/app/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 202
    .end local v1           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v1       #reason:Ljava/lang/String;
    :cond_2
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method
