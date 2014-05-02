.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$1;,
        Landroid/provider/Settings$PromptThread;,
        Landroid/provider/Settings$CallerAppInfo;,
        Landroid/provider/Settings$PermissionMode;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Global;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.settings.ACCESSIBILITY_SETTINGS"

.field public static final ACTION_ADD_ACCOUNT:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DETAILS_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DEVICE_INFO_SETTINGS:Ljava/lang/String; = "android.settings.DEVICE_INFO_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"

.field public static final ACTION_DRIVE_SETTINGS:Ljava/lang/String; = "android.settings.DRIVE_SETTINGS"

.field public static final ACTION_DREAM_SETTINGS:Ljava/lang/String; = "android.settings.DREAM_SETTINGS"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "QCOM ADD"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->QCOM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SUBTYPE_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_NFCSHARING_SETTINGS:Ljava/lang/String; = "android.settings.NFCSHARING_SETTINGS"

.field public static final ACTION_NFC_SETTINGS:Ljava/lang/String; = "android.settings.NFC_SETTINGS"

.field public static final ACTION_PRIVACY_SETTINGS:Ljava/lang/String; = "android.settings.PRIVACY_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "android.settings.SHOW_INPUT_METHOD_PICKER"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_INSERT:Ljava/lang/String; = "com.android.settings.USER_DICTIONARY_INSERT"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_WIFI_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_DISPLAY_SETTINGS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field public static final EXTRA_AUTHORITIES:Ljava/lang/String; = "authorities"

.field public static final EXTRA_INPUT_METHOD_ID:Ljava/lang/String; = "input_method_id"

.field private static final JID_RESOURCE_PREFIX:Ljava/lang/String; = "android"

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "Provider/Settings"

.field private static sCheckList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7152
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method private static amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 7178
    if-eqz p0, :cond_0

    .line 7179
    const-string v0, "amoiSystemCheckGPS"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7184
    :goto_0
    return-void

    .line 7181
    :cond_0
    const-string v0, "amoiSystemCheckGPS"

    const-string/jumbo v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static amoiSystemSecurityCheck(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 6978
    const/4 v0, 0x1

    return v0
.end method

.method private static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 6966
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6968
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6969
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 6972
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p1
    :goto_0
    return-object p1

    .line 6970
    .restart local p1
    :catch_0
    move-exception v1

    .line 6971
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager Name Not Found for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCallerPermission(Landroid/provider/Settings$CallerAppInfo;Ljava/lang/String;)Landroid/provider/Settings$PermissionMode;
    .locals 16
    .parameter "callerInfo"
    .parameter "appWant"

    .prologue
    .line 7069
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/provider/Settings$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 7070
    .local v8, appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 7071
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 7073
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v14, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 7077
    :goto_0
    invoke-static {v8}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    .line 7078
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 7079
    .local v15, systemApp:Z
    :goto_1
    const/4 v12, 0x0

    .line 7080
    .local v12, needCheck:Z
    if-eqz v15, :cond_1

    .line 7081
    sget-object v1, Landroid/provider/Settings;->sCheckList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7082
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->sCheckList:[Ljava/lang/String;

    .line 7086
    :cond_0
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    sget-object v1, Landroid/provider/Settings;->sCheckList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 7087
    sget-object v1, Landroid/provider/Settings;->sCheckList:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7088
    const/4 v12, 0x1

    .line 7094
    .end local v11           #index:I
    :cond_1
    if-eqz v15, :cond_2

    if-eqz v12, :cond_a

    .line 7095
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/provider/Settings$CallerAppInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const-string/jumbo v6, "name DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 7097
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_5

    .line 7098
    const-string v1, "cursor null!!"

    invoke-static {v1}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    .line 7099
    sget-object v1, Landroid/provider/Settings$PermissionMode;->ASK:Landroid/provider/Settings$PermissionMode;

    .line 7124
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_3
    return-object v1

    .line 7074
    .end local v12           #needCheck:Z
    .end local v15           #systemApp:Z
    :catch_0
    move-exception v10

    .line 7075
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageManager Name Not Found for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 7078
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 7086
    .restart local v11       #index:I
    .restart local v12       #needCheck:Z
    .restart local v15       #systemApp:Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 7101
    .end local v11           #index:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v13, "query"

    .line 7103
    .local v13, permission:Ljava/lang/String;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 7104
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7105
    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 7110
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 7112
    invoke-static {v13}, Landroid/provider/Settings;->amoiLog(Ljava/lang/String;)V

    .line 7113
    if-nez v13, :cond_7

    .line 7114
    sget-object v1, Landroid/provider/Settings$PermissionMode;->ASK:Landroid/provider/Settings$PermissionMode;

    goto :goto_3

    .line 7110
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 7116
    :cond_7
    const-string v1, "enable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7117
    sget-object v1, Landroid/provider/Settings$PermissionMode;->ALLOW:Landroid/provider/Settings$PermissionMode;

    goto :goto_3

    .line 7118
    :cond_8
    const-string v1, "disable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7119
    sget-object v1, Landroid/provider/Settings$PermissionMode;->DENY:Landroid/provider/Settings$PermissionMode;

    goto :goto_3

    .line 7121
    :cond_9
    sget-object v1, Landroid/provider/Settings$PermissionMode;->ASK:Landroid/provider/Settings$PermissionMode;

    goto :goto_3

    .line 7124
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #permission:Ljava/lang/String;
    :cond_a
    sget-object v1, Landroid/provider/Settings$PermissionMode;->ALLOW:Landroid/provider/Settings$PermissionMode;

    goto :goto_3
.end method

.method public static getGTalkDeviceId(J)Ljava/lang/String;
    .locals 2
    .parameter "androidId"

    .prologue
    .line 6955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
