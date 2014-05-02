.class Landroid/net/http/AndroidHttpClient$PromptThread;
.super Ljava/lang/Thread;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 578
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->this$0:Landroid/net/http/AndroidHttpClient;

    .line 579
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 580
    iput-object p4, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->mMessage:Ljava/lang/String;

    .line 581
    iput-object p2, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->mContext:Landroid/content/Context;

    .line 582
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 583
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 587
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 589
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->mLooper:Landroid/os/Looper;

    .line 590
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 592
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient$PromptThread;->this$0:Landroid/net/http/AndroidHttpClient;

    const-string v1, "PromptThread run"

    #calls: Landroid/net/http/AndroidHttpClient;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->access$300(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 594
    return-void
.end method
