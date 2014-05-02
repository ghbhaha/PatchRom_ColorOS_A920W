.class Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CheckUserPermissionDialog;
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

.field final synthetic this$0:Lcom/android/server/am/CheckUserPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CheckUserPermissionDialog;)V
    .locals 1

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 368
    const-string v0, "reason"

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 369
    const-string v0, "globalactions"

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

    .line 370
    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    .line 371
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 379
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->sCountDownTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$500(Lcom/android/server/am/CheckUserPermissionDialog;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$700(Lcom/android/server/am/CheckUserPermissionDialog;)Lcom/android/server/am/ActivityManagerService;

    sget-object v2, Lcom/android/server/am/ActivityManagerService;->sAppChecking:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deny"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/android/server/am/CheckUserPermissionDialog$HomeKeyReceiver;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v2}, Lcom/android/server/am/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 389
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local v1       #reason:Ljava/lang/String;
    :cond_1
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
