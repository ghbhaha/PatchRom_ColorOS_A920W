.class Landroid/content/Intent$PromptThread;
.super Ljava/lang/Thread;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 7464
    iput-object p1, p0, Landroid/content/Intent$PromptThread;->this$0:Landroid/content/Intent;

    .line 7465
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 7466
    iput-object p4, p0, Landroid/content/Intent$PromptThread;->mMessage:Ljava/lang/String;

    .line 7467
    iput-object p2, p0, Landroid/content/Intent$PromptThread;->mContext:Landroid/content/Context;

    .line 7468
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/content/Intent;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/content/Intent;->access$100(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7469
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7473
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 7475
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent$PromptThread;->mLooper:Landroid/os/Looper;

    .line 7476
    iget-object v0, p0, Landroid/content/Intent$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/Intent$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7478
    iget-object v0, p0, Landroid/content/Intent$PromptThread;->this$0:Landroid/content/Intent;

    const-string v1, "PromptThread run"

    #calls: Landroid/content/Intent;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/content/Intent;->access$100(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7479
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 7480
    return-void
.end method
