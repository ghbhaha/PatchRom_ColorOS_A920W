.class final Landroid/location/LocationManager$CallerAppInfo;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerAppInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;)V
    .locals 12

    .prologue
    .line 1844
    iput-object p1, p0, Landroid/location/LocationManager$CallerAppInfo;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1842
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 1845
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1849
    .local v0, callingPid:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1854
    .local v8, processList:Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1855
    .local v4, index:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1856
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v7, v9

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1857
    .local v7, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, v9, :cond_0

    .line 1859
    :try_start_1
    #getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/location/LocationManager;->access$600(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 1861
    .local v2, context:Landroid/content/Context;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v9, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 1862
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create context for calling app:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v9}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1882
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #index:Ljava/util/Iterator;
    .end local v7           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8           #processList:Ljava/util/List;
    :cond_1
    :goto_0
    return-void

    .line 1850
    :catch_0
    move-exception v3

    .line 1851
    .local v3, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 1863
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v4       #index:Ljava/util/Iterator;
    .restart local v7       #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8       #processList:Ljava/util/List;
    :catch_1
    move-exception v3

    .line 1864
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create context for heavy notification:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v9}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 1865
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1866
    .local v1, callingUid:I
    iget v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v1, v9, :cond_1

    .line 1867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get calling package name for calling uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v9}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 1868
    #getter for: Landroid/location/LocationManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/location/LocationManager;->access$600(Landroid/location/LocationManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1869
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1870
    .local v5, packageNames:[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v9, v5

    if-lez v9, :cond_2

    .line 1871
    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 1872
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calling uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "package name is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v9}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1874
    :cond_2
    const-string v9, "Get calling package name for calling uid fail, use processName"

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v9}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 1875
    iget-object v9, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v9, p0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    goto :goto_0
.end method
