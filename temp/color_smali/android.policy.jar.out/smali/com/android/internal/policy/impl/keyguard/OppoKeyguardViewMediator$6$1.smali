.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6$1;
.super Ljava/lang/Object;
.source "OppoKeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6$1;->this$1:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.normal.boot.done"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
