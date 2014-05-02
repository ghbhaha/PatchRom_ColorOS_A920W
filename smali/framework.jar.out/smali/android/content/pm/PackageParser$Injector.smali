.class Landroid/content/pm/PackageParser$Injector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianjun.Dan@Plf.SDK,2013.10.05: add for oppo package."
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filterOppoNameError(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "pkgName"
    .parameter "hasSep"

    .prologue
    const-string v0, "oppo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .end local p1
    :cond_0
    return p1
.end method
