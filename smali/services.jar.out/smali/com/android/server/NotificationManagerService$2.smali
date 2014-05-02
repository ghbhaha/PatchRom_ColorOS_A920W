.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 524
    .local v9, action:Ljava/lang/String;
    const/16 v16, 0x0

    .line 525
    .local v16, queryRestart:Z
    const/4 v14, 0x0

    .line 527
    .local v14, packageChanged:Z
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 532
    :cond_0
    const/4 v15, 0x0

    .line 533
    .local v15, pkgList:[Ljava/lang/String;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    const-string v1, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 557
    :goto_0
    if-eqz v15, :cond_3

    array-length v1, v15

    if-lez v1, :cond_3

    .line 558
    move-object v10, v15

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v2, v10, v12

    .line 559
    .local v2, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v16, :cond_6

    const/4 v5, 0x1

    :goto_2
    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    .line 558
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 535
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :cond_1
    if-eqz v16, :cond_2

    .line 536
    const-string v1, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 539
    .local v18, uri:Landroid/net/Uri;
    if-nez v18, :cond_4

    .line 613
    .end local v15           #pkgList:[Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    return-void

    .line 542
    .restart local v15       #pkgList:[Ljava/lang/String;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 543
    .restart local v2       #pkgName:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 546
    if-eqz v14, :cond_5

    .line 548
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    .line 550
    .local v11, enabled:I
    const/4 v1, 0x1

    if-eq v11, v1, :cond_3

    if-eqz v11, :cond_3

    .line 555
    .end local v11           #enabled:I
    :cond_5
    const/4 v1, 0x1

    new-array v15, v1, [Ljava/lang/String;

    .end local v15           #pkgList:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v2, v15, v1

    .restart local v15       #pkgList:[Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v18           #uri:Landroid/net/Uri;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 563
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #pkgList:[Ljava/lang/String;
    :cond_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_3

    .line 567
    :cond_8
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_3

    .line 569
    :cond_9
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 573
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    const-string v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    #setter for: Lcom/android/server/NotificationManagerService;->mCallRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    goto :goto_3

    .line 576
    :cond_a
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 577
    const-string v1, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 578
    .local v8, userHandle:I
    if-ltz v8, :cond_3

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    goto/16 :goto_3

    .line 581
    .end local v8           #userHandle:I
    :cond_b
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3

    .line 588
    :cond_c
    const-string v1, "androi.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mIPOBootup:Z
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_3

    .line 593
    :cond_d
    const-string v1, "com.android.settings.LED_NOTIFICATION_COLOR"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 594
    const-string v1, "status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 595
    .local v17, status:I
    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver onReceive status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-nez v17, :cond_e

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/high16 v3, -0x1

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;I)I

    goto/16 :goto_3

    .line 598
    :cond_e
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_f

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const v3, -0xff0100

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;I)I

    goto/16 :goto_3

    .line 601
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1802(Lcom/android/server/NotificationManagerService;I)I

    goto/16 :goto_3

    .line 602
    .end local v17           #status:I
    :cond_10
    const-string v1, "com.android.settings.LED_FLASH_FREQUENCY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 603
    const-string v1, "status"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 604
    .restart local v17       #status:I
    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerReceiver onReceive status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/16 v1, 0xbb8

    move/from16 v0, v17

    if-ne v0, v1, :cond_11

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v3, 0x1f4

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;I)I

    .line 607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v3, 0x7d0

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;I)I

    goto/16 :goto_3

    .line 609
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    const/16 v3, 0x3e8

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;I)I

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move/from16 v0, v17

    add-int/lit16 v3, v0, -0x3e8

    #setter for: Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v1, v3}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;I)I

    goto/16 :goto_3
.end method
