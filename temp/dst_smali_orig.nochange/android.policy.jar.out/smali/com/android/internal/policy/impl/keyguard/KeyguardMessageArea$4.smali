.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 328
    return-void
.end method
