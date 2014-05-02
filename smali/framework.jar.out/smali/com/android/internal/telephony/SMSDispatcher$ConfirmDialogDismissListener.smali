.class final Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogDismissListener"
.end annotation


# instance fields
.field private final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter
    .parameter "tracker"

    .prologue
    .line 2970
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2971
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 2972
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string/jumbo v1, "onDismiss"

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 2977
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    iget-boolean v0, v0, Landroid/app/CheckUserPermissionDialog;->mCountDownDismiss:Z

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 2980
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogDismissListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher;->mdialog:Landroid/app/CheckUserPermissionDialog;

    .line 2981
    return-void
.end method
