.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;
.super Ljava/lang/Object;
.source "OppoKeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->sendRemoveIPOWinBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4800(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$7;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->startAlarm()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$4900(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    return-void
.end method
