.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$1;,
        Landroid/location/LocationManager$PromptThread;,
        Landroid/location/LocationManager$CallerAppInfo;,
        Landroid/location/LocationManager$PermissionMode;,
        Landroid/location/LocationManager$GpsStatusListenerTransport;,
        Landroid/location/LocationManager$ListenerTransport;
    }
.end annotation


# static fields
.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field public static final EXTRA_GPS_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final GPS_FIX_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_FIX_CHANGE"

.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field private static sCheckList:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGpsStatus:Landroid/location/GpsStatus;

.field private final mGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$Listener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/LocationListener;",
            "Landroid/location/LocationManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/GpsStatus$NmeaListener;",
            "Landroid/location/LocationManager$GpsStatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityConfirm:Z

.field private final mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    .line 86
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    .line 1697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/LocationManager;->mSecurityConfirm:Z

    .line 306
    iput-object p2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 307
    iput-object p1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 308
    return-void
.end method

.method static synthetic access$100(Landroid/location/LocationManager;)Landroid/location/ILocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic access$600(Landroid/location/LocationManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/location/LocationManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1911
    if-eqz p1, :cond_0

    .line 1912
    const-string v0, "amoiSystemCheckLocation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :goto_0
    return-void

    .line 1914
    :cond_0
    const-string v0, "amoiSystemCheckLocation"

    const-string/jumbo v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkCriteria(Landroid/location/Criteria;)V
    .locals 3
    .parameter "criteria"

    .prologue
    .line 1647
    if-nez p0, :cond_0

    .line 1648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_0
    return-void
.end method

.method private static checkGeofence(Landroid/location/Geofence;)V
    .locals 3
    .parameter "fence"

    .prologue
    .line 1674
    if-nez p0, :cond_0

    .line 1675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid geofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    :cond_0
    return-void
.end method

.method private static checkListener(Landroid/location/LocationListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1653
    if-nez p0, :cond_0

    .line 1654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1656
    :cond_0
    return-void
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1659
    if-nez p1, :cond_0

    .line 1660
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pending intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1662
    :cond_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pending intent msut be targeted to package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1665
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 1666
    throw v0

    .line 1668
    :cond_1
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1671
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1641
    if-nez p0, :cond_0

    .line 1642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1644
    :cond_0
    return-void
.end method

.method private createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    .locals 1
    .parameter "name"
    .parameter "properties"

    .prologue
    .line 311
    new-instance v0, Landroid/location/LocationProvider;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    return-object v0
.end method

.method private getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "appName"

    .prologue
    .line 1705
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1707
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1708
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1711
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local p2
    :goto_0
    return-object p2

    .line 1709
    .restart local p2
    :catch_0
    move-exception v1

    .line 1710
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager Name Not Found for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCallerPermission(Landroid/location/LocationManager$CallerAppInfo;Ljava/lang/String;)Landroid/location/LocationManager$PermissionMode;
    .locals 16
    .parameter "callerInfo"
    .parameter "appWant"

    .prologue
    .line 1783
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/location/LocationManager$CallerAppInfo;->mCallerApp:Ljava/lang/String;

    .line 1784
    .local v8, appName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1785
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 1787
    .local v7, appInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v14, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1791
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V

    .line 1792
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v15, 0x1

    .line 1793
    .local v15, systemApp:Z
    :goto_1
    const/4 v12, 0x0

    .line 1794
    .local v12, needCheck:Z
    if-eqz v15, :cond_1

    .line 1795
    sget-object v1, Landroid/location/LocationManager;->sCheckList:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1796
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/location/LocationManager;->sCheckList:[Ljava/lang/String;

    .line 1800
    :cond_0
    const/4 v11, 0x0

    .local v11, index:I
    :goto_2
    sget-object v1, Landroid/location/LocationManager;->sCheckList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v11, v1, :cond_1

    .line 1801
    sget-object v1, Landroid/location/LocationManager;->sCheckList:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1802
    const/4 v12, 0x1

    .line 1808
    .end local v11           #index:I
    :cond_1
    if-eqz v15, :cond_2

    if-eqz v12, :cond_a

    .line 1809
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string/jumbo v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const-string/jumbo v6, "name DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1811
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_5

    .line 1812
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->ASK:Landroid/location/LocationManager$PermissionMode;

    .line 1837
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_3
    return-object v1

    .line 1788
    .end local v12           #needCheck:Z
    .end local v15           #systemApp:Z
    :catch_0
    move-exception v10

    .line 1789
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

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/location/LocationManager;->amoiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1792
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1800
    .restart local v11       #index:I
    .restart local v12       #needCheck:Z
    .restart local v15       #systemApp:Z
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1814
    .end local v11           #index:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v13, "query"

    .line 1816
    .local v13, permission:Ljava/lang/String;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1817
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1818
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1823
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1826
    if-nez v13, :cond_7

    .line 1827
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->ASK:Landroid/location/LocationManager$PermissionMode;

    goto :goto_3

    .line 1823
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1829
    :cond_7
    const-string v1, "enable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1830
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->ALLOW:Landroid/location/LocationManager$PermissionMode;

    goto :goto_3

    .line 1831
    :cond_8
    const-string v1, "disable"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1832
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->DENY:Landroid/location/LocationManager$PermissionMode;

    goto :goto_3

    .line 1834
    :cond_9
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->ASK:Landroid/location/LocationManager$PermissionMode;

    goto :goto_3

    .line 1837
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #permission:Ljava/lang/String;
    :cond_a
    sget-object v1, Landroid/location/LocationManager$PermissionMode;->ALLOW:Landroid/location/LocationManager$PermissionMode;

    goto :goto_3
.end method

.method private requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "request"
    .parameter "listener"
    .parameter "looper"
    .parameter "intent"

    .prologue
    .line 850
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, packageName:Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/location/LocationManager;->wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;

    move-result-object v2

    .line 856
    .local v2, transport:Landroid/location/LocationManager$ListenerTransport;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1, v2, p4, v1}, Landroid/location/ILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private wrapListener(Landroid/location/LocationListener;Landroid/os/Looper;)Landroid/location/LocationManager$ListenerTransport;
    .locals 3
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 836
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 843
    :goto_0
    return-object v0

    .line 837
    :cond_0
    iget-object v2, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    .line 838
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager$ListenerTransport;

    .line 839
    .local v0, transport:Landroid/location/LocationManager$ListenerTransport;
    if-nez v0, :cond_1

    .line 840
    new-instance v0, Landroid/location/LocationManager$ListenerTransport;

    .end local v0           #transport:Landroid/location/LocationManager$ListenerTransport;
    invoke-direct {v0, p0, p1, p2}, Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 842
    .restart local v0       #transport:Landroid/location/LocationManager$ListenerTransport;
    :cond_1
    iget-object v1, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    monitor-exit v2

    goto :goto_0

    .line 844
    .end local v0           #transport:Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "request"
    .parameter "fence"
    .parameter "intent"

    .prologue
    .line 1005
    invoke-direct {p0, p3}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1006
    invoke-static {p2}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1009
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_0
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 1506
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1508
    const/4 v1, 0x1

    .line 1521
    :cond_0
    :goto_0
    return v1

    .line 1511
    :cond_1
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V

    .line 1512
    .local v2, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v1

    .line 1513
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 1514
    iget-object v3, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1516
    .end local v1           #result:Z
    .end local v2           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1517
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1518
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 1552
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1554
    const/4 v1, 0x1

    .line 1567
    :cond_0
    :goto_0
    return v1

    .line 1557
    :cond_1
    :try_start_0
    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GpsStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V

    .line 1558
    .local v2, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v1

    .line 1559
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 1560
    iget-object v3, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1562
    .end local v1           #result:Z
    .end local v2           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :catch_0
    move-exception v0

    .line 1563
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException in registerGpsStatusListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 956
    invoke-direct {p0, p8}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 957
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-gez v3, :cond_0

    const-wide p6, 0x7fffffffffffffffL

    .line 959
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/location/Geofence;->createCircle(DDF)Landroid/location/Geofence;

    move-result-object v1

    .line 960
    .local v1, fence:Landroid/location/Geofence;
    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v3, p6, p7}, Landroid/location/LocationRequest;->setExpireIn(J)Landroid/location/LocationRequest;

    move-result-object v2

    .line 962
    .local v2, request:Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v4, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v1, p8, v4}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 1188
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 1191
    .local v0, properties:Lcom/android/internal/location/ProviderProperties;
    const-string v1, "[^a-zA-Z0-9]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider name contains illegal character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1196
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, v0}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v10

    .line 1198
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method amoiSystemSecurityCheck()Z
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x1

    return v0
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1307
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1311
    :goto_0
    return-void

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1269
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1347
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->clearTestProviderStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :goto_0
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 327
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    .line 414
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileTime([J)I
    .locals 3
    .parameter "times"

    .prologue
    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->getFileTime([J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1685
    :goto_0
    return v1

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "getEPOTime: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1685
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1
    .parameter "status"

    .prologue
    .line 1598
    if-nez p1, :cond_0

    .line 1599
    new-instance p1, Landroid/location/GpsStatus;

    .end local p1
    invoke-direct {p1}, Landroid/location/GpsStatus;-><init>()V

    .line 1601
    .restart local p1
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {p1, v0}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GpsStatus;)V

    .line 1602
    return-object p1
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 7
    .parameter "provider"

    .prologue
    .line 1158
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1159
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1160
    .local v1, packageName:Ljava/lang/String;
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1, v3, v4, v5, v6}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1164
    .local v2, request:Landroid/location/LocationRequest;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1167
    :goto_0
    return-object v3

    .line 1165
    :catch_0
    move-exception v0

    .line 1166
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1130
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1133
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/location/ILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1136
    :goto_0
    return-object v2

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 360
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v1

    .line 361
    .local v1, properties:Lcom/android/internal/location/ProviderProperties;
    if-nez v1, :cond_0

    .line 368
    .end local v1           #properties:Lcom/android/internal/location/ProviderProperties;
    :goto_0
    return-object v2

    .line 364
    .restart local v1       #properties:Lcom/android/internal/location/ProviderProperties;
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/location/LocationManager;->createProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)Landroid/location/LocationProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 365
    .end local v1           #properties:Lcom/android/internal/location/ProviderProperties;
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 384
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 388
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 1105
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 1108
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1111
    :goto_0
    return v1

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAllGeofences(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1083
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "fence"
    .parameter "intent"

    .prologue
    .line 1059
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1060
    invoke-static {p1}, Landroid/location/LocationManager;->checkGeofence(Landroid/location/Geofence;)V

    .line 1061
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1531
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1532
    .local v1, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1533
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v1           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 1577
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mNmeaListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager$GpsStatusListenerTransport;

    .line 1578
    .local v1, transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    if-eqz v1, :cond_0

    .line 1579
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v2, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1584
    .end local v1           #transport:Landroid/location/LocationManager$GpsStatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException in unregisterGpsStatusListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 1033
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1214
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    return-void

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 897
    invoke-direct {p0, p1}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 898
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LocationManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 872
    invoke-static {p1}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 873
    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 877
    :try_start_0
    iget-object v3, p0, Landroid/location/LocationManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$ListenerTransport;

    .line 878
    .local v2, transport:Landroid/location/LocationManager$ListenerTransport;
    monitor-exit v4

    .line 879
    if-nez v2, :cond_0

    .line 886
    :goto_0
    return-void

    .line 878
    .end local v2           #transport:Landroid/location/LocationManager$ListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 882
    .restart local v2       #transport:Landroid/location/LocationManager$ListenerTransport;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v1}, Landroid/location/ILocationManager;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "LocationManager"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 636
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 637
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 639
    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 641
    .local v0, request:Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 642
    return-void
.end method

.method public requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 508
    invoke-static {p4}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 509
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 511
    const/4 v1, 0x0

    invoke-static {p4, p1, p2, p3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 513
    .local v0, request:Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 514
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "request"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 831
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 832
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 833
    return-void
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .parameter "request"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 805
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 806
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 807
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 3
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p5}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 538
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 540
    .local v0, request:Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v2, v2, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 541
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 3
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 446
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 448
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 450
    .local v0, request:Landroid/location/LocationRequest;
    invoke-direct {p0, v0, p5, v2, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 451
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 476
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 477
    invoke-static {p5}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 479
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 481
    .local v0, request:Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, p6, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 482
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "criteria"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 738
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 739
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 741
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 743
    .local v0, request:Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 744
    return-void
.end method

.method public requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .parameter "criteria"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 693
    invoke-static {p1}, Landroid/location/LocationManager;->checkCriteria(Landroid/location/Criteria;)V

    .line 694
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 696
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 698
    .local v0, request:Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 699
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "provider"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 715
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p2}, Landroid/location/LocationManager;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 718
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 720
    .local v0, request:Landroid/location/LocationRequest;
    invoke-direct {p0, v0, v5, v5, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 721
    return-void
.end method

.method public requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .parameter "provider"
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 664
    invoke-static {p1}, Landroid/location/LocationManager;->checkProvider(Ljava/lang/String;)V

    .line 665
    invoke-static {p2}, Landroid/location/LocationManager;->checkListener(Landroid/location/LocationListener;)V

    .line 667
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v1, v2, v3, v4}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 669
    .local v0, request:Landroid/location/LocationRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;Landroid/app/PendingIntent;)V

    .line 670
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1618
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1621
    :goto_0
    return v1

    .line 1619
    :catch_0
    move-exception v0

    .line 1620
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendExtraCommand: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1621
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1633
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1636
    :goto_0
    return v1

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException in sendNiResponse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 1289
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 1237
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete location object, missing timestamp or accuracy? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    .line 1242
    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 1251
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1, p2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :goto_0
    return-void

    .line 1246
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    throw v0

    .line 1252
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 1253
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 7
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 1329
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v6

    .line 1331
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LocationManager"

    const-string v1, "RemoteException"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateEPOFile()I
    .locals 3

    .prologue
    .line 1690
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1}, Landroid/location/ILocationManager;->updateEPOFile()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1694
    :goto_0
    return v1

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LocationManager"

    const-string/jumbo v2, "updateEPOFile: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1694
    const/4 v1, -0x1

    goto :goto_0
.end method
