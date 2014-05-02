.class Landroid/app/Dialog$Injector;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianhua.Lin@Plf.SDK : Add for Oppo Theme"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
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

.method static initButtonBackground(Landroid/app/Dialog;I)V
    .locals 2
    .parameter "dialog"
    .parameter "flag"

    .prologue
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isOppoStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/oppo/util/OppoDialogUtil;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/util/OppoDialogUtil;-><init>(Landroid/content/Context;)V

    .local v0, dialogUtil:Lcom/oppo/util/OppoDialogUtil;
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oppo/util/OppoDialogUtil;->setDialogButtonFlag(Landroid/view/Window;I)V

    .end local v0           #dialogUtil:Lcom/oppo/util/OppoDialogUtil;
    :cond_0
    return-void
.end method
