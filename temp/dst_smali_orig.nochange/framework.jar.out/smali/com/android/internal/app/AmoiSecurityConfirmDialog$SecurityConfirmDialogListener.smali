.class final Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;
.super Ljava/lang/Object;
.source "AmoiSecurityConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AmoiSecurityConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityConfirmDialogListener"
.end annotation


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mAppWant:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRememberChoice:Z

.field final synthetic this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;)V
    .locals 1
    .parameter
    .parameter "callerInfo"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iget-object v0, p2, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppName:Ljava/lang/String;

    .line 84
    iget-object v0, p2, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerWantTo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    .line 85
    iget-object v0, p2, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remember this choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$000(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;)V

    .line 138
    iput-boolean p2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mRememberChoice:Z

    .line 139
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    const-string v3, "CONFIRM record"

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$000(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v2, v2, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v2, v2, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v2}, Landroid/app/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 96
    :cond_0
    const-string v2, "amoi.systemsecurity.checkdone"

    const-string/jumbo v3, "true"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    const-string v2, "amoi.systemsecurity.checkresult"

    const-string v3, "allow"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    iget-boolean v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mRememberChoice:Z

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    const/4 v5, 0x1

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$100(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 109
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-virtual {v2}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->finish()V

    .line 133
    :cond_2
    :goto_1
    return-void

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    const-string v3, "access32"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, callApp:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "allow"

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->putCheckingAppStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0           #callApp:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 110
    :cond_4
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    const-string v3, "DENY record"

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$000(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v2, v2, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v2, :cond_5

    .line 113
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v2, v2, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    invoke-virtual {v2}, Landroid/app/CheckUserPermissionDialog;->cancelCountDownTimer()V

    .line 115
    :cond_5
    const-string v2, "amoi.systemsecurity.checkdone"

    const-string/jumbo v3, "true"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const-string v2, "amoi.systemsecurity.checkresult"

    const-string v3, "deny"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    iget-boolean v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mRememberChoice:Z

    if-eqz v2, :cond_7

    .line 118
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    const/4 v5, 0x0

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$100(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 131
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-virtual {v2}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->finish()V

    goto :goto_1

    .line 120
    :cond_7
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    const-string v3, "access32"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    const-string v3, "access32"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;->mAppWant:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .restart local v0       #callApp:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "deny"

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->putCheckingAppStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 125
    .end local v0           #callApp:Ljava/lang/String;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
