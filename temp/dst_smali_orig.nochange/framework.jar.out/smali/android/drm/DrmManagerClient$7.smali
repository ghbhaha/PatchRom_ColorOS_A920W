.class final Landroid/drm/DrmManagerClient$7;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showConsume(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 0

    .prologue
    .line 2056
    iput-object p1, p0, Landroid/drm/DrmManagerClient$7;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2058
    iget-object v0, p0, Landroid/drm/DrmManagerClient$7;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Landroid/drm/DrmManagerClient$7;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    .line 2061
    :cond_0
    return-void
.end method
