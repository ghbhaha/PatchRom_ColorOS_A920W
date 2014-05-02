.class final enum Landroid/net/http/AndroidHttpClient$PermissionMode;
.super Ljava/lang/Enum;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/http/AndroidHttpClient$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/http/AndroidHttpClient$PermissionMode;

.field public static final enum ALLOW:Landroid/net/http/AndroidHttpClient$PermissionMode;

.field public static final enum ASK:Landroid/net/http/AndroidHttpClient$PermissionMode;

.field public static final enum DENY:Landroid/net/http/AndroidHttpClient$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    new-instance v0, Landroid/net/http/AndroidHttpClient$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Landroid/net/http/AndroidHttpClient$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/http/AndroidHttpClient$PermissionMode;->ALLOW:Landroid/net/http/AndroidHttpClient$PermissionMode;

    .line 340
    new-instance v0, Landroid/net/http/AndroidHttpClient$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Landroid/net/http/AndroidHttpClient$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/http/AndroidHttpClient$PermissionMode;->DENY:Landroid/net/http/AndroidHttpClient$PermissionMode;

    .line 341
    new-instance v0, Landroid/net/http/AndroidHttpClient$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Landroid/net/http/AndroidHttpClient$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/http/AndroidHttpClient$PermissionMode;->ASK:Landroid/net/http/AndroidHttpClient$PermissionMode;

    .line 338
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/http/AndroidHttpClient$PermissionMode;

    sget-object v1, Landroid/net/http/AndroidHttpClient$PermissionMode;->ALLOW:Landroid/net/http/AndroidHttpClient$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/http/AndroidHttpClient$PermissionMode;->DENY:Landroid/net/http/AndroidHttpClient$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/http/AndroidHttpClient$PermissionMode;->ASK:Landroid/net/http/AndroidHttpClient$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/http/AndroidHttpClient$PermissionMode;->$VALUES:[Landroid/net/http/AndroidHttpClient$PermissionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 338
    const-class v0, Landroid/net/http/AndroidHttpClient$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/http/AndroidHttpClient$PermissionMode;

    return-object v0
.end method

.method public static values()[Landroid/net/http/AndroidHttpClient$PermissionMode;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Landroid/net/http/AndroidHttpClient$PermissionMode;->$VALUES:[Landroid/net/http/AndroidHttpClient$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/http/AndroidHttpClient$PermissionMode;

    return-object v0
.end method
