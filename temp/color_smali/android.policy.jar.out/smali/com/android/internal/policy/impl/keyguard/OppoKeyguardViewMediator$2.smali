.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "OppoKeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public keyguardDonePending()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$2002(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Z)Z

    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .parameter "needsInput"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->userActivity()V

    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "holdMs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->userActivity(J)V

    return-void
.end method

.method public wakeUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->wakeUp()V

    return-void
.end method
