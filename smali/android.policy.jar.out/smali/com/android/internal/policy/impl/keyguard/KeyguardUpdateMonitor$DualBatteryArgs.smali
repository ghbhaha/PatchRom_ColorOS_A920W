.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualBatteryArgs"
.end annotation


# instance fields
.field public allow_user_set_flag:I

.field public batA_level:I

.field public batB_level:I

.field public battery_present_status:I

.field public internal_change_status:I

.field public pmic_change_status:I

.field public preserve_a:I

.field public preserve_b:I

.field public supply_power_battery:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2609
    const-string v0, "power_bat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->supply_power_battery:I

    .line 2610
    const-string v0, "present_bat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->battery_present_status:I

    .line 2611
    const-string v0, "batA_level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batA_level:I

    .line 2612
    const-string v0, "batB_level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batB_level:I

    .line 2613
    const-string v0, "pmic_change"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->pmic_change_status:I

    .line 2614
    const-string v0, "internal_change "

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->internal_change_status:I

    .line 2615
    const-string v0, "allow_set"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->allow_user_set_flag:I

    .line 2616
    const-string v0, "preserve1"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->preserve_a:I

    .line 2617
    const-string v0, "preserve2"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->preserve_b:I

    .line 2618
    return-void
.end method


# virtual methods
.method public needupdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;)Z
    .locals 3
    .parameter "oldArgs"

    .prologue
    .line 2622
    if-nez p1, :cond_0

    .line 2623
    const/4 v0, 0x1

    .line 2631
    .local v0, ret:Z
    :goto_0
    return v0

    .line 2625
    .end local v0           #ret:Z
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->pmic_change_status:I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->pmic_change_status:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->battery_present_status:I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->battery_present_status:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batA_level:I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batA_level:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batB_level:I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->batB_level:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->preserve_a:I

    iget v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DualBatteryArgs;->preserve_a:I

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .restart local v0       #ret:Z
    :goto_1
    goto :goto_0

    .end local v0           #ret:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
