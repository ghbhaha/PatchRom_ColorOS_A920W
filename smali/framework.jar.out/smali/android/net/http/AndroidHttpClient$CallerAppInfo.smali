.class final Landroid/net/http/AndroidHttpClient$CallerAppInfo;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerAppInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 522
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 520
    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 523
    #getter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->access$200(Landroid/net/http/AndroidHttpClient;)Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_0

    .line 524
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    .line 525
    .local v1, at:Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v10

    #setter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$202(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;)Landroid/content/Context;

    .line 526
    #getter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->access$200(Landroid/net/http/AndroidHttpClient;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x103006b

    invoke-virtual {v10, v11}, Landroid/content/Context;->setTheme(I)V

    .line 529
    .end local v1           #at:Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 531
    .local v2, callingPid:I
    #getter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->access$200(Landroid/net/http/AndroidHttpClient;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 532
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 533
    .local v9, processList:Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 534
    .local v5, index:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 535
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v8, v10

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 536
    .local v8, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v10, :cond_1

    .line 538
    :try_start_0
    #getter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->access$200(Landroid/net/http/AndroidHttpClient;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 539
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 540
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create context for calling app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v8           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    :goto_0
    return-void

    .line 541
    .restart local v8       #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v4

    .line 542
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create context for heavy notification:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 543
    #getter for: Landroid/net/http/AndroidHttpClient;->mCallerContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->access$200(Landroid/net/http/AndroidHttpClient;)Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 544
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 545
    .local v3, callingUid:I
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, v10, :cond_2

    .line 546
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get calling package name for calling uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 547
    iget-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 548
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, packageNames:[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v10, v6

    if-lez v10, :cond_3

    .line 550
    const/4 v10, 0x0

    aget-object v10, v6, v10

    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 551
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calling uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "package name is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_3
    const-string v10, "Get calling package name for calling uid fail, use processName"

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 554
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, Landroid/net/http/AndroidHttpClient$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    goto :goto_0
.end method
