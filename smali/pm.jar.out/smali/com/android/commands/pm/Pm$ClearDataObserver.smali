.class Lcom/android/commands/pm/Pm$ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearDataObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1118
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1124
    monitor-enter p0

    .line 1125
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$ClearDataObserver;->finished:Z

    .line 1126
    iput-boolean p2, p0, Lcom/android/commands/pm/Pm$ClearDataObserver;->result:Z

    .line 1127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1128
    monitor-exit p0

    .line 1129
    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
