.class Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;
.super Ljava/lang/Object;
.source "OppoKeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidDialogCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;-><init>(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x205009c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x205009d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator$InvalidDialogCallback;->this$0:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    invoke-static {v3, v2, v1}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->access$5000(Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
