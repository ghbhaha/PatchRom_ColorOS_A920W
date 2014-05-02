.class Landroid/media/AudioRecord$PromptThread;
.super Ljava/lang/Thread;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 1096
    iput-object p1, p0, Landroid/media/AudioRecord$PromptThread;->this$0:Landroid/media/AudioRecord;

    .line 1097
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1098
    iput-object p4, p0, Landroid/media/AudioRecord$PromptThread;->mMessage:Ljava/lang/String;

    .line 1099
    iput-object p2, p0, Landroid/media/AudioRecord$PromptThread;->mContext:Landroid/content/Context;

    .line 1100
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/media/AudioRecord;->access$300(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 1101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecord$PromptThread;->mLooper:Landroid/os/Looper;

    .line 1108
    iget-object v0, p0, Landroid/media/AudioRecord$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioRecord$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1110
    iget-object v0, p0, Landroid/media/AudioRecord$PromptThread;->this$0:Landroid/media/AudioRecord;

    const-string v1, "PromptThread run"

    #calls: Landroid/media/AudioRecord;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioRecord;->access$300(Landroid/media/AudioRecord;Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1112
    return-void
.end method
