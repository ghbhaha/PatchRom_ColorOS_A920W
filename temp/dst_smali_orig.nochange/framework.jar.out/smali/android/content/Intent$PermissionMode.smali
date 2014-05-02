.class final enum Landroid/content/Intent$PermissionMode;
.super Ljava/lang/Enum;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/content/Intent$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/content/Intent$PermissionMode;

.field public static final enum ALLOW:Landroid/content/Intent$PermissionMode;

.field public static final enum ASK:Landroid/content/Intent$PermissionMode;

.field public static final enum DENY:Landroid/content/Intent$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7180
    new-instance v0, Landroid/content/Intent$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/Intent$PermissionMode;->ALLOW:Landroid/content/Intent$PermissionMode;

    .line 7181
    new-instance v0, Landroid/content/Intent$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/Intent$PermissionMode;->DENY:Landroid/content/Intent$PermissionMode;

    .line 7182
    new-instance v0, Landroid/content/Intent$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/content/Intent$PermissionMode;->ASK:Landroid/content/Intent$PermissionMode;

    .line 7179
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/Intent$PermissionMode;

    sget-object v1, Landroid/content/Intent$PermissionMode;->ALLOW:Landroid/content/Intent$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/content/Intent$PermissionMode;->DENY:Landroid/content/Intent$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/content/Intent$PermissionMode;->ASK:Landroid/content/Intent$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/Intent$PermissionMode;->$VALUES:[Landroid/content/Intent$PermissionMode;

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
    .line 7179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/content/Intent$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 7179
    const-class v0, Landroid/content/Intent$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$PermissionMode;

    return-object v0
.end method

.method public static values()[Landroid/content/Intent$PermissionMode;
    .locals 1

    .prologue
    .line 7179
    sget-object v0, Landroid/content/Intent$PermissionMode;->$VALUES:[Landroid/content/Intent$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent$PermissionMode;

    return-object v0
.end method
