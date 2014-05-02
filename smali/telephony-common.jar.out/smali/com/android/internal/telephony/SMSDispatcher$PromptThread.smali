.class Lcom/android/internal/telephony/SMSDispatcher$PromptThread;
.super Ljava/lang/Thread;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field private mMessage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "threadName"
    .parameter "message"

    .prologue
    .line 3071
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    .line 3072
    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3073
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->mMessage:Ljava/lang/String;

    .line 3074
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->mContext:Landroid/content/Context;

    .line 3075
    const-string v0, "new PromptThread"

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 3076
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3080
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3082
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->mLooper:Landroid/os/Looper;

    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->mMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3085
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$PromptThread;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v1, "PromptThread run"

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->amoiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3087
    return-void
.end method
