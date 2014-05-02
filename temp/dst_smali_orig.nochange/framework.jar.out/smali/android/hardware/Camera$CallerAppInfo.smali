.class final Landroid/hardware/Camera$CallerAppInfo;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerAppInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Landroid/hardware/Camera;)V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 5102
    iput-object p1, p0, Landroid/hardware/Camera$CallerAppInfo;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5099
    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 5100
    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 5103
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    .line 5104
    .local v1, at:Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v10

    #setter for: Landroid/hardware/Camera;->mSysContext:Landroid/content/Context;
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2402(Landroid/hardware/Camera;Landroid/content/Context;)Landroid/content/Context;

    .line 5105
    #getter for: Landroid/hardware/Camera;->mSysContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x103006b

    invoke-virtual {v10, v11}, Landroid/content/Context;->setTheme(I)V

    .line 5107
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5109
    .local v2, callingPid:I
    #getter for: Landroid/hardware/Camera;->mSysContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5110
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9

    .line 5111
    .local v9, processList:Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5112
    .local v5, index:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5113
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v8, v10

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 5114
    .local v8, processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v10, :cond_0

    .line 5116
    :try_start_0
    #getter for: Landroid/hardware/Camera;->mSysContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 5117
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 5118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create context for calling app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5139
    .end local v8           #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return-void

    .line 5119
    .restart local v8       #processInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v4

    .line 5120
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

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    .line 5121
    #getter for: Landroid/hardware/Camera;->mSysContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/hardware/Camera;->access$2400(Landroid/hardware/Camera;)Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 5122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5123
    .local v3, callingUid:I
    iget v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v3, v10, :cond_1

    .line 5124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get calling package name for calling uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    .line 5125
    iget-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 5126
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 5127
    .local v6, packageNames:[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v10, v6

    if-lez v10, :cond_2

    .line 5128
    const/4 v10, 0x0

    aget-object v10, v6, v10

    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 5129
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

    iget-object v11, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    goto :goto_0

    .line 5131
    :cond_2
    const-string v10, "Get calling package name for calling uid fail, use processName"

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v10}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    .line 5132
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, Landroid/hardware/Camera$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    goto :goto_0
.end method
