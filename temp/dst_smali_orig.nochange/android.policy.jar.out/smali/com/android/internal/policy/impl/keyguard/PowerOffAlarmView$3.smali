.class Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;
.super Lcom/mediatek/common/voicecommand/VoiceCommandListener;
.source "PowerOffAlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->registerVoiceCmdService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    invoke-direct {p0, p2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 16
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 367
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 368
    .local v1, actionExtraResult:I
    const-string v11, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, errorString:Ljava/lang/String;
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    .line 370
    packed-switch p2, :pswitch_data_0

    .line 431
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 372
    :pswitch_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    .line 374
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->voiceCmdManager:Lcom/mediatek/common/voicecommand/IVoiceCommandManager;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$500(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Lcom/mediatek/common/voicecommand/IVoiceCommandManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v11, v12, v13, v14, v15}, Lcom/mediatek/common/voicecommand/IVoiceCommandManager;->sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_2
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 386
    .local v6, notifyResult:I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    .line 387
    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 388
    .local v2, commandId:I
    const-string v11, "PowerOffAlarm"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voice command id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v11, 0x5

    if-ne v2, v11, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->snooze()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$300(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    .line 391
    :cond_1
    const/16 v11, 0x10

    if-ne v2, v11, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOn()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$600(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    .line 393
    :cond_2
    const/16 v11, 0x11

    if-ne v2, v11, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #calls: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->powerOff()V
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$700(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)V

    goto :goto_0

    .line 403
    .end local v2           #commandId:I
    .end local v6           #notifyResult:I
    :cond_3
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 404
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 405
    const-string v11, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 406
    .local v5, indicatorResult:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    .line 407
    const-string v11, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 408
    .local v10, stringCommonInfo:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f9

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, quotaStart:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fa

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, quotaEnd:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 411
    const-string v8, "\""

    .line 412
    const-string v7, "\""

    .line 414
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v9, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500fb

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$400(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x20500f7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$800(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 423
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTips:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$800(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$900(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->mVcTipsContainer:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;->access$900(Lcom/android/internal/policy/impl/keyguard/PowerOffAlarmView;)Landroid/widget/LinearLayout;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
