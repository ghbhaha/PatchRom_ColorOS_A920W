.class Lcom/android/server/MountService$5;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, action:Ljava/lang/String;
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 914
    const-string v14, "MountService"

    const-string v15, "MountService BOOT_COMPLETED!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v15, 0x1

    #setter for: Lcom/android/server/MountService;->mBootCompleted:Z
    invoke-static {v14, v15}, Lcom/android/server/MountService;->access$2602(Lcom/android/server/MountService;Z)Z

    .line 977
    :goto_0
    return-void

    .line 921
    :cond_0
    const-string v14, "MountService"

    const-string v15, "MountService BOOT_IPO!"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v15, 0x1

    #setter for: Lcom/android/server/MountService;->mFirstTime_SwapStateForSDSwapMountPoint:Z
    invoke-static {v14, v15}, Lcom/android/server/MountService;->access$2702(Lcom/android/server/MountService;Z)Z

    .line 935
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v14}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v14

    const-string v15, "volume"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "list"

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v14

    const/16 v15, 0x6e

    invoke-static {v14, v15}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v11

    .line 938
    .local v11, vols:[Ljava/lang/String;
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v12, v2, v4

    .line 939
    .local v12, volstr:Ljava/lang/String;
    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 941
    .local v10, tok:[Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v6, v10, v14

    .line 942
    .local v6, path:Ljava/lang/String;
    const-string v9, "removed"

    .line 945
    .local v9, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageVolume;

    .line 947
    .local v13, volume:Landroid/os/storage/StorageVolume;
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    const/4 v14, 0x2

    :try_start_2
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 950
    .local v8, st:I
    if-nez v8, :cond_3

    .line 951
    const-string v9, "removed"

    .line 964
    :goto_2
    if-eqz v9, :cond_1

    .line 965
    const-string v14, "MountService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Updating valid state "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v13, v9}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 938
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 947
    .end local v8           #st:I
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v14

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 969
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v9           #state:Ljava/lang/String;
    .end local v10           #tok:[Ljava/lang/String;
    .end local v11           #vols:[Ljava/lang/String;
    .end local v12           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 970
    .local v3, e:Ljava/lang/Exception;
    const-string v14, "MountService"

    const-string v15, "Error processing initial volume state"

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 972
    .local v7, primary:Landroid/os/storage/StorageVolume;
    if-eqz v7, :cond_2

    .line 973
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v15, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v14, v7, v15}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 976
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #primary:Landroid/os/storage/StorageVolume;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static {v14}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)V

    goto/16 :goto_0

    .line 952
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v8       #st:I
    .restart local v9       #state:Ljava/lang/String;
    .restart local v10       #tok:[Ljava/lang/String;
    .restart local v11       #vols:[Ljava/lang/String;
    .restart local v12       #volstr:Ljava/lang/String;
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    const/4 v14, 0x1

    if-ne v8, v14, :cond_4

    .line 953
    :try_start_5
    const-string v9, "unmounted"

    goto :goto_2

    .line 954
    :cond_4
    const/4 v14, 0x4

    if-ne v8, v14, :cond_5

    .line 955
    const-string v9, "mounted"

    .line 956
    const-string v14, "MountService"

    const-string v15, "Media already mounted on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 957
    :cond_5
    const/4 v14, 0x7

    if-ne v8, v14, :cond_6

    .line 958
    const-string v9, "shared"

    .line 959
    const-string v14, "MountService"

    const-string v15, "Media shared on daemon connection"

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 961
    :cond_6
    new-instance v14, Ljava/lang/Exception;

    const-string v15, "Unexpected state %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
