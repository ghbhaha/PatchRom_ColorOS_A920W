.class public final Landroid/provider/AmoiProviderData$Field;
.super Ljava/lang/Object;
.source "AmoiProviderData.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/AmoiProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# static fields
.field public static final ACCESS_APP_DATA:Ljava/lang/String; = "access6"

.field public static final ACCESS_ATTACHMENT_PROVIDER:Ljava/lang/String; = "access25"

.field public static final ACCESS_BOOKMARKS:Ljava/lang/String; = "access10"

.field public static final ACCESS_BROWSER_PROVIDER:Ljava/lang/String; = "access24"

.field public static final ACCESS_CALL_HISTORY:Ljava/lang/String; = "access2"

.field public static final ACCESS_CAMERA:Ljava/lang/String; = "access32"

.field public static final ACCESS_CB_PROVIDER:Ljava/lang/String; = "access20"

.field public static final ACCESS_CONTANTS:Ljava/lang/String; = "access1"

.field public static final ACCESS_DICTIONARY:Ljava/lang/String; = "access11"

.field public static final ACCESS_DOWNLOAD_DATA:Ljava/lang/String; = "access7"

.field public static final ACCESS_DRM_DATA:Ljava/lang/String; = "access8"

.field public static final ACCESS_EMAIL:Ljava/lang/String; = "access4"

.field public static final ACCESS_EMAIL_PROVIDER:Ljava/lang/String; = "access26"

.field public static final ACCESS_EXCHANGE_DIRECTORY_PROVIDER:Ljava/lang/String; = "access27"

.field public static final ACCESS_FILE_CONTENT_PROVIDER:Ljava/lang/String; = "access29"

.field public static final ACCESS_LAUNCHER_PROVIDER:Ljava/lang/String; = "access30"

.field public static final ACCESS_MMSSMS_PROVIDER:Ljava/lang/String; = "access23"

.field public static final ACCESS_MMS_PROVIDER:Ljava/lang/String; = "access22"

.field public static final ACCESS_MULTI_MEDIA:Ljava/lang/String; = "access9"

.field public static final ACCESS_SCHEDULE:Ljava/lang/String; = "access5"

.field public static final ACCESS_SHARE_IMAGE_PROVIDER:Ljava/lang/String; = "access28"

.field public static final ACCESS_SMS:Ljava/lang/String; = "access3"

.field public static final ACCESS_TELEPHONE_PROVIDER:Ljava/lang/String; = "access19"

.field public static final ACCESS_WABPUSH_PROVIDER:Ljava/lang/String; = "access21"

.field public static final APPNAME:Ljava/lang/String; = "name"

.field public static final AUDIO_RECORD:Ljava/lang/String; = "access14"

.field public static final CALL:Ljava/lang/String; = "access31"

.field public static final CAMERA_INTENT_FLAG:Ljava/lang/String; = "access33"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.amoi.mobilesecurity"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.amoi.mobilesecurity"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name DESC"

.field public static final DISABLE:Ljava/lang/String; = "disable"

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEND_MMS:Ljava/lang/String; = "access13"

.field public static final SEND_SMS:Ljava/lang/String; = "access12"

.field public static final SWITCH_BLUETOOTH:Ljava/lang/String; = "access18"

.field public static final SWITCH_CONNECTION:Ljava/lang/String; = "access15"

.field public static final SWITCH_LOCATION:Ljava/lang/String; = "access17"

.field public static final SWITCH_WIFI:Ljava/lang/String; = "access16"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "content://com.amoi.mobilesecurityprovider.data/Field"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
