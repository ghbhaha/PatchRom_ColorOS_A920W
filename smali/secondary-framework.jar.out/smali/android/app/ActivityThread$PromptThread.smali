.class Landroid/app/ActivityThread$PromptThread;
.super Ljava/lang/Thread;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 5767
    iput-object p1, p0, Landroid/app/ActivityThread$PromptThread;->this$0:Landroid/app/ActivityThread;

    .line 5768
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5769
    iput-object p4, p0, Landroid/app/ActivityThread$PromptThread;->mMessage:Ljava/lang/String;

    .line 5770
    iput-object p2, p0, Landroid/app/ActivityThread$PromptThread;->mContext:Landroid/content/Context;

    .line 5771
    const-string v0, "new PromptThread"

    #calls: Landroid/app/ActivityThread;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/app/ActivityThread;->access$3600(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 5772
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5776
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5778
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread$PromptThread;->mLooper:Landroid/os/Looper;

    .line 5779
    iget-object v0, p0, Landroid/app/ActivityThread$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/ActivityThread$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5781
    iget-object v0, p0, Landroid/app/ActivityThread$PromptThread;->this$0:Landroid/app/ActivityThread;

    const-string v1, "PromptThread run"

    #calls: Landroid/app/ActivityThread;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$3600(Landroid/app/ActivityThread;Ljava/lang/String;)V

    .line 5782
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5783
    return-void
.end method