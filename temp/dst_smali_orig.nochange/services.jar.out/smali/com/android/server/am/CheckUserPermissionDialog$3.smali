.class Lcom/android/server/am/CheckUserPermissionDialog$3;
.super Landroid/os/Handler;
.source "CheckUserPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CheckUserPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CheckUserPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CheckUserPermissionDialog;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const-string v1, "ALLOW"

    #calls: Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$300(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$700(Lcom/android/server/am/CheckUserPermissionDialog;)Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppChecking:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "allow"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 250
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mRememberChoice:Z
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$800(Lcom/android/server/am/CheckUserPermissionDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/android/server/am/CheckUserPermissionDialog;->saveSystemSecurityCheck(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$900(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->cancelCountDownTimer()V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    const-string v1, "DENY"

    #calls: Lcom/android/server/am/CheckUserPermissionDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$300(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$700(Lcom/android/server/am/CheckUserPermissionDialog;)Lcom/android/server/am/ActivityManagerService;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->sAppChecking:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deny"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 262
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mRememberChoice:Z
    invoke-static {v0}, Lcom/android/server/am/CheckUserPermissionDialog;->access$800(Lcom/android/server/am/CheckUserPermissionDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    iget-object v1, p0, Lcom/android/server/am/CheckUserPermissionDialog$3;->this$0:Lcom/android/server/am/CheckUserPermissionDialog;

    #getter for: Lcom/android/server/am/CheckUserPermissionDialog;->mCurrentApp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/CheckUserPermissionDialog;->access$600(Lcom/android/server/am/CheckUserPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/android/server/am/CheckUserPermissionDialog;->saveSystemSecurityCheck(Ljava/lang/String;Z)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/am/CheckUserPermissionDialog;->access$900(Lcom/android/server/am/CheckUserPermissionDialog;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
