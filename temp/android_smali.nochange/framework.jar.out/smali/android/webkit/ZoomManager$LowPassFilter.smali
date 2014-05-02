.class Landroid/webkit/ZoomManager$LowPassFilter;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/webkit/ZoomManager$ScaleFilterAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowPassFilter"
.end annotation


# static fields
.field private static final ALPHA_FACTOR:F = 0.75f


# instance fields
.field private mPrevDistanceDiff:F

.field private mPrevFocusX:F

.field private mPrevFocusY:F

.field private mPrevXDistanceDiff:F

.field private mPrevYDistanceDiff:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 966
    invoke-direct {p0}, Landroid/webkit/ZoomManager$LowPassFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFocusX()F
    .locals 1

    .prologue
    .line 1015
    iget v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusY:F

    return v0
.end method

.method public onFilter(Landroid/view/ScaleGestureDetector;)F
    .locals 7
    .parameter "detector"

    .prologue
    const/high16 v6, 0x3f40

    const/high16 v5, 0x3e80

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, currentDistanceDiff:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    .line 988
    .local v1, previousDistance:F
    const/4 v2, 0x0

    .line 994
    .local v2, scale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    sub-float v0, v3, v1

    .line 995
    iget v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevDistanceDiff:F

    mul-float/2addr v3, v6

    mul-float v4, v5, v0

    add-float v0, v3, v4

    .line 996
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevDistanceDiff:F

    .line 997
    add-float v3, v1, v0

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1000
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    iget v4, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusX:F

    sub-float v0, v3, v4

    .line 1001
    iget v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevXDistanceDiff:F

    mul-float/2addr v3, v6

    mul-float v4, v5, v0

    add-float v0, v3, v4

    .line 1002
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevXDistanceDiff:F

    .line 1003
    iget v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusX:F

    iget v4, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevXDistanceDiff:F

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusX:F

    .line 1006
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    iget v4, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusY:F

    sub-float v0, v3, v4

    .line 1007
    iget v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevYDistanceDiff:F

    mul-float/2addr v3, v6

    mul-float v4, v5, v0

    add-float v0, v3, v4

    .line 1008
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevYDistanceDiff:F

    .line 1009
    iget v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusY:F

    iget v4, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevYDistanceDiff:F

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusY:F

    .line 1011
    return v2
.end method

.method public onFilterBegin(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 978
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevDistanceDiff:F

    .line 979
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevXDistanceDiff:F

    .line 980
    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevYDistanceDiff:F

    .line 981
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusX:F

    .line 982
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager$LowPassFilter;->mPrevFocusY:F

    .line 983
    return-void
.end method
