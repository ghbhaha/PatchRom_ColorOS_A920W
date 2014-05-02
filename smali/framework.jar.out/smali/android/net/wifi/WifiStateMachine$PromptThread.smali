.class Landroid/net/wifi/WifiStateMachine$PromptThread;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 5609
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 5610
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5611
    iput-object p4, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->mMessage:Ljava/lang/String;

    .line 5612
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->mContext:Landroid/content/Context;

    .line 5613
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/net/wifi/WifiStateMachine;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5614
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5618
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5620
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->mLooper:Landroid/os/Looper;

    .line 5621
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5623
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$PromptThread;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v1, "PromptThread run"

    #calls: Landroid/net/wifi/WifiStateMachine;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$21800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 5624
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5625
    return-void
.end method
