.class final Lcom/android/server/ConnectivityService$CallerAppInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallerAppInfo"
.end annotation


# instance fields
.field mCallerApp:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 4

    .prologue
    .line 4886
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CallerAppInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4884
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ConnectivityService$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 4887
    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4888
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4889
    .local v1, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConnectivityService$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 4890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amoiSystemSecurityCheck putInt caller is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v2}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4891
    return-void
.end method
