.class Landroid/server/BluetoothService$PromptThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 3358
    iput-object p1, p0, Landroid/server/BluetoothService$PromptThread;->this$0:Landroid/server/BluetoothService;

    .line 3359
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3360
    iput-object p4, p0, Landroid/server/BluetoothService$PromptThread;->mMessage:Ljava/lang/String;

    .line 3361
    iput-object p2, p0, Landroid/server/BluetoothService$PromptThread;->mContext:Landroid/content/Context;

    .line 3362
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/server/BluetoothService;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;Ljava/lang/String;)V

    .line 3363
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3367
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3369
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/server/BluetoothService$PromptThread;->mLooper:Landroid/os/Looper;

    .line 3370
    iget-object v0, p0, Landroid/server/BluetoothService$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothService$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3372
    iget-object v0, p0, Landroid/server/BluetoothService$PromptThread;->this$0:Landroid/server/BluetoothService;

    const-string v1, "PromptThread run"

    #calls: Landroid/server/BluetoothService;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;Ljava/lang/String;)V

    .line 3373
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3374
    return-void
.end method
