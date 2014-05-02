.class final enum Landroid/media/AudioRecord$PermissionMode;
.super Ljava/lang/Enum;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/AudioRecord$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/AudioRecord$PermissionMode;

.field public static final enum ALLOW:Landroid/media/AudioRecord$PermissionMode;

.field public static final enum ASK:Landroid/media/AudioRecord$PermissionMode;

.field public static final enum DENY:Landroid/media/AudioRecord$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 883
    new-instance v0, Landroid/media/AudioRecord$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Landroid/media/AudioRecord$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/AudioRecord$PermissionMode;->ALLOW:Landroid/media/AudioRecord$PermissionMode;

    .line 884
    new-instance v0, Landroid/media/AudioRecord$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Landroid/media/AudioRecord$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/AudioRecord$PermissionMode;->DENY:Landroid/media/AudioRecord$PermissionMode;

    .line 885
    new-instance v0, Landroid/media/AudioRecord$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Landroid/media/AudioRecord$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/AudioRecord$PermissionMode;->ASK:Landroid/media/AudioRecord$PermissionMode;

    .line 882
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/AudioRecord$PermissionMode;

    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ALLOW:Landroid/media/AudioRecord$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->DENY:Landroid/media/AudioRecord$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/AudioRecord$PermissionMode;->ASK:Landroid/media/AudioRecord$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/AudioRecord$PermissionMode;->$VALUES:[Landroid/media/AudioRecord$PermissionMode;

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
    .line 882
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/AudioRecord$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 882
    const-class v0, Landroid/media/AudioRecord$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord$PermissionMode;

    return-object v0
.end method

.method public static values()[Landroid/media/AudioRecord$PermissionMode;
    .locals 1

    .prologue
    .line 882
    sget-object v0, Landroid/media/AudioRecord$PermissionMode;->$VALUES:[Landroid/media/AudioRecord$PermissionMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/AudioRecord$PermissionMode;

    return-object v0
.end method
