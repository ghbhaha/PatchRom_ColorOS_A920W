.class Landroid/hardware/Camera$PromptThread;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 5146
    iput-object p1, p0, Landroid/hardware/Camera$PromptThread;->this$0:Landroid/hardware/Camera;

    .line 5147
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5148
    iput-object p4, p0, Landroid/hardware/Camera$PromptThread;->mMessage:Ljava/lang/String;

    .line 5149
    iput-object p2, p0, Landroid/hardware/Camera$PromptThread;->mContext:Landroid/content/Context;

    .line 5150
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    .line 5151
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5155
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/Camera$PromptThread;->mLooper:Landroid/os/Looper;

    .line 5158
    iget-object v0, p0, Landroid/hardware/Camera$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/Camera$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5160
    iget-object v0, p0, Landroid/hardware/Camera$PromptThread;->this$0:Landroid/hardware/Camera;

    const-string v1, "PromptThread run"

    #calls: Landroid/hardware/Camera;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$2500(Landroid/hardware/Camera;Ljava/lang/String;)V

    .line 5161
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5162
    return-void
.end method
