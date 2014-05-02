.class public Landroid/widget/BounceGallery;
.super Landroid/widget/AbsSpinner;
.source "BounceGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceGallery$OnSelectionChangeListener;,
        Landroid/widget/BounceGallery$FlingRunnable;,
        Landroid/widget/BounceGallery$CheckForLongPress;,
        Landroid/widget/BounceGallery$WindowRunnnable;,
        Landroid/widget/BounceGallery$CheckForTap;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DBG_KEY:Z = true

.field private static final DBG_LAYOUT:Z = true

.field private static final DBG_MOTION:Z = true

.field private static final DEFAULT_UNSELECTED_ALPHA:F = 0.5f

.field private static final OVER_DIST_SCALED_RAT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BounceGallery"

.field private static final TOUCH_MODE_DOWN:I = 0x0

.field private static final TOUCH_MODE_FLING:I = 0x2

.field private static final TOUCH_MODE_OVERFLING:I = 0x4

.field private static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDirection:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDistanceLeft:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

.field private mGravity:I

.field private mLastMotionX:I

.field private mLeftMost:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedOverscroll:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mUnselectedAlpha:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 271
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/BounceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    iput v10, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 141
    const/16 v7, 0x190

    iput v7, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 199
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 204
    iput-boolean v11, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 253
    new-instance v7, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 259
    new-instance v7, Landroid/widget/BounceGallery$1;

    invoke-direct {v7, p0}, Landroid/widget/BounceGallery$1;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v7, p0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 277
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 280
    .local v6, windowManager:Landroid/view/WindowManager;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 281
    .local v5, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 282
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    iput v7, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 284
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    .line 285
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    .line 286
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    iput v7, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    .line 287
    invoke-virtual {p0, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 290
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 291
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 292
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    sget-object v7, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 298
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 299
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 300
    invoke-virtual {p0, v2}, Landroid/widget/BounceGallery;->setGravity(I)V

    .line 303
    :cond_0
    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 305
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 306
    invoke-virtual {p0, v1}, Landroid/widget/BounceGallery;->setAnimationDuration(I)V

    .line 309
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 311
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->setSpacing(I)V

    .line 313
    const/4 v7, 0x3

    const/high16 v8, 0x3f00

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 316
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setUnselectedAlpha(F)V

    .line 318
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 322
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 323
    return-void
.end method

.method static synthetic access$002(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/BounceGallery;Landroid/view/View;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/BounceGallery;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/BounceGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/BounceGallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/widget/BounceGallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/BounceGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3100(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/BounceGallery;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/BounceGallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/BounceGallery;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$CheckForLongPress;)Landroid/widget/BounceGallery$CheckForLongPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$700(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/widget/BounceGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 966
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 967
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 969
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 971
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/BounceGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 986
    :goto_2
    return v2

    .line 966
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    .line 967
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 973
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 974
    goto :goto_2

    .line 976
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 978
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 979
    goto :goto_2

    .line 981
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    .line 982
    goto :goto_2

    .line 971
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 573
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 574
    .local v6, numChildren:I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 575
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 576
    .local v7, start:I
    const/4 v1, 0x0

    .line 578
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 579
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    .line 580
    .local v3, galleryLeft:I
    const/4 v0, 0x0

    .line 581
    .local v0, child:Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 582
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 605
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 607
    if-eqz p1, :cond_1

    .line 608
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 610
    :cond_1
    return-void

    .line 586
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 587
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 581
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 591
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 592
    .local v4, galleryRight:I
    const/4 v0, 0x0

    .line 593
    .restart local v0       #child:Landroid/view/View;
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 594
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 598
    move v7, v5

    .line 599
    add-int/lit8 v1, v1, 0x1

    .line 600
    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 593
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1016
    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1020
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1021
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1025
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1024
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1029
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 784
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 785
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    .line 788
    .local v2, galleryLeft:I
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 789
    .local v4, prevIterationView:Landroid/view/View;
    const/4 v0, 0x0

    .line 790
    .local v0, curPosition:I
    const/4 v1, 0x0

    .line 792
    .local v1, curRightEdge:I
    if-eqz v4, :cond_0

    .line 793
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 794
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 803
    :goto_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fillToGalleryLeft:curRightEdge = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",galleryLeft = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",curPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mSelectedPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mFirstPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_1
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 809
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v8}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 813
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 816
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 817
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 797
    :cond_0
    const/4 v0, 0x0

    .line 798
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 799
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 819
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 822
    iget v3, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 823
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 824
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 825
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 827
    .local v5, numItems:I
    if-nez v4, :cond_1

    .line 828
    const-string v7, "BounceGallery"

    const-string v8, "No child when fill gallery right!"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    return-void

    .line 832
    :cond_1
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 833
    .local v6, prevIterationView:Landroid/view/View;
    const/4 v1, 0x0

    .line 834
    .local v1, curPosition:I
    const/4 v0, 0x0

    .line 836
    .local v0, curLeftEdge:I
    if-eqz v6, :cond_2

    .line 837
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v1, v7, v4

    .line 838
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 846
    :goto_0
    const-string v7, "BounceGallery"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fillToGalleryRight: curLeftEdge = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",galleryRight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",curPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mSelectedPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mFirstPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",numItems = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_1
    if-ge v0, v2, :cond_0

    if-ge v1, v5, :cond_0

    .line 853
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v10}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 857
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 840
    :cond_2
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 841
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    .line 842
    iput-boolean v10, p0, Landroid/widget/BounceGallery;->mShouldStopFling:Z

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 553
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getSemmChildDrawingOrder(III)I
    .locals 2
    .parameter "childCount"
    .parameter "i"
    .parameter "selectedIndex"

    .prologue
    .line 1247
    if-ne p2, p3, :cond_0

    .line 1248
    add-int/lit8 v0, p1, -0x1

    .line 1252
    :goto_0
    return v0

    .line 1249
    :cond_0
    if-lt p2, p3, :cond_1

    .line 1250
    sub-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    goto :goto_0

    .line 1252
    :cond_1
    add-int/lit8 v0, p1, -0x1

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private handleTouchDown(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1395
    iget v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1419
    :pswitch_0
    iput v1, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1422
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1423
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1424
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1425
    iget-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1428
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 1429
    new-instance v0, Landroid/widget/BounceGallery$CheckForTap;

    invoke-direct {v0, p0}, Landroid/widget/BounceGallery$CheckForTap;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1435
    :cond_2
    :goto_0
    return-void

    .line 1397
    :pswitch_1
    iget-object v0, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery$FlingRunnable;->stop(Z)V

    .line 1398
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-nez v0, :cond_3

    .line 1399
    iput v2, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_0

    .line 1401
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto :goto_0

    .line 1407
    :pswitch_2
    iput v2, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1409
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    .line 1410
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1411
    iget v0, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    .line 1412
    iget-object v0, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1395
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleTouchMove(III)V
    .locals 18
    .parameter "x"
    .parameter "y"
    .parameter "deltaX"

    .prologue
    .line 1438
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 1531
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1441
    :pswitch_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from touch down: mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/BounceGallery;->startScrollIfNeeded(I)Z

    goto :goto_0

    .line 1454
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    .line 1455
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1457
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1458
    .local v12, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int v13, v12, v2

    .line 1463
    .local v13, lastPosition:I
    if-lez p3, :cond_2

    if-nez v12, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 1465
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1472
    :cond_1
    :goto_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from scroll: mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_0

    .line 1466
    :cond_2
    if-gez p3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v13, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 1469
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1485
    .end local v12           #firstPosition:I
    .end local v13           #lastPosition:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    .line 1486
    .local v16, oldScroll:I
    sub-int v15, v16, p3

    .line 1487
    .local v15, newScroll:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v14, v2

    .line 1488
    .local v14, newDirection:I
    mul-int v2, v16, v15

    if-gez v2, :cond_6

    const/16 v17, 0x1

    .line 1491
    .local v17, scrollDirectionWillChange:Z
    :goto_2
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch move from over scroll: mScrollX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mLastMotionX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDownTouchPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newScroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDirection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/BounceGallery;->mDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mVelocityTracker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mDirection:I

    if-nez v2, :cond_3

    .line 1500
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/BounceGallery;->mDirection:I

    .line 1503
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/BounceGallery;->mDirection:I

    if-ne v2, v14, :cond_4

    if-eqz v17, :cond_7

    .line 1509
    :cond_4
    neg-int v0, v15

    move/from16 p3, v0

    .line 1510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mScrollX:I

    .line 1516
    if-eqz p3, :cond_5

    .line 1517
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->trackMotionScroll(I)V

    .line 1519
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1526
    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/BounceGallery;->mDirection:I

    .line 1527
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/BounceGallery;->mLastMotionX:I

    goto/16 :goto_0

    .line 1488
    .end local v17           #scrollDirectionWillChange:Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1522
    .restart local v17       #scrollDirectionWillChange:Z
    :cond_7
    move/from16 v0, p3

    neg-int v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1523
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 1438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleTouchUp()V
    .locals 9

    .prologue
    const/16 v6, 0x3e8

    const/4 v8, 0x0

    .line 1534
    iget v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 1623
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1536
    :pswitch_1
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    if-ltz v5, :cond_0

    .line 1537
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1538
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1539
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1546
    :cond_1
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1551
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v5, :cond_2

    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne v5, v6, :cond_0

    .line 1553
    :cond_2
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    iget v6, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget-object v7, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v8, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-interface {v7, v8}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 1561
    .end local v0           #child:Landroid/view/View;
    :pswitch_2
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    if-nez v5, :cond_3

    .line 1566
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1569
    iget-boolean v5, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v5, :cond_3

    .line 1570
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 1573
    :cond_3
    iget-object v1, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1574
    .local v1, flingVelocityTracker:Landroid/view/VelocityTracker;
    iget v5, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1575
    invoke-virtual {v1, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v4, v5

    .line 1577
    .local v4, velocityX:I
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up from scroll: velocityX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mMinimumVelocity = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v5, v6, :cond_5

    .line 1583
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v5, :cond_4

    .line 1584
    new-instance v5, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1586
    :cond_4
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingVelocity(I)V

    goto/16 :goto_0

    .line 1588
    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1589
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    goto/16 :goto_0

    .line 1595
    .end local v1           #flingVelocityTracker:Landroid/view/VelocityTracker;
    .end local v4           #velocityX:I
    :pswitch_3
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    if-nez v5, :cond_6

    .line 1596
    new-instance v5, Landroid/widget/BounceGallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/BounceGallery$FlingRunnable;-><init>(Landroid/widget/BounceGallery;)V

    iput-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    .line 1599
    :cond_6
    iget-object v3, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1600
    .local v3, velocityTracker:Landroid/view/VelocityTracker;
    iget v5, p0, Landroid/widget/BounceGallery;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1601
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 1603
    .local v2, initialVelocity:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/BounceGallery;->mMinimumVelocity:I

    if-le v5, v6, :cond_7

    .line 1604
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    neg-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/BounceGallery$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 1606
    :cond_7
    iget-object v5, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/BounceGallery$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 1616
    .end local v2           #initialVelocity:I
    .end local v3           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up from TOUCH_MODE_REST: mDownTouchView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1618
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, child:Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 881
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 889
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 890
    iget v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 893
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 905
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 900
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 903
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/BounceGallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 905
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private moveNext()Z
    .locals 2

    .prologue
    .line 1125
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1126
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1127
    const/4 v0, 0x1

    .line 1129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePrevious()Z
    .locals 2

    .prologue
    .line 1116
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1117
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->scrollToChild(I)Z

    .line 1118
    const/4 v0, 0x1

    .line 1120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 538
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 537
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 3

    .prologue
    .line 636
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedMovement: mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    .line 642
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 645
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 646
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1692
    const/4 v6, 0x0

    .line 1694
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1699
    :cond_0
    if-nez v6, :cond_1

    .line 1700
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1701
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1704
    :cond_1
    if-eqz v6, :cond_2

    .line 1705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1708
    :cond_2
    return v6
.end method

.method private removeRunnables(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 1672
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1674
    .local v0, handler:Landroid/os/Handler;
    const-string v1, "BounceGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRunnables runnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",handler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    if-eqz v0, :cond_0

    .line 1677
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1679
    :cond_0
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 6

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v3, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/widget/BounceGallery;->getCenterOfChildWithScroll(Landroid/view/View;)I

    move-result v1

    .line 620
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    .line 622
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 624
    .local v0, scrollAmount:I
    const-string v3, "BounceGallery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollIntoSlots:mSelectedChild = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",selectedCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",targetCenter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",scrollAmount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz v0, :cond_2

    .line 628
    iget-object v3, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 630
    :cond_2
    invoke-direct {p0}, Landroid/widget/BounceGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 5
    .parameter "childPosition"

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1136
    .local v0, child:Landroid/view/View;
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mSelectedPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mScrollX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",child = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    if-eqz v0, :cond_0

    .line 1141
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1143
    .local v1, distance:I
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollToChild: childPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",centerGallery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",center view = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/BounceGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1148
    const/4 v2, 0x1

    .line 1151
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 11

    .prologue
    .line 667
    iget-object v7, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 668
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v3

    .line 673
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 677
    :cond_2
    const v2, 0x7fffffff

    .line 678
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 679
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 680
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 681
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 683
    move v6, v4

    .line 695
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v5, v8, v6

    .line 697
    .local v5, newPos:I
    const-string v8, "BounceGallery"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSelectionToCenterChild: newPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",newSelectedChildIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mSelectedPosition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 702
    invoke-virtual {p0, v5}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 703
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 704
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_0

    .line 687
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 689
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 690
    move v2, v1

    .line 691
    move v6, v4

    .line 679
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 926
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 930
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 932
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 934
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 936
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 939
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 942
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/BounceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 943
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 945
    .local v0, childBottom:I
    const/4 v2, 0x0

    .line 946
    .local v2, childLeft:I
    const/4 v3, 0x0

    .line 947
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 948
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 949
    move v2, p3

    .line 950
    add-int v3, v2, v7

    .line 956
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 957
    return-void

    .line 930
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 932
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 952
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v2       #childLeft:I
    .restart local v3       #childRight:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 953
    move v3, p3

    goto :goto_2
.end method

.method private startScrollIfNeeded(I)Z
    .locals 8
    .parameter "deltaX"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1373
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1374
    .local v0, distance:I
    iget v5, p0, Landroid/view/View;->mScrollX:I

    if-eqz v5, :cond_3

    move v2, v3

    .line 1376
    .local v2, overscroll:Z
    :goto_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startScrollIfNeeded: distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mTouchSlop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mPendingCheckForLongPress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    if-nez v2, :cond_0

    iget v5, p0, Landroid/widget/BounceGallery;->mTouchSlop:I

    if-le v0, v5, :cond_2

    .line 1381
    :cond_0
    if-eqz v2, :cond_4

    const/4 v5, 0x3

    :goto_1
    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1382
    iget-object v5, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v5}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1383
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1384
    iget v5, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1385
    .local v1, motionView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1386
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1388
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    move v4, v3

    .line 1391
    .end local v1           #motionView:Landroid/view/View;
    :cond_2
    return v4

    .end local v2           #overscroll:Z
    :cond_3
    move v2, v4

    .line 1374
    goto :goto_0

    .restart local v2       #overscroll:Z
    :cond_4
    move v5, v3

    .line 1381
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1163
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1165
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1166
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iput-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    .line 1171
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1172
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1182
    :cond_2
    if-eqz v1, :cond_0

    .line 1184
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1189
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 411
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1051
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1046
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1038
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 429
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 421
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 416
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getCenterOfChildWithScroll(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 563
    invoke-static {p1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 6
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1208
    move v1, p2

    .line 1214
    .local v1, ret:I
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v4, v5

    .line 1216
    .local v3, selectedIndex:I
    if-gez v3, :cond_0

    move v2, v1

    .line 1235
    .end local v1           #ret:I
    .local v2, ret:I
    :goto_0
    return v2

    .line 1218
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_0
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v4, p1

    add-int/lit8 v0, v4, 0x1

    .line 1219
    .local v0, notSymmNum:I
    if-nez v0, :cond_1

    .line 1220
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    :goto_1
    move v2, v1

    .line 1235
    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_0

    .line 1221
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_1
    if-gez v0, :cond_3

    .line 1222
    mul-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_2

    .line 1223
    add-int/lit8 v4, p1, -0x1

    sub-int v1, v4, p2

    goto :goto_1

    .line 1225
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1

    .line 1228
    :cond_3
    if-ge p2, v0, :cond_4

    .line 1229
    move v1, p2

    goto :goto_1

    .line 1231
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/BounceGallery;->getSemmChildDrawingOrder(III)I

    move-result v1

    goto :goto_1
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 386
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 387
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 388
    const/4 v0, 0x1

    return v0

    .line 387
    :cond_0
    iget v0, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/widget/BounceGallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 499
    if-eqz p1, :cond_1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 500
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 502
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 525
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 499
    goto :goto_0

    .line 506
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Landroid/widget/BounceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 507
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/BounceGallery;->getCenterOfGallery()I

    move-result v4

    .line 509
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 510
    if-le v2, v4, :cond_0

    .line 523
    :cond_3
    sub-int v0, v4, v2

    .line 525
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 516
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 525
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 720
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 721
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 723
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 724
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 728
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v4, :cond_1

    .line 729
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    .line 778
    :goto_0
    return-void

    .line 734
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 735
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/BounceGallery;->setSelectedPositionInt(I)V

    .line 739
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    .line 742
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 748
    iput v6, p0, Landroid/widget/BounceGallery;->mRightMost:I

    .line 749
    iput v6, p0, Landroid/widget/BounceGallery;->mLeftMost:I

    .line 757
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 758
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/BounceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 761
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 762
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 764
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 765
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    .line 768
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 771
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 773
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 774
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 775
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 777
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1258
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1265
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1268
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1061
    sparse-switch p1, :sswitch_data_0

    .line 1083
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1063
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/BounceGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 1069
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/BounceGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1070
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 1076
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1061
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1088
    sparse-switch p1, :sswitch_data_0

    .line 1112
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1091
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_0

    .line 1092
    iget-object v1, p0, Landroid/widget/BounceGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->dispatchPress(Landroid/view/View;)V

    .line 1093
    new-instance v1, Landroid/widget/BounceGallery$2;

    invoke-direct {v1, p0}, Landroid/widget/BounceGallery$2;-><init>(Landroid/widget/BounceGallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1099
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1100
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1105
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/BounceGallery;->mReceivedInvokeKeyDown:Z

    .line 1106
    const/4 v1, 0x1

    goto :goto_0

    .line 1088
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 442
    invoke-virtual {p0, v1, v1}, Landroid/widget/BounceGallery;->layout(IZ)V

    .line 443
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 444
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 1628
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOverScrolled: scrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",clampedX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 1632
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 1633
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 1635
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1637
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    .line 1299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1300
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 1301
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 1304
    .local v3, x:I
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 1305
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1306
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent new mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1310
    const/4 v2, 0x0

    .line 1311
    .local v2, handled:Z
    const/4 v1, 0x0

    .line 1313
    .local v1, deltaX:I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 1362
    :goto_0
    return v2

    .line 1316
    :pswitch_0
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch down: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLastMotionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mVelocityTracker = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iput v3, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    .line 1321
    invoke-direct {p0, v3, v4}, Landroid/widget/BounceGallery;->handleTouchDown(II)V

    .line 1322
    const/4 v2, 0x1

    .line 1323
    goto :goto_0

    .line 1327
    :pswitch_1
    iget v5, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    sub-int v1, v3, v5

    .line 1328
    invoke-direct {p0, v3, v4, v1}, Landroid/widget/BounceGallery;->handleTouchMove(III)V

    .line 1329
    const/4 v2, 0x1

    .line 1330
    goto :goto_0

    .line 1335
    :pswitch_2
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch up: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mLastMotionX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mLastMotionX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",deltaX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mScrollX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mDownTouchPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-direct {p0}, Landroid/widget/BounceGallery;->handleTouchUp()V

    .line 1340
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1

    .line 1341
    iget-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 1342
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1344
    :cond_1
    const/4 v2, 0x1

    .line 1345
    goto/16 :goto_0

    .line 1350
    :pswitch_3
    const-string v5, "BounceGallery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Touch cancel: mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDownTouchView = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    .line 1354
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1355
    iget-object v5, p0, Landroid/widget/BounceGallery;->mDownTouchView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1357
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BounceGallery;->onUpOrCancel()V

    .line 1358
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onUpOrCancel()V
    .locals 3

    .prologue
    .line 995
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpOrCancel: finished = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    #getter for: Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVelocityTracker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1001
    iget-object v0, p0, Landroid/widget/BounceGallery;->mPendingCheckForLongPress:Landroid/widget/BounceGallery$CheckForLongPress;

    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->removeRunnables(Ljava/lang/Runnable;)V

    .line 1003
    iget-object v0, p0, Landroid/widget/BounceGallery;->mFlingRunnable:Landroid/widget/BounceGallery$FlingRunnable;

    #getter for: Landroid/widget/BounceGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Landroid/widget/BounceGallery$FlingRunnable;->access$100(Landroid/widget/BounceGallery$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-direct {p0}, Landroid/widget/BounceGallery;->scrollIntoSlots()V

    .line 1007
    :cond_0
    invoke-direct {p0}, Landroid/widget/BounceGallery;->dispatchUnpress()V

    .line 1009
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BounceGallery;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1013
    :cond_1
    return-void
.end method

.method selectionChanged()V
    .locals 3

    .prologue
    .line 650
    iget-boolean v0, p0, Landroid/widget/BounceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 651
    invoke-super {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 654
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    invoke-interface {v0}, Landroid/widget/BounceGallery$OnSelectionChangeListener;->onSelectionChanged()V

    .line 658
    :cond_1
    const-string v0, "BounceGallery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectionChanged mSelectedPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 361
    iput p1, p0, Landroid/widget/BounceGallery;->mAnimationDuration:I

    .line 362
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 335
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackDuringFling:Z

    .line 336
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 348
    iput-boolean p1, p0, Landroid/widget/BounceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 349
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1200
    iget v0, p0, Landroid/widget/BounceGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1201
    iput p1, p0, Landroid/widget/BounceGallery;->mGravity:I

    .line 1202
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    .line 1204
    :cond_0
    return-void
.end method

.method public setOnSelectionChangeListener(Landroid/widget/BounceGallery$OnSelectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1663
    iput-object p1, p0, Landroid/widget/BounceGallery;->mSelectionChangeListener:Landroid/widget/BounceGallery$OnSelectionChangeListener;

    .line 1664
    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 1687
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1688
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1689
    return-void
.end method

.method public setOverflingDistance(I)V
    .locals 0
    .parameter "overflingDistance"

    .prologue
    .line 1654
    iput p1, p0, Landroid/widget/BounceGallery;->mOverflingDistance:I

    .line 1655
    return-void
.end method

.method public setOverscrollDistance(I)V
    .locals 0
    .parameter "overscrollDistance"

    .prologue
    .line 1645
    iput p1, p0, Landroid/widget/BounceGallery;->mOverscrollDistance:I

    .line 1646
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1156
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1159
    invoke-direct {p0}, Landroid/widget/BounceGallery;->updateSelectedItemMetadata()V

    .line 1160
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 370
    iput p1, p0, Landroid/widget/BounceGallery;->mSpacing:I

    .line 371
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 381
    iput p1, p0, Landroid/widget/BounceGallery;->mUnselectedAlpha:F

    .line 382
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1288
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1289
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1290
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1291
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1294
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1277
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1278
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1279
    const/4 v3, 0x0

    .line 1283
    :goto_0
    return v3

    .line 1282
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1283
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/BounceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 5
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x1

    .line 458
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 459
    const-string v2, "BounceGallery"

    const-string v3, "trackMotionScroll with no children."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 463
    :cond_0
    if-gez p1, :cond_3

    move v1, v2

    .line 465
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/BounceGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 466
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_2

    .line 468
    iget v3, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 469
    iput-boolean v2, p0, Landroid/widget/BounceGallery;->mNeedOverscroll:Z

    .line 470
    sub-int v2, p1, v0

    iput v2, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    .line 474
    :cond_1
    const-string v2, "BounceGallery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackMotionScroll: may need over scroll, mTouchMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",limitedDeltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDistanceLeft = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/BounceGallery;->mDistanceLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mFirstPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/BounceGallery;->offsetChildrenLeftAndRight(I)V

    .line 482
    invoke-direct {p0, v1}, Landroid/widget/BounceGallery;->detachOffScreenChildren(Z)V

    .line 484
    if-eqz v1, :cond_4

    .line 486
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryRight()V

    .line 493
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 494
    invoke-direct {p0}, Landroid/widget/BounceGallery;->setSelectionToCenterChild()V

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 463
    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 489
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/BounceGallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
