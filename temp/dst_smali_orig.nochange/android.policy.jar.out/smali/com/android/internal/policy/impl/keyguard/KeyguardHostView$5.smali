.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


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

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "securityVerified"

    .prologue
    .line 877
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method public hasOnDismissAction()Z
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    .prologue
    .line 859
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 855
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 851
    return-void
.end method

.method public updateClipChildren(Z)V
    .locals 0
    .parameter "clipChildren"

    .prologue
    .line 887
    return-void
.end method

.method public updateKeyguardLayerVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 882
    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 847
    return-void
.end method
