.class Landroid/provider/Settings$PromptThread;
.super Ljava/lang/Thread;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Landroid/provider/Settings$PromptThread;->mMessage:Ljava/lang/String;

    iput-object p1, p0, Landroid/provider/Settings$PromptThread;->mContext:Landroid/content/Context;

    const-string v0, "new PromptThread"

    #calls: Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/provider/Settings;->access$000(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/Settings$PromptThread;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/provider/Settings$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/provider/Settings$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "PromptThread run"

    #calls: Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/provider/Settings;->access$000(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
