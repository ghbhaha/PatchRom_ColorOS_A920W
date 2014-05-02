.class Landroid/location/LocationManager$PromptThread;
.super Ljava/lang/Thread;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 1889
    iput-object p1, p0, Landroid/location/LocationManager$PromptThread;->this$0:Landroid/location/LocationManager;

    .line 1890
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1891
    iput-object p4, p0, Landroid/location/LocationManager$PromptThread;->mMessage:Ljava/lang/String;

    .line 1892
    iput-object p2, p0, Landroid/location/LocationManager$PromptThread;->mContext:Landroid/content/Context;

    .line 1893
    const-string/jumbo v0, "new PromptThread"

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 1894
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1898
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1900
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$PromptThread;->mLooper:Landroid/os/Looper;

    .line 1901
    iget-object v0, p0, Landroid/location/LocationManager$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/location/LocationManager$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1903
    iget-object v0, p0, Landroid/location/LocationManager$PromptThread;->this$0:Landroid/location/LocationManager;

    const-string v1, "PromptThread run"

    #calls: Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/location/LocationManager;->access$700(Landroid/location/LocationManager;Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1905
    return-void
.end method
