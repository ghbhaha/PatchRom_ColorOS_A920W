.class final enum Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;
.super Ljava/lang/Enum;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermissionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

.field public static final enum ALLOW:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

.field public static final enum ASK:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

.field public static final enum DENY:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2882
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->ALLOW:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    .line 2883
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    const-string v1, "DENY"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->DENY:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    .line 2884
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    const-string v1, "ASK"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->ASK:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    .line 2881
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->ALLOW:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->DENY:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->ASK:Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->$VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

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
    .line 2881
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 2881
    const-class v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;
    .locals 1

    .prologue
    .line 2881
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->$VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SMSDispatcher$PermissionMode;

    return-object v0
.end method
