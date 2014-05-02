.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field private static final ICS_STORAGE_PATH_SD1:Ljava/lang/String; = "/mnt/sdcard"

.field private static final ICS_STORAGE_PATH_SD2:Ljava/lang/String; = "/mnt/sdcard2"

.field private static final PROP_SD_DEFAULT_PATH:Ljava/lang/String; = "persist.sys.sd.defaultpath"

.field private static final PROP_SD_EXTERNAL_PATH:Ljava/lang/String; = "external_sd_path"

.field private static final PROP_SD_INTERNAL_PATH:Ljava/lang/String; = "internal_sd_path"

.field private static final STORAGE_PATH_SD1:Ljava/lang/String; = "/storage/sdcard0"

.field private static final STORAGE_PATH_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMTKExternalCacheDir:Ljava/io/File;

.field private final mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field mTgtLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "tgtLooper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 329
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 330
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "StorageManager"

    const-string v1, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 313
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public static getDefaultDisplayPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 675
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, path:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 679
    .local v2, r:Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v3, "persist.sys.sd.defaultpath"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 705
    :goto_0
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/storage/sdcard0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    :cond_0
    const v3, 0x1040550

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-static {v1}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 713
    :cond_1
    :goto_1
    const-string v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultDisplayPath path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return-object v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException when get default path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const-string v3, "/mnt/sdcard2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "/storage/sdcard1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    :cond_3
    const v3, 0x10404eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-static {v1}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 647
    const-string v1, "/storage/sdcard0"

    .line 650
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "persist.sys.sd.defaultpath"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 656
    :goto_0
    const-string v2, "/mnt/sdcard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    const-string v1, "/storage/sdcard0"

    .line 658
    invoke-static {v1}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    .line 664
    :cond_0
    :goto_1
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultPath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when get default path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v2, "/mnt/sdcard2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    const-string v1, "/storage/sdcard1"

    .line 661
    invoke-static {v1}, Landroid/os/storage/StorageManager;->setDefaultPath(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNextNonce()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 6
    .parameter "volumes"

    .prologue
    .line 632
    move-object v0, p0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 633
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v3

    .line 632
    .restart local v3       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const-string v4, "StorageManager"

    const-string v5, "No primary storage defined"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getStorageNameByPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 747
    .local v0, r:Landroid/content/res/Resources;
    const-string v1, "/mnt/sdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/mnt/sdcard/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/storage/sdcard0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/storage/sdcard0/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    :cond_0
    const v1, 0x1040550

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 755
    :cond_1
    :goto_0
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStorageNameByPath path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-object p1

    .line 750
    :cond_2
    const-string v1, "/mnt/sdcard2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/storage/sdcard1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/mnt/sdcard2/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/storage/sdcard1/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    :cond_3
    const v1, 0x10404eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 766
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultPath path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-nez p0, :cond_0

    .line 768
    const-string v1, "StorageManager"

    const-string/jumbo v2, "setDefaultPath error! path=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_0
    return-void

    .line 773
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.sd.defaultpath"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException when set default path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .locals 3

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableUsbMassStorage()V
    .locals 3

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 828
    const/4 v1, 0x0

    .line 830
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v2, "external_sd_path"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 831
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStoragePath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-object v1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when getExternalStoragePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 851
    const/4 v1, 0x0

    .line 853
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v2, "internal_sd_path"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 854
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternalStoragePath from Property path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternalStoragePath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-object v1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when getInternalStoragePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMTKExternalCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 784
    if-nez p1, :cond_0

    .line 785
    const-string v2, "StorageManager"

    const-string/jumbo v3, "packageName = null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :goto_0
    return-object v1

    .line 788
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-static {p1}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    .line 792
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 794
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 799
    :goto_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 800
    const-string v2, "StorageManager"

    const-string v3, "Unable to create external cache directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    .line 807
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 809
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "Android"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 814
    :goto_2
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 815
    const-string v2, "StorageManager"

    const-string v3, "Unable to create external cache directory"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :cond_2
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMTKExternalCacheDir:Ljava/io/File;

    goto/16 :goto_0

    .line 811
    :catch_0
    move-exception v2

    goto :goto_2

    .line 796
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawPath"

    .prologue
    .line 554
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 594
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v5, :cond_1

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    .line 606
    :cond_0
    :goto_0
    return-object v4

    .line 596
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 597
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_2

    const/4 v5, 0x0

    new-array v4, v5, [Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 598
    :cond_2
    array-length v2, v3

    .line 599
    .local v2, length:I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 600
    .local v4, result:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 601
    aget-object v5, v3, v1

    check-cast v5, Landroid/os/storage/StorageVolume;

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v4           #result:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "StorageManager"

    const-string v6, "Failed to get volume list"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 616
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 622
    :cond_0
    return-object v2

    .line 617
    :cond_1
    array-length v0, v3

    .line 618
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 619
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 620
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mountPoint"

    .prologue
    .line 570
    const-string v1, "/mnt/sdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For backwards compatibility, replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to /storage/sdcard0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string p1, "/storage/sdcard0"

    .line 580
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_2

    const-string/jumbo v1, "removed"

    .line 585
    :goto_1
    return-object v1

    .line 574
    :cond_1
    const-string v1, "/mnt/sdcard2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "StorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For backwards compatibility, replace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to /storage/sdcard1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string p1, "/storage/sdcard1"

    goto :goto_0

    .line 582
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3
    .parameter "rawPath"

    .prologue
    .line 533
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 541
    :goto_0
    return v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    :goto_0
    return v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 7
    .parameter "rawPath"
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 474
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, canonicalPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    .line 480
    .local v5, nonce:I
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    const/4 v0, 0x1

    .line 488
    .end local v2           #canonicalPath:Ljava/lang/String;
    .end local v5           #nonce:I
    :goto_0
    return v0

    .line 482
    :catch_0
    move-exception v6

    .line 483
    .local v6, e:Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 484
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 485
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "StorageManager"

    const-string v1, "Failed to mount OBB"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 351
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 353
    :try_start_1
    new-instance v1, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 354
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v3, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v3, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "StorageManager"

    const-string v3, "Register mBinderListener failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "rawPath"
    .parameter "force"
    .parameter "listener"

    .prologue
    .line 512
    const-string/jumbo v2, "rawPath cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 517
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v2, 0x1

    .line 523
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 394
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 377
    :try_start_0
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 378
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 379
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 380
    .local v1, l:Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 381
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 385
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_1
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    .line 387
    :try_start_1
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v4, v6}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    :cond_2
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 378
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v3       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :catch_0
    move-exception v2

    .line 389
    .local v2, rex:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "StorageManager"

    const-string v6, "Unregister mBinderListener failed"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
