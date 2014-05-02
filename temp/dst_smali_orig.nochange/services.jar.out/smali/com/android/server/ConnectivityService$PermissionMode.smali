.class final enum Lcom/android/server/ConnectivityService$PermissionMode;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$PermissionMode;

.field public static final enum ALLOW:Lcom/android/server/ConnectivityService$PermissionMode;

.field public static final enum ASK:Lcom/android/server/ConnectivityService$PermissionMode;

.field public static final enum DENY:Lcom/android/server/ConnectivityService$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4743
    new-instance v0, Lcom/android/server/ConnectivityService$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$PermissionMode;->ALLOW:Lcom/android/server/ConnectivityService$PermissionMode;

    .line 4744
    new-instance v0, Lcom/android/server/ConnectivityService$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$PermissionMode;->DENY:Lcom/android/server/ConnectivityService$PermissionMode;

    .line 4745
    new-instance v0, Lcom/android/server/ConnectivityService$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Lcom/android/server/ConnectivityService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$PermissionMode;->ASK:Lcom/android/server/ConnectivityService$PermissionMode;

    .line 4742
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/ConnectivityService$PermissionMode;

    sget-object v1, Lcom/android/server/ConnectivityService$PermissionMode;->ALLOW:Lcom/android/server/ConnectivityService$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$PermissionMode;->DENY:Lcom/android/server/ConnectivityService$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/ConnectivityService$PermissionMode;->ASK:Lcom/android/server/ConnectivityService$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/ConnectivityService$PermissionMode;->$VALUES:[Lcom/android/server/ConnectivityService$PermissionMode;

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
    .line 4742
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 4742
    const-class v0, Lcom/android/server/ConnectivityService$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$PermissionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$PermissionMode;
    .locals 1

    .prologue
    .line 4742
    sget-object v0, Lcom/android/server/ConnectivityService$PermissionMode;->$VALUES:[Lcom/android/server/ConnectivityService$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$PermissionMode;

    return-object v0
.end method
