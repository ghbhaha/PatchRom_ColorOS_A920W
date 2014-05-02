.class final enum Landroid/app/ActivityThread$PermissionMode;
.super Ljava/lang/Enum;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/ActivityThread$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/ActivityThread$PermissionMode;

.field public static final enum ALLOW:Landroid/app/ActivityThread$PermissionMode;

.field public static final enum ASK:Landroid/app/ActivityThread$PermissionMode;

.field public static final enum DENY:Landroid/app/ActivityThread$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ActivityThread$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityThread$PermissionMode;->ALLOW:Landroid/app/ActivityThread$PermissionMode;

    new-instance v0, Landroid/app/ActivityThread$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Landroid/app/ActivityThread$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityThread$PermissionMode;->DENY:Landroid/app/ActivityThread$PermissionMode;

    new-instance v0, Landroid/app/ActivityThread$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Landroid/app/ActivityThread$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/ActivityThread$PermissionMode;->ASK:Landroid/app/ActivityThread$PermissionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/ActivityThread$PermissionMode;

    sget-object v1, Landroid/app/ActivityThread$PermissionMode;->ALLOW:Landroid/app/ActivityThread$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/ActivityThread$PermissionMode;->DENY:Landroid/app/ActivityThread$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/ActivityThread$PermissionMode;->ASK:Landroid/app/ActivityThread$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/ActivityThread$PermissionMode;->$VALUES:[Landroid/app/ActivityThread$PermissionMode;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/ActivityThread$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/app/ActivityThread$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$PermissionMode;

    return-object v0
.end method

.method public static values()[Landroid/app/ActivityThread$PermissionMode;
    .locals 1

    .prologue
    sget-object v0, Landroid/app/ActivityThread$PermissionMode;->$VALUES:[Landroid/app/ActivityThread$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityThread$PermissionMode;

    return-object v0
.end method
