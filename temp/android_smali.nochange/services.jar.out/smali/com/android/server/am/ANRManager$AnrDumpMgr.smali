.class Lcom/android/server/am/ANRManager$AnrDumpMgr;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrDumpMgr"
.end annotation


# instance fields
.field mDumpList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/ANRManager$AnrDumpRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ANRManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ANRManager;)V
    .locals 1
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    return-void
.end method

.method private isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z
    .locals 3
    .parameter "dumpRecord"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v1

    .line 613
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ANRManager$AnrDumpRecord;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    monitor-exit v1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 4
    .parameter "dumpRecord"

    .prologue
    .line 571
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 574
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v3

    .line 575
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 576
    .local v1, value:Lcom/android/server/am/ANRManager$AnrDumpRecord;
    if-eqz v1, :cond_2

    .line 577
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCancelled:Z

    .line 579
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #value:Lcom/android/server/am/ANRManager$AnrDumpRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 5
    .parameter "dumpRecord"

    .prologue
    .line 621
    if-nez p1, :cond_0

    .line 622
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_0
    return-void

    .line 625
    :cond_0
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo begin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 629
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    sget-object v2, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_1

    .line 630
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo During shutdown skipping ANR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-eqz v2, :cond_2

    .line 636
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo Crashing app skipping ANR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 638
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 639
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo dump stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAnrDebugInfo end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
    :catch_0
    move-exception v1

    .line 647
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ANRManager"

    const-string v3, "dumpAnrDebugInfo exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method dumpAnrDebugInfoLocked(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 27
    .parameter "dumpRecord"

    .prologue
    .line 653
    monitor-enter p1

    .line 654
    :try_start_0
    const-string v22, "ANRManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dumpAnrDebugInfoLocked: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 656
    monitor-exit p1

    .line 809
    :goto_0
    return-void

    .line 658
    :cond_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 659
    .local v5, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 660
    .local v15, parent:Lcom/android/server/am/ActivityRecord;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v9, firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Landroid/util/SparseArray;

    const/16 v22, 0x14

    move/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 664
    .local v14, lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 665
    .local v6, binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 666
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 671
    :cond_1
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    .line 674
    .local v16, parentPid:I
    if-eqz v15, :cond_2

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    if-lez v22, :cond_2

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    .line 675
    :cond_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_3
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v22

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_4
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v10, v22, -0x1

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_7

    .line 680
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 681
    .local v20, r:Lcom/android/server/am/ProcessRecord;
    if-eqz v20, :cond_5

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 682
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v17, v0

    .line 683
    .local v17, pid:I
    if-lez v17, :cond_5

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 684
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 685
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    .end local v17           #pid:I
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 687
    .restart local v17       #pid:I
    :cond_6
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 808
    .end local v5           #app:Lcom/android/server/am/ProcessRecord;
    .end local v6           #binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #i:I
    .end local v14           #lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v15           #parent:Lcom/android/server/am/ActivityRecord;
    .end local v16           #parentPid:I
    .end local v17           #pid:I
    .end local v20           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v22

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 694
    .restart local v5       #app:Lcom/android/server/am/ProcessRecord;
    .restart local v6       #binderPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #firstPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10       #i:I
    .restart local v14       #lastPids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v15       #parent:Lcom/android/server/am/ActivityRecord;
    .restart local v16       #parentPid:I
    :cond_7
    if-eqz v6, :cond_9

    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_9

    .line 695
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 696
    .local v7, bpid:Ljava/lang/Integer;
    if-eqz v7, :cond_8

    .line 697
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 698
    .local v18, pidValue:I
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 699
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 700
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 715
    .end local v7           #bpid:Ljava/lang/Integer;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #pidValue:I
    :cond_9
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 717
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    if-eqz v15, :cond_a

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    if-lez v22, :cond_a

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v16, v0

    .line 720
    :cond_a
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v22

    if-nez v22, :cond_b

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_c

    .line 725
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 726
    .restart local v7       #bpid:Ljava/lang/Integer;
    if-eqz v7, :cond_c

    .line 727
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 728
    .restart local v18       #pidValue:I
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 729
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v22

    if-nez v22, :cond_c

    .line 731
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    .end local v7           #bpid:Ljava/lang/Integer;
    .end local v18           #pidValue:I
    :cond_c
    sget-object v22, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 740
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 741
    .restart local v17       #pid:I
    :cond_d
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 743
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 744
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 745
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    sget-object v22, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 749
    :cond_e
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 750
    .local v3, activity:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnnotation:Ljava/lang/String;

    .line 753
    .local v4, annotation:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mInfo:Ljava/lang/StringBuilder;

    .line 754
    .local v12, info:Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 755
    const-string v22, "ANR in "

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    if-eqz v3, :cond_f

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 757
    const-string v22, " ("

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_f
    const-string v22, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    if-eqz v4, :cond_10

    .line 761
    const-string v22, "Reason: "

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_10
    if-eqz v15, :cond_11

    if-eq v15, v3, :cond_11

    .line 764
    const-string v22, "Parent: "

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_11
    new-instance v19, Lcom/android/internal/os/ProcessStats;

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    .line 769
    .local v19, processStats:Lcom/android/internal/os/ProcessStats;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 770
    monitor-exit p1

    goto/16 :goto_0

    .line 773
    :cond_12
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    const/16 v22, 0x1

    sget-object v23, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-static {v0, v9, v1, v14, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 775
    .local v21, tracesFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v22

    if-nez v22, :cond_13

    .line 776
    monitor-exit p1

    goto/16 :goto_0

    .line 778
    :cond_13
    const/4 v8, 0x0

    .line 779
    .local v8, cpuInfo:Ljava/lang/String;
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    .line 780
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 781
    sget-object v22, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    :try_start_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ANRManager;->getAndroidTime()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v24, Lcom/android/server/am/ANRManager;->mAMService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mAnrTime:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/os/ProcessStats;->printCurrentState(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 784
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mCpuInfo:Ljava/lang/String;

    .line 786
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 787
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/ProcessStats;->printCurrentLoad()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v22, "ANRManager"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->isDumpable(Lcom/android/server/am/ANRManager$AnrDumpRecord;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 795
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 786
    :catchall_1
    move-exception v22

    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v22

    .line 796
    :cond_14
    if-nez v21, :cond_15

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_15

    .line 800
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    const/16 v23, 0x3

    invoke-static/range {v22 .. v23}, Landroid/os/Process;->sendSignal(II)V

    .line 803
    :cond_15
    const-string v22, "ro.monkey"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_16

    .line 807
    :cond_16
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mIsCompleted:Z

    .line 808
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method removeDumpRecord(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 3
    .parameter "dumpRecord"

    .prologue
    .line 583
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 586
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v2

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 588
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startAsyncDump(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V
    .locals 8
    .parameter "dumpRecord"

    .prologue
    .line 592
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAsyncDump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p1, Lcom/android/server/am/ANRManager$AnrDumpRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 599
    .local v0, app:Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    monitor-enter v3

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    monitor-exit v3

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 604
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->mDumpList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/16 v4, 0x3eb

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 607
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ANRManager$AnrDumpMgr;->this$0:Lcom/android/server/am/ANRManager;

    iget-object v2, v2, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 608
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
