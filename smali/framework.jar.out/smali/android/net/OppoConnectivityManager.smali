.class public Landroid/net/OppoConnectivityManager;
.super Landroid/net/ConnectivityManager;
.source "OppoConnectivityManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of ConnectivityManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;-><init>(Landroid/net/IConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public oppoGetMobileDataEnabled()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method public oppoGetMobileDataEnabledGemini(I)Z
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get mobile data enabled state, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/OppoConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public oppoGetTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoGetTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoGetTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/OppoConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oppoIsNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/OppoConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public oppoSetMobileDataEnabledGemini(I)Z
    .locals 1
    .parameter "slotId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "set mobile data enabled, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/OppoConnectivityManager;->setMobileDataEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public oppoStartUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "start using network feature, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/OppoConnectivityManager;->startUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public oppoStopUsingNetworkFeatureGemini(ILjava/lang/String;I)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "stop using network feature, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/OppoConnectivityManager;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method
