.class Landroid/content/SyncManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Landroid/content/SyncManager$3;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Landroid/content/SyncManager$3;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;
    invoke-static {v0}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/content/SyncManager$3;->this$0:Landroid/content/SyncManager;

    const/4 v2, -0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 207
    :cond_0
    return-void
.end method
