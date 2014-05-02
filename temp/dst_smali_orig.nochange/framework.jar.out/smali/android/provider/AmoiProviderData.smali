.class public final Landroid/provider/AmoiProviderData;
.super Ljava/lang/Object;
.source "AmoiProviderData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/AmoiProviderData$Field;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.amoi.mobilesecurityprovider.data"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TEST_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string v1, "access1"

    aput-object v1, v0, v5

    const-string v1, "access2"

    aput-object v1, v0, v6

    const-string v1, "access3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "access4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "access5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "access6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "access7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "access8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "access9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "access10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "access11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "access12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "access13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "access14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "access15"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "access16"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "access17"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "access18"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "access19"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "access20"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "access21"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "access22"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "access23"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "access24"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "access25"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "access26"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "access27"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "access28"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "access29"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "access30"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "access31"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "access32"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "access33"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/AmoiProviderData;->PROJECTION:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    const-string v1, "access1"

    aput-object v1, v0, v5

    const-string v1, "access2"

    aput-object v1, v0, v6

    const-string v1, "access12"

    aput-object v1, v0, v7

    sput-object v0, Landroid/provider/AmoiProviderData;->TEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
