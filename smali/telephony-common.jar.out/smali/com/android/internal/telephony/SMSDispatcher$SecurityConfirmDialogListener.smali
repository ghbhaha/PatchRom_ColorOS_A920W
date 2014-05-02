.class final Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityConfirmDialogListener"
.end annotation


# instance fields
.field private mRememberChoice:Z

.field private final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter
    .parameter "tracker"

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2990
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 2991
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remember this choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 3023
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mRememberChoice:Z

    .line 3024
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2995
    const/4 v1, 0x1

    .line 2997
    .local v1, newSmsPermission:I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 2998
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "CONFIRM sending SMS"

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 2999
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3000
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v2, :cond_0

    .line 3001
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v2}, Landroid/app/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 3003
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mRememberChoice:Z

    if-eqz v2, :cond_1

    .line 3004
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3005
    .local v0, appName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "access12"

    const/4 v4, 0x1

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3018
    .end local v0           #appName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3007
    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 3008
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "DENY sending SMS"

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 3009
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 3010
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v2, :cond_3

    .line 3011
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v2}, Landroid/app/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 3013
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mRememberChoice:Z

    if-eqz v2, :cond_1

    .line 3014
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3015
    .restart local v0       #appName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "access12"

    const/4 v4, 0x0

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
