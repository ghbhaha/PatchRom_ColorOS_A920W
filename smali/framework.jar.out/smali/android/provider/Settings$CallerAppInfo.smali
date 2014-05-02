.class final Landroid/provider/Settings$CallerAppInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerAppInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 7132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7129
    iput-object v6, p0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 7130
    iput-object v6, p0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 7133
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v1

    .line 7134
    .local v1, at:Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    .line 7135
    .local v3, context:Landroid/content/Context;
    const v6, 0x103006b

    invoke-virtual {v3, v6}, Landroid/content/Context;->setTheme(I)V

    .line 7137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 7139
    .local v2, callingPid:I
    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7140
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7141
    .local v5, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 7142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "amoiSystemSecurityCheck putInt caller is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/provider/Settings;->access$000(Ljava/lang/String;)V

    .line 7144
    :try_start_0
    iget-object v6, p0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    .line 7145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create context for calling app:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V
    invoke-static {v6}, Landroid/provider/Settings;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7149
    :goto_0
    return-void

    .line 7146
    :catch_0
    move-exception v4

    .line 7147
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v3, p0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    goto :goto_0
.end method
