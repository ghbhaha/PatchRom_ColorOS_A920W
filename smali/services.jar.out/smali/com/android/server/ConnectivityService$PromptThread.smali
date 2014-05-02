.class Lcom/android/server/ConnectivityService$PromptThread;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 4898
    iput-object p1, p0, Lcom/android/server/ConnectivityService$PromptThread;->this$0:Lcom/android/server/ConnectivityService;

    .line 4899
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4900
    iput-object p4, p0, Lcom/android/server/ConnectivityService$PromptThread;->mMessage:Ljava/lang/String;

    .line 4901
    iput-object p2, p0, Lcom/android/server/ConnectivityService$PromptThread;->mContext:Landroid/content/Context;

    .line 4902
    const-string v0, "new PromptThread"

    #calls: Lcom/android/server/ConnectivityService;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4903
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4907
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4909
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$PromptThread;->mLooper:Landroid/os/Looper;

    .line 4910
    iget-object v0, p0, Lcom/android/server/ConnectivityService$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4912
    iget-object v0, p0, Lcom/android/server/ConnectivityService$PromptThread;->this$0:Lcom/android/server/ConnectivityService;

    const-string v1, "PromptThread run"

    #calls: Lcom/android/server/ConnectivityService;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 4913
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4914
    return-void
.end method
