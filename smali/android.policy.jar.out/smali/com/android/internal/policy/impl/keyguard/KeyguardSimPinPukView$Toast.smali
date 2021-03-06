.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Toast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
    }
.end annotation


# static fields
.field static final LOCAL_LOGV:Z = false

.field static final LOCAL_TAG:Ljava/lang/String; = "Toast"


# instance fields
.field final mContext:Landroid/content/Context;

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/INotificationManager;

.field final mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

.field mView:Landroid/view/View;

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mHandler:Landroid/os/Handler;

    .line 967
    const/16 v0, 0x51

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mGravity:I

    .line 972
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mContext:Landroid/content/Context;

    .line 973
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    .line 974
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mY:I

    .line 975
    return-void
.end method

.method private getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    .line 1022
    :goto_0
    return-object v0

    .line 1021
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 978
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;-><init>(Landroid/content/Context;)V

    .line 980
    .local v1, result:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 981
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x10900df

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 982
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 983
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iput-object v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    .line 987
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->hide()V

    .line 1013
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 994
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 995
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 998
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    .line 1001
    .local v2, tn:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    :goto_0
    return-void

    .line 1002
    :catch_0
    move-exception v3

    goto :goto_0
.end method
