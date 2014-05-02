.class final Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;
.super Ljava/lang/Object;
.source "AmoiSecurityConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AmoiSecurityConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field mCallerWantTo:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "app"
    .parameter "wantTo"

    .prologue
    const/4 v0, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->this$0:Lcom/android/internal/app/AmoiSecurityConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerApp:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerWantTo:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerApp:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mCallerWantTo:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method
