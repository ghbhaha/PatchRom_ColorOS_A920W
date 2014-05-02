.class public Landroid/webkit/WebView$HitTestResult;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HitTestResult"
.end annotation


# static fields
.field public static final ANCHOR_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EDIT_TEXT_TYPE:I = 0x9

.field public static final EMAIL_TYPE:I = 0x4

.field public static final GEO_TYPE:I = 0x3

.field public static final IMAGE_ANCHOR_TYPE:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMAGE_TYPE:I = 0x5

.field public static final PHONE_TYPE:I = 0x2

.field public static final SRC_ANCHOR_TYPE:I = 0x7

.field public static final SRC_IMAGE_ANCHOR_TYPE:I = 0x8

.field public static final UNKNOWN_TYPE:I


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mImageAnchorUrl:Ljava/lang/String;

.field private mTouchHighlightRect:Landroid/graphics/Rect;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mTouchHighlightRect:Landroid/graphics/Rect;

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 408
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAnchorUrlExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mImageAnchorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchHighlightRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Landroid/webkit/WebView$HitTestResult;->mTouchHighlightRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    return v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 421
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mExtra:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public setImageAnchorUrlExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "imageAnchorUrl"

    .prologue
    .line 450
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mImageAnchorUrl:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setTouchHighlightRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 468
    iput-object p1, p0, Landroid/webkit/WebView$HitTestResult;->mTouchHighlightRect:Landroid/graphics/Rect;

    .line 469
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 414
    iput p1, p0, Landroid/webkit/WebView$HitTestResult;->mType:I

    .line 415
    return-void
.end method
