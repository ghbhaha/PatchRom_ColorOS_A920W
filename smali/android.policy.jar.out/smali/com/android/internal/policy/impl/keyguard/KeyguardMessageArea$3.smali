.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
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
    .line 158
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshDualBatteryInfo(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mDualBatteryArgs:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$302(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 163
    return-void
.end method
