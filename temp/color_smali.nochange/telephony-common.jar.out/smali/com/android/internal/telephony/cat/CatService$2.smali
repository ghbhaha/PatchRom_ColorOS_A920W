.class Lcom/android/internal/telephony/cat/CatService$2;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 1748
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, action:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CatServiceReceiver action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1751
    const-string v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1752
    const-string v7, "remove event list because of ipo shutdown"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1753
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v8, 0x0

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->access$002(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 1768
    :cond_0
    :goto_0
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1769
    const-string v7, "simId"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1770
    .local v3, id:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM state change, id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v7

    if-ne v3, v7, :cond_1

    .line 1772
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-string v8, "ss"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->access$302(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 1773
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #setter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static {v7, v3}, Lcom/android/internal/telephony/cat/CatService;->access$402(Lcom/android/internal/telephony/cat/CatService;I)I

    .line 1774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simIdfromIntent["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->simIdfromIntent:I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/CatService;->access$400(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "],simState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->simState:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    .end local v3           #id:I
    :cond_1
    :goto_1
    return-void

    .line 1754
    :cond_2
    const-string v7, "android.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1755
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v7

    const-string v8, "simId"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 1759
    const-string v7, "action"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1760
    .local v5, ivsrAction:Ljava/lang/String;
    const-string v7, "start"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1761
    const-string v7, "[IVSR set IVSR flag"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/cat/CatService;->isIvsrBootUp:Z
    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->access$202(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 1763
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/16 v8, 0xe

    const-wide/32 v9, 0xea60

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/telephony/cat/CatService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1777
    .end local v5           #ivsrAction:Ljava/lang/String;
    :cond_3
    const-string v7, "android.intent.action.ACTION_SIM_DETECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1779
    const-string v7, "get SIM_DETECTED begin"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1780
    const-string v7, "simDetectStatus"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1781
    .local v6, status:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_DETECTED, status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1782
    const-string v7, "REMOVE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1784
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1785
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_5

    .line 1787
    const/4 v4, 0x1

    .line 1789
    .local v4, isSimInserted:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v7

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/ITelephony;->isSimInsert(I)Z

    move-result v4

    .line 1790
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_DETECTED, isSimInserted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1791
    if-nez v4, :cond_4

    .line 1794
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService$2;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #isSimInserted:Z
    :cond_4
    :goto_2
    const-string v7, "get SIM_DETECTED end"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1797
    .restart local v2       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v4       #isSimInserted:Z
    :catch_0
    move-exception v1

    .line 1799
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "Query Sim insert status fail"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1804
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #isSimInserted:Z
    :cond_5
    const-string v7, "ITelephony is null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method
