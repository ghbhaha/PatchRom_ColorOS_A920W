.class public Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WaveManager"
.end annotation


# instance fields
.field private alpha:F

.field private radius:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PointCloud;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/PointCloud;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->this$0:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->radius:F

    .line 48
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->width:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->alpha:F

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->width:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->alpha:F

    return v0
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->alpha:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->radius:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "a"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->alpha:F

    .line 60
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .parameter "r"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->radius:F

    .line 52
    return-void
.end method
