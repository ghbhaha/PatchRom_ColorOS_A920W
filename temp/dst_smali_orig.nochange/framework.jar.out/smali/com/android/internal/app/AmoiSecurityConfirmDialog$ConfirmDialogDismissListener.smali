.class final Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;
.super Ljava/lang/Object;
.source "AmoiSecurityConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AmoiSecurityConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogDismissListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    const-string/jumbo v2, "onDismiss"

    #calls: Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->access$000(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "amoi.systemsecurity.checkdone"

    const-string/jumbo v2, "true"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    iget-object v1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v1, v1, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    iget-object v1, v1, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    iget-boolean v1, v1, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-virtual {v1}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->finish()V

    .line 73
    :cond_0
    return-void
.end method
