.class public final enum Lcom/android/server/am/ActivityManagerService$PermissionMode;
.super Ljava/lang/Enum;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/ActivityManagerService$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/ActivityManagerService$PermissionMode;

.field public static final enum ALLOW:Lcom/android/server/am/ActivityManagerService$PermissionMode;

.field public static final enum ASK:Lcom/android/server/am/ActivityManagerService$PermissionMode;

.field public static final enum DENY:Lcom/android/server/am/ActivityManagerService$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16078
    new-instance v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;->ALLOW:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    .line 16079
    new-instance v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;->DENY:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    .line 16080
    new-instance v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;->ASK:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    .line 16077
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$PermissionMode;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$PermissionMode;->ALLOW:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/ActivityManagerService$PermissionMode;->DENY:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/ActivityManagerService$PermissionMode;->ASK:Lcom/android/server/am/ActivityManagerService$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;->$VALUES:[Lcom/android/server/am/ActivityManagerService$PermissionMode;

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
    .line 16077
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 16077
    const-class v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/ActivityManagerService$PermissionMode;
    .locals 1

    .prologue
    .line 16077
    sget-object v0, Lcom/android/server/am/ActivityManagerService$PermissionMode;->$VALUES:[Lcom/android/server/am/ActivityManagerService$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/ActivityManagerService$PermissionMode;

    return-object v0
.end method
