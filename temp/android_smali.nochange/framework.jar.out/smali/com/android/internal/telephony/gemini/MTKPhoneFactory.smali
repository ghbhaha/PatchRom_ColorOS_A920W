.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/android/internal/telephony/Phone;

.field private static b:Lcom/android/internal/telephony/CommandsInterface;

.field private static c:Lcom/android/internal/telephony/CommandsInterface;

.field private static d:Z

.field private static e:Lcom/android/internal/telephony/PhoneNotifier;

.field private static f:Landroid/os/Looper;

.field private static g:Landroid/content/Context;

.field private static h:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 88
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 312
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 314
    monitor-exit v1

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 319
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 321
    monitor-exit v1

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 274
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 291
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 284
    goto :goto_0

    .line 289
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3
    .parameter

    .prologue
    .line 326
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 102
    const-class v6, Lcom/android/internal/telephony/Phone;

    monitor-enter v6

    .line 103
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    if-nez v1, :cond_4

    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Landroid/os/Looper;

    .line 105
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    .line 107
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 112
    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x3

    const-string v7, "PHONE"

    invoke-direct {v4, v5, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v2

    .line 120
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 125
    :try_start_2
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v5, "com.android.internal.telephony"

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v2

    .line 130
    :goto_1
    if-nez v4, :cond_5

    .line 142
    :try_start_3
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 148
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Mode set to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string/jumbo v4, "persist.radio.default_sim_mode"

    const/16 v5, 0xc

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 154
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gemini Network Mode set to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_cdma_subscription"

    const/4 v8, 0x1

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 159
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cdma Subscription set to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v4, "persist.radio.default_sim"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 164
    if-ne v4, v10, :cond_b

    .line 166
    const-string/jumbo v4, "persist.radio.default_sim"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v4, "PHONE"

    const-string v5, "Set Default Phone as SIM1 during first boot-up"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 172
    :goto_2
    const-string v4, "com.mtk.3G_SWITCH"

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 173
    const-string v9, "gsm.3gswitch"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_2

    move v2, v3

    .line 174
    :cond_2
    const-string v9, "3G_SIM_ID"

    invoke-interface {v4, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 175
    const-string v2, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initiate 3G Sim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {v7}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v2

    .line 178
    if-ne v2, v3, :cond_7

    .line 179
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v8, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 180
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 181
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 182
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_3
    :goto_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    .line 255
    :cond_4
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/ITelephonyRegistry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->h:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->updateRegistryCellLocation()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 263
    :goto_4
    :try_start_5
    monitor-exit v6

    .line 264
    return-void

    .line 126
    :catch_0
    move-exception v4

    move v4, v3

    .line 127
    goto/16 :goto_1

    .line 132
    :cond_5
    if-le v1, v8, :cond_6

    .line 133
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :cond_6
    const-wide/16 v4, 0x7d0

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 137
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 183
    :cond_7
    if-ne v2, v11, :cond_8

    .line 184
    :try_start_7
    new-instance v2, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v8, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 185
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 186
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 187
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 188
    :cond_8
    const/4 v7, 0x4

    if-ne v2, v7, :cond_3

    .line 189
    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "preferred_network_mode_2"

    const/4 v9, 0x0

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 209
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getTelephonyMode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v3, v4

    .line 218
    :goto_5
    :pswitch_0
    const-string v4, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Mode 2 set to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v4, Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v1, v8, v7}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 220
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v3, v8, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 230
    :goto_6
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 231
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 232
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v3, v4, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 234
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct {v3, p0, v4, v2, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 237
    new-instance v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    new-instance v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-direct {v4, v7, v8, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V

    sput-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 240
    const-string v4, "PHONE"

    const-string v5, "Creating GeminiPhone"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 242
    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 245
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v3

    .line 247
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 248
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    :pswitch_1
    move v1, v3

    .line 211
    goto/16 :goto_5

    .line 222
    :cond_9
    if-nez v4, :cond_a

    .line 223
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v8, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 224
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v1, p0, v3, v8, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    goto :goto_6

    .line 226
    :cond_a
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, p0, v4, v8, v7}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 227
    new-instance v3, Lcom/android/internal/telephony/RIL;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v8, v4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 259
    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_b
    move v5, v4

    goto/16 :goto_2

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
