.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .parameter "view"
    .parameter "pendingIntent"
    .parameter "fillInIntent"

    .prologue
    const/4 v0, 0x1

    .line 720
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 743
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 751
    :goto_0
    return v0

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dimss()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    goto :goto_0

    .line 751
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
