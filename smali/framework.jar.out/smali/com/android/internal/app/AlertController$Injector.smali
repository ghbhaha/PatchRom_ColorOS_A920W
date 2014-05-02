.class Lcom/android/internal/app/AlertController$Injector;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "Jianhua.Lin@Plf.SDK : Modify for Change the display position of dialog"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
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

.method static setDialogListener(Lcom/android/internal/app/AlertController;Landroid/content/Context;Landroid/view/Window;)V
    .locals 2
    .parameter "ac"
    .parameter "mContext"
    .parameter "window"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->isOppoStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/oppo/util/OppoDialogUtil;

    invoke-direct {v0, p1}, Lcom/oppo/util/OppoDialogUtil;-><init>(Landroid/content/Context;)V

    .local v0, dialogUtil:Lcom/oppo/util/OppoDialogUtil;
    invoke-virtual {v0, p0, p2}, Lcom/oppo/util/OppoDialogUtil;->setDialogDrag(Lcom/android/internal/app/AlertController;Landroid/view/Window;)V

    .end local v0           #dialogUtil:Lcom/oppo/util/OppoDialogUtil;
    :cond_0
    return-void
.end method
