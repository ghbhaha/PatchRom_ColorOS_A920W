.class Landroid/media/MediaRecorder$PromptThread;
.super Ljava/lang/Thread;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 1445
    iput-object p1, p0, Landroid/media/MediaRecorder$PromptThread;->this$0:Landroid/media/MediaRecorder;

    .line 1446
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1447
    iput-object p4, p0, Landroid/media/MediaRecorder$PromptThread;->mMessage:Ljava/lang/String;

    .line 1448
    iput-object p2, p0, Landroid/media/MediaRecorder$PromptThread;->mContext:Landroid/content/Context;

    .line 1449
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/media/MediaRecorder;->access$400(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 1450
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1456
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRecorder$PromptThread;->mLooper:Landroid/os/Looper;

    .line 1457
    iget-object v0, p0, Landroid/media/MediaRecorder$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/MediaRecorder$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1459
    iget-object v0, p0, Landroid/media/MediaRecorder$PromptThread;->this$0:Landroid/media/MediaRecorder;

    const-string v1, "PromptThread run"

    #calls: Landroid/media/MediaRecorder;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/MediaRecorder;->access$400(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 1460
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1461
    return-void
.end method
