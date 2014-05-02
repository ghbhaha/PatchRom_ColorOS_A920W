.class public Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.super Landroid/view/View;
.source "MediatekGlowPadView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;,
        Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final ANIM_TOUCH_STLOP:I = 0x3

.field private static final CALL_LOG_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_LOG_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final DEBUG:Z = true

.field private static final DRAG_ANIMATION_DELAY:I = 0x32

.field private static final DRAG_ANIMATION_DURATION:I = 0x15e

.field private static final DRAG_BACK_ANIMATION_DELAY:I = 0x14

.field private static final DRAG_BACK_ANIMATION_DURATION:I = 0xc8

.field private static final EMAIL_CLASS_NAME:Ljava/lang/String; = "com.android.email.activity.Welcome"

.field private static final EMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final MMS_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediatekGlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final TOUCH_ANIM_BACK:I = 0x6

.field private static final TOUCH_DRAGGING:I = 0x3

.field private static final TOUCH_END:I = 0x7

.field private static final TOUCH_FLING:I = 0x4

.field private static final TOUCH_HANDLE_ANIM:I = 0x1

.field private static final TOUCH_INIT:I = 0x0

.field private static final TOUCH_INTERSECT:I = 0x2

.field private static final TOUCH_MOVE_INTERSECT_ANIM_THRESHOLD:F = 10.0f

.field private static final TOUCH_MOVE_TRIGGER_THRESHOLD:I = 0x3

.field private static final TOUCH_TRIGGER:I = 0x5

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActionCancel:Z

.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCheckForInterSectAnimation:Ljava/lang/Runnable;

.field private mCurrentFakeHandleTargetX:F

.field private mCurrentFakeHandleTargetY:F

.field private mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDoingIntersectAnim:Z

.field private mDragSnapMargin:F

.field private mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

.field private mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mDragViewDoingTouch:Z

.field private mDragViewState:I

.field private mDragging:Z

.field private mFakeHandleAnimating:Z

.field private mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mFakeHandleRealX:F

.field private mFakeHandleRealY:F

.field private mFeedbackCount:I

.field private mFirstItemOffset:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mGlowPadViewState:I

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mHandlePosition:Landroid/graphics/Point;

.field private final mHistoryTouchXY:[I

.field private mHorizontalInset:I

.field private mInitDownMotionLocationX:I

.field private mInitDownMotionLocationY:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mLayoutListenerSet:Z

.field private mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

.field private mMagneticTargets:Z

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewEventViewInLockScreenX:I

.field private mNewEventViewInLockScreenY:I

.field private final mNewEventViewLocationInLockScreen:[I

.field private mNewTargetResources:I

.field private mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

.field private final mOwnerDragViewOffsets:[I

.field private final mOwnerLocationInLockScreen:[I

.field private final mOwnerNewEventViewOffset:[I

.field private final mOwnerRawLocation:[I

.field private final mOwnerRecepientOffsets:[I

.field private mPendingDragViewState:I

.field private mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

.field private final mPoint:Landroid/graphics/Point;

.field private mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mShouldDoIntersectAnim:Z

.field private mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

.field private mSnapMargin:F

.field private mTapTimeOut:Z

.field private mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTouchDropped:Z

.field private mTouchIntercepted:Z

.field private mTouchMoveIntersectAnimThreshold:F

.field private mTouchMoveTriggerThreshold:I

.field private mTouchRecepient:Landroid/view/View;

.field private final mTouchRecepientRawLocation:[I

.field private mTouchSlop:I

.field private mTouchSlopSqure:I

.field private mTouchTriggered:Z

.field private mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 402
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 123
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 124
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 125
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 133
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    .line 134
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    .line 136
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 142
    const/high16 v7, 0x3f80

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 146
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 147
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    .line 148
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    .line 152
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 190
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 197
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 205
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 212
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 228
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    .line 229
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    .line 247
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$5;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 264
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    .line 267
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    .line 271
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    .line 273
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    .line 275
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    .line 277
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    .line 285
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempXY:[I

    .line 288
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    .line 292
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHistoryTouchXY:[I

    .line 299
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    .line 303
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$IntersectAnimationRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCheckForInterSectAnimation:Ljava/lang/Runnable;

    .line 306
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 313
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 316
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerDragViewOffsets:[I

    .line 323
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 324
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 326
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    .line 334
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    .line 371
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    .line 1852
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$7;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 1926
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$9;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$9;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1932
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$10;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$10;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 1939
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$11;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$11;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 2187
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$12;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$12;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 408
    .local v5, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 409
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    .line 410
    const/16 v7, 0xc

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 411
    const/16 v7, 0xe

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 412
    const/4 v7, 0x7

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    .line 415
    const/16 v7, 0xd

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    .line 417
    const/16 v7, 0xf

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    .line 419
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAllowScaling:Z

    .line 420
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 421
    .local v1, handle:Landroid/util/TypedValue;
    new-instance v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v1, :cond_2

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v8, v5, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 422
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 423
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v8, 0x4

    invoke-direct {p0, v0, v8}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v8

    invoke-direct {v7, v5, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 426
    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    .line 427
    const/16 v7, 0x8

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    .line 429
    const/4 v7, 0x5

    invoke-direct {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 430
    .local v4, pointId:I
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 431
    .local v3, pointDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    .line 433
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 436
    .local v2, outValue:Landroid/util/TypedValue;
    const/16 v7, 0xa

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 437
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    .line 439
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 440
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 421
    .end local v2           #outValue:Landroid/util/TypedValue;
    .end local v3           #pointDrawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #pointId:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 430
    .restart local v4       #pointId:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 444
    .restart local v2       #outValue:Landroid/util/TypedValue;
    .restart local v3       #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 445
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 446
    .local v6, resourceId:I
    if-nez v6, :cond_5

    .line 447
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 449
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 453
    .end local v6           #resourceId:I
    :cond_6
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 454
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 455
    .restart local v6       #resourceId:I
    if-nez v6, :cond_7

    .line 456
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 458
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 461
    .end local v6           #resourceId:I
    :cond_8
    const/4 v7, 0x0

    const/16 v8, 0x30

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    .line 463
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_9

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setVibrateEnabled(Z)V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->assignDefaultsIfNeeded()V

    .line 469
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-direct {v7, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    .line 470
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->makePointCloud(FF)V

    .line 471
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v7, v7, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setRadius(F)V

    .line 473
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 474
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    .line 475
    return-void

    .line 465
    :cond_9
    const/4 v7, 0x0

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;IIIFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableResetListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mShouldDoIntersectAnim:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;IFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->refreshPositions()V

    return-void
.end method

.method private activateHandle(II)V
    .locals 9
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v8, 0x1

    const v4, 0x3ecccccd

    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    .line 1818
    const-string v0, "MediatekGlowPadView"

    const-string v1, "activateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Lcom/android/internal/policy/impl/keyguard/TargetDrawable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1823
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020062

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1827
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 1828
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 1829
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 1830
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1831
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1832
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1833
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1835
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1836
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 1837
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleX(F)V

    .line 1838
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setScaleY(F)V

    .line 1840
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "scaleX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "scaleY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawableOutListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1849
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1850
    return-void

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "x"
    .parameter "y"
    .parameter "onCompleteListener"

    .prologue
    .line 1799
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animDragView duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1803
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    int-to-long v2, p1

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "translationX"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "translationY"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    aput-object p5, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1810
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1814
    :goto_0
    return-void

    .line 1812
    :cond_0
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animDragView mDragView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private animHandlerBack(II)V
    .locals 6
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v3, 0x0

    .line 2156
    const-string v0, "MediatekGlowPadView"

    const-string v1, "animHandlerBack"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateHandle(II)V

    .line 2159
    return-void
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1506
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1507
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1508
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1509
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1512
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1513
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1516
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1517
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1519
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1266
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    .line 1269
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1270
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    .line 1273
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInnerRadius:F

    .line 1276
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1280
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1282
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1291
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    .line 1294
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1303
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    .line 1306
    :goto_1
    return-void

    .line 1284
    :pswitch_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1287
    :pswitch_2
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1296
    :sswitch_0
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1299
    :sswitch_1
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1282
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1294
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V
    .locals 5
    .parameter "newEventView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2075
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2077
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->getLocationInLockScreenLayout(Landroid/view/View;[I)V

    .line 2078
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 2079
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 2080
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeOwnerNewEventViewMotionOffset mOwnerLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewParentLocationInLockScreen[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNewEventViewLocationInLockScreen[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewLocationInLockScreen:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOwnerNewEventViewOffset[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_0
    return-void
.end method

.method private computeScaleFactor(IIII)F
    .locals 7
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "actualWidth"
    .parameter "actualHeight"

    .prologue
    const/high16 v4, 0x3f80

    .line 1316
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAllowScaling:Z

    if-nez v5, :cond_0

    .line 1352
    :goto_0
    return v4

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLayoutDirection()I

    move-result v1

    .line 1319
    .local v1, layoutDirection:I
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1321
    .local v0, absoluteGravity:I
    const/high16 v2, 0x3f80

    .line 1322
    .local v2, scaleX:F
    const/high16 v3, 0x3f80

    .line 1328
    .local v3, scaleY:F
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .line 1334
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1335
    int-to-float v5, p3

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1340
    :cond_1
    :pswitch_1
    and-int/lit8 v5, v0, 0x70

    sparse-switch v5, :sswitch_data_0

    .line 1346
    if-le p2, p4, :cond_2

    .line 1347
    int-to-float v5, p4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1352
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .line 1328
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1340
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private converDragViewStateCodeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 2361
    packed-switch p1, :pswitch_data_0

    .line 2379
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2363
    :pswitch_0
    const-string v0, "TOUCH_INIT"

    goto :goto_0

    .line 2365
    :pswitch_1
    const-string v0, "TOUCH_HANDLE_ANIM"

    goto :goto_0

    .line 2367
    :pswitch_2
    const-string v0, "TOUCH_INTERSECT"

    goto :goto_0

    .line 2369
    :pswitch_3
    const-string v0, "TOUCH_DRAGGING"

    goto :goto_0

    .line 2371
    :pswitch_4
    const-string v0, "TOUCH_FLING"

    goto :goto_0

    .line 2373
    :pswitch_5
    const-string v0, "TOUCH_TRIGGER"

    goto :goto_0

    .line 2375
    :pswitch_6
    const-string v0, "TOUCH_ANIM_BACK"

    goto :goto_0

    .line 2377
    :pswitch_7
    const-string v0, "TOUCH_END"

    goto :goto_0

    .line 2361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private deactivateHandle(II)V
    .locals 8
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v7, 0x0

    .line 1865
    const-string v0, "MediatekGlowPadView"

    const-string v1, "deactivateHandle"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 1868
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "y"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$8;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;II)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 1887
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 1888
    return-void
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 630
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 632
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 633
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 636
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 653
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 647
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1491
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 656
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 657
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    move v1, v2

    .line 659
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 660
    const-string v2, "MediatekGlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish with target hit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->highlightSelected(I)V

    .line 665
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v2, v6, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 667
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_0

    .line 668
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dispatchTriggerEvent(I)V

    .line 671
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 682
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    if-nez v2, :cond_2

    .line 683
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setGrabbedState(I)V

    .line 686
    :cond_2
    return-void

    .end local v1           #targetHit:Z
    :cond_3
    move v1, v3

    .line 657
    goto :goto_0

    .line 677
    .restart local v1       #targetHit:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v3, v6, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 678
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private doIntersectAnimation()V
    .locals 12

    .prologue
    const/16 v2, 0x32

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    .line 2163
    const-string v0, "MediatekGlowPadView"

    const-string v1, "doIntersectAnimation"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    float-to-int v1, v1

    add-int v6, v0, v1

    .line 2166
    .local v6, targetX:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    float-to-int v1, v1

    add-int v7, v0, v1

    .line 2167
    .local v7, targetY:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v9

    add-int/2addr v6, v0

    .line 2168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v6, v0

    .line 2169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v0, v11

    add-int/2addr v7, v0

    .line 2170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v7, v0

    .line 2171
    const/16 v1, 0x15e

    int-to-float v3, v6

    int-to-float v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animDragView(IIFFLandroid/animation/Animator$AnimatorListener;)V

    .line 2173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 2174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const-wide/16 v3, 0x15e

    const/16 v5, 0x12

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "ease"

    aput-object v8, v5, v9

    sget-object v8, Lcom/android/internal/policy/impl/keyguard/Ease$Fling;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v8, v5, v11

    const/4 v8, 0x2

    const-string v9, "delay"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x4

    const-string v8, "x"

    aput-object v8, v5, v2

    const/4 v2, 0x5

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/4 v2, 0x6

    const-string v8, "y"

    aput-object v8, v5, v2

    const/4 v2, 0x7

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0x8

    const-string v8, "scaleX"

    aput-object v8, v5, v2

    const/16 v2, 0x9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xa

    const-string v8, "scaleY"

    aput-object v8, v5, v2

    const/16 v2, 0xb

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xc

    const-string v8, "alpha"

    aput-object v8, v5, v2

    const/16 v2, 0xd

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v2

    const/16 v2, 0xe

    const-string v8, "onUpdate"

    aput-object v8, v5, v2

    const/16 v2, 0xf

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawableUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v8, v5, v2

    const/16 v2, 0x10

    const-string v8, "onComplete"

    aput-object v8, v5, v2

    const/16 v2, 0x11

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mIntersectAnimResetListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v8, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 2184
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 2185
    return-void
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 3
    .parameter "v"
    .parameter "destCanvas"
    .parameter "pruneToDrawable"

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTempRect:Landroid/graphics/Rect;

    .line 2290
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2292
    const/4 v1, 0x0

    .line 2294
    .local v1, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2295
    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2296
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2297
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2298
    return-void
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 483
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void
.end method

.method private freeFling(FF)V
    .locals 6
    .parameter "velX"
    .parameter "velY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2151
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeFling velX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", velY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const/4 v1, 0x6

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 2153
    return-void
.end method

.method private getAngle(FI)F
    .locals 2
    .parameter "alpha"
    .parameter "i"

    .prologue
    .line 1453
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    int-to-float v1, p2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1536
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1537
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v0, 0x0

    .line 1542
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 478
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 479
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1377
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1373
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 3

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1501
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1499
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getSliceAngle()F
    .locals 4

    .prologue
    .line 1457
    const-wide v0, -0x3fe6de04abbbd2e8L

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1523
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1524
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1525
    const-string v0, "MediatekGlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const/4 v0, 0x0

    .line 1530
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;
    .locals 7
    .parameter "zoomIn"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "scaleXFrom"
    .parameter "scaleXTo"
    .parameter "scaleYFrom"
    .parameter "scaleYTo"

    .prologue
    .line 2066
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    const/4 v6, 0x1

    aput p3, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 2067
    .local v0, pvhAlphaZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p4, v5, v6

    const/4 v6, 0x1

    aput p5, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2068
    .local v1, pvhScaleXZoom:Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p6, v5, v6

    const/4 v6, 0x1

    aput p7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2069
    .local v2, pvhScaleYZoom:Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2070
    .local v3, targetViewAnimation:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2071
    return-object v3
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, -0x1

    .line 1095
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "MediatekGlowPadView"

    const-string v2, "** Handle CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    .line 1100
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1101
    .local v0, actionIndex:I
    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    .line 1102
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1103
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1073
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1074
    .local v1, eventX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1075
    .local v2, eventY:F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1076
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    .line 1079
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doShakeAnimation()V

    .line 1084
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    .line 1082
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 39
    .parameter "event"

    .prologue
    .line 1106
    const/4 v6, -0x1

    .line 1107
    .local v6, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1108
    .local v12, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 1109
    .local v27, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1110
    .local v17, ntargets:I
    const/16 v31, 0x0

    .line 1111
    .local v31, x:F
    const/16 v32, 0x0

    .line 1112
    .local v32, y:F
    const/4 v5, 0x0

    .line 1113
    .local v5, activeAngle:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1115
    .local v4, actionIndex:I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v4, v0, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    const/4 v14, 0x0

    .local v14, k:I
    :goto_1
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_c

    .line 1120
    if-ge v14, v12, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 1122
    .local v10, eventX:F
    :goto_2
    if-ge v14, v12, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 1125
    .local v11, eventY:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 1126
    .local v29, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 1127
    .local v30, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 1128
    .local v28, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 1129
    .local v18, scale:F
    :goto_4
    mul-float v15, v29, v18

    .line 1130
    .local v15, limitX:F
    mul-float v16, v30, v18

    .line 1131
    .local v16, limitY:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 1133
    .local v8, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 1134
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 1137
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_b

    .line 1139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 1140
    .local v20, snapRadius:F
    mul-float v19, v20, v20

    .line 1142
    .local v19, snapDistance2:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_b

    .line 1143
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1145
    .local v21, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    sub-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v25, v33, v35

    .line 1146
    .local v25, targetMinRad:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFirstItemOffset:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    int-to-double v0, v13

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3fe0

    add-double v35, v35, v37

    const-wide/high16 v37, 0x4000

    mul-double v35, v35, v37

    const-wide v37, 0x400921fb54442d18L

    mul-double v35, v35, v37

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    add-double v23, v33, v35

    .line 1147
    .local v23, targetMaxRad:D
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1148
    cmpl-double v33, v8, v25

    if-lez v33, :cond_3

    cmpg-double v33, v8, v23

    if-lez v33, :cond_5

    :cond_3
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpl-double v33, v33, v25

    if-lez v33, :cond_4

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpg-double v33, v33, v23

    if-lez v33, :cond_5

    :cond_4
    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpl-double v33, v33, v25

    if-lez v33, :cond_a

    const-wide v33, 0x401921fb54442d18L

    sub-double v33, v8, v33

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_a

    :cond_5
    const/4 v7, 0x1

    .line 1154
    .local v7, angleMatches:Z
    :goto_6
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_6

    .line 1155
    move v6, v13

    .line 1156
    neg-double v0, v8

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    double-to-float v5, v0

    .line 1142
    .end local v7           #angleMatches:Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1120
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v13           #i:I
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_2

    .line 1122
    .restart local v10       #eventX:F
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_3

    .line 1128
    .restart local v11       #eventY:F
    .restart local v28       #touchRadius:F
    .restart local v29       #tx:F
    .restart local v30       #ty:F
    :cond_9
    const/high16 v18, 0x3f80

    goto/16 :goto_4

    .line 1148
    .restart local v8       #angleRad:D
    .restart local v13       #i:I
    .restart local v15       #limitX:F
    .restart local v16       #limitY:F
    .restart local v18       #scale:F
    .restart local v19       #snapDistance2:F
    .restart local v20       #snapRadius:F
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .restart local v23       #targetMaxRad:D
    .restart local v25       #targetMinRad:D
    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    .line 1161
    .end local v13           #i:I
    .end local v19           #snapDistance2:F
    .end local v20           #snapRadius:F
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v23           #targetMaxRad:D
    .end local v25           #targetMinRad:D
    :cond_b
    move/from16 v31, v15

    .line 1162
    move/from16 v32, v16

    .line 1119
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1165
    .end local v8           #angleRad:D
    .end local v10           #eventX:F
    .end local v11           #eventY:F
    .end local v15           #limitX:F
    .end local v16           #limitY:F
    .end local v18           #scale:F
    .end local v28           #touchRadius:F
    .end local v29           #tx:F
    .end local v30           #ty:F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 1169
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_12

    .line 1170
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1171
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1177
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_11

    .line 1179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_e

    .line 1180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1181
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1182
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1184
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    move/from16 v33, v0

    if-eqz v33, :cond_e

    .line 1185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFF)V

    .line 1189
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_e
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_11

    .line 1190
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1191
    .restart local v21       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->hasState([I)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1192
    sget-object v33, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 1194
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMagneticTargets:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v6, v1, v2, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1197
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_11

    .line 1198
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 1199
    .local v22, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1203
    .end local v21           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v22           #targetContentDescription:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 1173
    :cond_12
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1174
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_7
.end method

.method private handleTouchCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 2212
    return-void
.end method

.method private handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .locals 5
    .parameter "newEventView"

    .prologue
    .line 2225
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v2, :cond_0

    .line 2226
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 2228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2229
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getResourceId()I

    move-result v1

    .line 2230
    .local v1, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 2244
    const-string v2, "MediatekGlowPadView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTrigger unknown resource id, resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :goto_0
    return-void

    .line 2232
    :pswitch_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2233
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2236
    :pswitch_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts"

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2237
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2240
    :pswitch_2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2241
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->launchActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2230
    nop

    :pswitch_data_0
    .packed-switch 0x2020070
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1087
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "MediatekGlowPadView"

    const-string v2, "** Handle RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1089
    .local v0, actionIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_1

    .line 1090
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1092
    :cond_1
    return-void
.end method

.method private hideAllNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 2034
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2037
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 2038
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2039
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2041
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2042
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2037
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2044
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 627
    return-void
.end method

.method private hideOtherNewEventViews()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 2002
    const-string v0, "MediatekGlowPadView"

    const-string v1, "hideOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2005
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2006
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2007
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 2008
    const/4 v1, 0x1

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2010
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2011
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2005
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2014
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .parameter "animate"
    .parameter "expanded"

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 706
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 707
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 708
    .local v3, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 710
    .local v2, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f80

    .line 712
    .local v9, targetScale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 713
    .local v6, length:I
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 714
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 715
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 716
    .local v8, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v10, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 707
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 708
    .restart local v3       #duration:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 710
    .restart local v2       #delay:I
    :cond_2
    const v9, 0x3f4ccccd

    goto :goto_2

    .line 726
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f80

    .line 728
    .local v7, ringScaleTarget:F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 729
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 739
    return-void

    .line 726
    .end local v7           #ringScaleTarget:F
    :cond_4
    const/high16 v7, 0x3f00

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 695
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 696
    if-eq v0, p1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 695
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 691
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideUnselected(I)V

    .line 692
    return-void
.end method

.method private hitInCenterRing(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1768
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v2

    .line 1769
    .local v0, tx:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v2

    .line 1770
    .local v1, ty:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1695
    .local v0, action:I
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1696
    .local v3, shouldIntercept:Z
    packed-switch v0, :pswitch_data_0

    .line 1708
    :goto_0
    :pswitch_0
    if-eqz v3, :cond_1

    .line 1709
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1712
    .local v1, containerEvent:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v5, v6, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    aget v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1713
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1714
    .local v2, retValue:Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1717
    .end local v1           #containerEvent:Landroid/view/MotionEvent;
    .end local v2           #retValue:Z
    :goto_1
    return v2

    .line 1698
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hitInCenterRing(FF)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 1699
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1698
    goto :goto_2

    .line 1703
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setShouldIntercept(Z)V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 1717
    goto :goto_1

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 797
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 798
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetResourceId:I

    .line 800
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v3

    .line 801
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v2

    .line 802
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 803
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 804
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 805
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 806
    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 809
    :cond_1
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    .line 810
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->requestLayout()V

    .line 816
    :goto_1
    return-void

    .line 813
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 814
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private invlidateGlobalRegion(Landroid/view/View;)V
    .locals 9
    .parameter "childView"

    .prologue
    const/4 v6, 0x0

    .line 2195
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2196
    .local v3, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2197
    .local v1, height:I
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v3

    int-to-float v5, v1

    invoke-direct {v0, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2198
    .local v0, childBounds:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 2199
    move-object v2, p0

    .line 2200
    .local v2, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2201
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2202
    .restart local v2       #view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 2203
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 2208
    :cond_0
    return-void
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2249
    const/high16 v1, 0x3400

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2254
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2259
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2263
    :goto_1
    return-void

    .line 2255
    :catch_0
    move-exception v0

    .line 2256
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediatekGlowPadView"

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2260
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2261
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MediatekGlowPadView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity not found for intent + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1546
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1547
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1548
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1549
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1550
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1551
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1553
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1554
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 783
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 784
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 785
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 786
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 787
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 788
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 789
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 788
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 791
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 792
    return-object v2
.end method

.method private onDragMove(II)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2116
    move/from16 v0, p1

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v10, v12, v13

    .line 2117
    .local v10, tx:F
    move/from16 v0, p2

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v11, v12, v13

    .line 2118
    .local v11, ty:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 2120
    .local v9, touchRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    const/high16 v13, 0x3f00

    mul-float v1, v12, v13

    .line 2121
    .local v1, FakeHandleRadius:F
    cmpl-float v12, v9, v1

    if-lez v12, :cond_1

    div-float v5, v1, v9

    .line 2122
    .local v5, scale:F
    :goto_0
    mul-float v12, v10, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2123
    mul-float v12, v11, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2124
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 2126
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 2127
    .local v2, currentFakeHandleRadius:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragSnapMargin:F

    add-float v7, v2, v12

    .line 2128
    .local v7, snapRadius:F
    mul-float v6, v7, v7

    .line 2129
    .local v6, snapDistance2:F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v12

    cmpg-float v12, v12, v6

    if-gez v12, :cond_2

    .line 2130
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2131
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v3, v12, v13

    .line 2132
    .local v3, dragViewX:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v13}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v4, v12, v13

    .line 2133
    .local v4, dragViewY:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v13, v3

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v4

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2134
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v12}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getState()[I

    move-result-object v8

    .line 2136
    .local v8, state:[I
    if-eqz v8, :cond_0

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-static {v8, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2137
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 2138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2144
    .end local v3           #dragViewX:I
    .end local v4           #dragViewY:I
    .end local v8           #state:[I
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 2146
    const-string v12, "MediatekGlowPadView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onDragMove mTouchTriggered="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", x="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    return-void

    .line 2121
    .end local v2           #currentFakeHandleRadius:F
    .end local v5           #scale:F
    .end local v6           #snapDistance2:F
    .end local v7           #snapRadius:F
    :cond_1
    const/high16 v5, 0x3f80

    goto/16 :goto_0

    .line 2141
    .restart local v2       #currentFakeHandleRadius:F
    .restart local v5       #scale:F
    .restart local v6       #snapDistance2:F
    .restart local v7       #snapRadius:F
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v13, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v12, v13}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    goto :goto_1
.end method

.method private onDragStart(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v9, 0x3f00

    .line 2091
    const-string v7, "MediatekGlowPadView"

    const-string v8, "onDragStart"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    int-to-float v7, p1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v1, v7, v8

    .line 2095
    .local v1, dragTargetCenterX:F
    int-to-float v7, p2

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/DragView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v2, v7, v8

    .line 2096
    .local v2, dragTargetCenterY:F
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v6, v7

    .line 2097
    .local v6, touchRadius:F
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float v0, v7, v9

    .line 2098
    .local v0, currentOuterRadius:F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_0

    div-float v5, v0, v6

    .line 2099
    .local v5, scale:F
    :goto_0
    mul-float v3, v1, v5

    .line 2100
    .local v3, limitX:F
    mul-float v4, v2, v5

    .line 2103
    .local v4, limitY:F
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v3

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 2104
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandlePosition:Landroid/graphics/Point;

    float-to-int v8, v4

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 2106
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 2107
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 2109
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2110
    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2111
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 2112
    return-void

    .line 2098
    .end local v3           #limitX:F
    .end local v4           #limitY:F
    .end local v5           #scale:F
    :cond_0
    const/high16 v5, 0x3f80

    goto :goto_0
.end method

.method private refreshPositions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1724
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1729
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getLocationOnScreen([I)V

    .line 1730
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 1731
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRecepientOffsets:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerRawLocation:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepientRawLocation:[I

    aget v2, v2, v4

    sub-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1598
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1599
    :cond_0
    const/4 v2, 0x0

    .line 1617
    :cond_1
    :goto_0
    return v2

    .line 1602
    :cond_2
    const/4 v2, 0x0

    .line 1603
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1604
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1605
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1606
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1607
    .local v4, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1608
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1609
    const/4 v2, 0x1

    .line 1605
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1613
    .end local v4           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1614
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 541
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 550
    move v0, v1

    .line 552
    :goto_0
    return v0

    .line 543
    :sswitch_0
    move v0, p2

    .line 544
    goto :goto_0

    .line 546
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 547
    goto :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 1233
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1234
    if-eqz p1, :cond_0

    .line 1235
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->vibrate()V

    .line 1237
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGrabbedState:I

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1239
    if-nez p1, :cond_2

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1244
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1247
    :cond_1
    return-void

    .line 1242
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setShouldIntercept(Z)V
    .locals 0
    .parameter "shouldIntercept"

    .prologue
    .line 1763
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchIntercepted:Z

    .line 1764
    return-void
.end method

.method private showAllNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 2048
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showAllNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2051
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 2052
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2053
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2055
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2056
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2051
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2058
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_0
    return-void
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 606
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 613
    return-void
.end method

.method private showOtherNewEventViews()V
    .locals 12

    .prologue
    const/high16 v3, 0x3f80

    .line 2018
    const-string v0, "MediatekGlowPadView"

    const-string v1, "showOtherNewEventViews"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2021
    .local v9, newEventViweList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 2022
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2023
    .local v11, tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eq v11, v0, :cond_0

    .line 2024
    const/4 v1, 0x0

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getAlpha()F

    move-result v2

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v4

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleY()F

    move-result v6

    move-object v0, p0

    move v5, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getZoomAnim(ZFFFFFF)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 2026
    .local v10, objectAnimator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2027
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    .line 2021
    .end local v10           #objectAnimator:Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2030
    .end local v11           #tmpNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .parameter "animate"

    .prologue
    .line 742
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 743
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    .line 744
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 745
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 746
    .local v1, duration:I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 747
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 748
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 749
    .local v5, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 750
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    int-to-long v7, v1

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    invoke-static {v5, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 744
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 745
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 759
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f80

    mul-float v4, v6, v7

    .line 760
    .local v4, ringScale:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f80

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "onComplete"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 770
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1487
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 979
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 983
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    .line 987
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mBackgroundAnimator:Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 989
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setRadius(F)V

    .line 941
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 954
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->cancel()V

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PointCloud;->waveManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PointCloud$WaveManager;->setAlpha(F)V

    .line 935
    return-void
.end method

.method private switchDragViewToState(IIIFF)V
    .locals 10
    .parameter "state"
    .parameter "eventX"
    .parameter "eventY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2384
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState enter mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", new state="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->converDragViewStateCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", eventY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    if-eqz v0, :cond_0

    .line 2387
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    .line 2388
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p2, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->eventX:I

    .line 2389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p3, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->eventY:I

    .line 2390
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p4, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->velocityX:F

    .line 2391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingEvent:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;

    iput p5, v0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->velocityY:F

    .line 2392
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :goto_0
    return-void

    .line 2395
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2481
    :goto_1
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchDrageViewToState exit, mDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mPendingDragViewState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2397
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 2398
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewDoingTouch:Z

    .line 2400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2401
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2402
    .local v2, b:Landroid/graphics/Bitmap;
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    .line 2403
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    .line 2405
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenX:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int v3, v0, v1

    .line 2406
    .local v3, registrationX:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewEventViewInLockScreenY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    add-int v4, v0, v1

    .line 2408
    .local v4, registrationY:I
    const-string v0, "MediatekGlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTouchDown registrationX="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", registrationY="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getScaleX()F

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/impl/keyguard/DragView;-><init>(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/keyguard/DragView;->show(II)V

    .line 2415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onDragStart(II)V

    .line 2418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2419
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideOtherNewEventViews()V

    .line 2421
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v3           #registrationX:I
    .end local v4           #registrationY:I
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimating:Z

    .line 2423
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->activateHandle(II)V

    goto/16 :goto_1

    .line 2426
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2427
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doIntersectAnimation()V

    goto/16 :goto_1

    .line 2430
    :pswitch_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2433
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2434
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerLocationInLockScreen:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/DragView;->move(FF)V

    .line 2435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onDragMove(II)V

    goto/16 :goto_1

    .line 2439
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2440
    invoke-direct {p0, p4, p5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->freeFling(FF)V

    goto/16 :goto_1

    .line 2445
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    .line 2446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2447
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showOtherNewEventViews()V

    .line 2449
    const/16 v0, 0xc8

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->animHandlerBack(II)V

    goto/16 :goto_1

    .line 2452
    :pswitch_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2453
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleTrigger(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    goto/16 :goto_1

    .line 2457
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_2

    .line 2458
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2459
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 2461
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v0, :cond_3

    .line 2462
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 2465
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v0, :cond_4

    .line 2466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setVisibility(I)V

    .line 2467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 2469
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    if-eqz v0, :cond_5

    .line 2470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/DragView;->remove()V

    .line 2471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragView:Lcom/android/internal/policy/impl/keyguard/DragView;

    .line 2473
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 2474
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 2475
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    .line 2476
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    .line 2477
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    .line 2478
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPendingDragViewState:I

    goto/16 :goto_1

    .line 2395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private switchToState(IFF)V
    .locals 6
    .parameter "state"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 556
    packed-switch p1, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 558
    :pswitch_0
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 559
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateTargets()V

    .line 560
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 561
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setState([I)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 567
    :pswitch_1
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 568
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 572
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->deactivateTargets()V

    .line 575
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showTargets(Z)V

    .line 576
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 577
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setGrabbedState(I)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->announceTargets()V

    goto :goto_0

    .line 584
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 586
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 591
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setAlpha(F)V

    .line 593
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 597
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    .line 598
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doFinish()V

    goto :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1250
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1251
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1252
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 1253
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v3, :cond_1

    .line 1254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideAllNewEventViews()V

    .line 1256
    :cond_1
    const-string v3, "MediatekGlowPadView"

    const-string v4, "** Handle HIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchToState(IFF)V

    .line 1258
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1259
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragging:Z

    .line 1262
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlobalLayoutListenr(Z)V
    .locals 1
    .parameter "shouldEnable"

    .prologue
    .line 1751
    if-eqz p1, :cond_1

    .line 1752
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    if-nez v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLayoutListenerSet:Z

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x3f80

    .line 1063
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 1064
    .local v0, dx:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 1065
    .local v1, dy:F
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 1066
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 1067
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setX(F)V

    .line 1068
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/PointCloud;->glowManager:Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/PointCloud$GlowManager;->setY(F)V

    .line 1069
    return-void
.end method

.method private updateHandleDrawablePositions(Z)V
    .locals 11
    .parameter "force"

    .prologue
    .line 1891
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1894
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v8, :cond_0

    .line 1895
    if-nez p1, :cond_3

    .line 1896
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getX()F

    move-result v6

    .line 1897
    .local v6, oldX:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getY()F

    move-result v7

    .line 1898
    .local v7, oldY:F
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    sub-float/2addr v8, v6

    float-to-int v0, v8

    .line 1899
    .local v0, deltaX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    sub-float/2addr v8, v7

    float-to-int v1, v8

    .line 1900
    .local v1, deltaY:I
    mul-int v8, v0, v0

    mul-int v9, v1, v1

    add-int v3, v8, v9

    .line 1901
    .local v3, distanceSqure:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlopSqure:I

    if-le v3, v8, :cond_2

    .line 1902
    int-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 1903
    .local v2, distance:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v0

    div-int v4, v8, v2

    .line 1904
    .local v4, offsetX:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v8, v1

    div-int v5, v8, v2

    .line 1905
    .local v5, offsetY:I
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1906
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    int-to-float v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    .line 1908
    const-string v8, "MediatekGlowPadView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", oldY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", deltaY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", distance="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offsetY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealX="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFakeHandleRealY="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 1921
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distance:I
    .end local v3           #distanceSqure:I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1922
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    goto/16 :goto_0

    .line 1914
    .restart local v0       #deltaX:I
    .restart local v1       #deltaY:I
    .restart local v3       #distanceSqure:I
    .restart local v6       #oldX:F
    .restart local v7       #oldY:F
    :cond_2
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1915
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_1

    .line 1918
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v3           #distanceSqure:I
    .end local v6           #oldX:F
    .end local v7           #oldY:F
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetX:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealX:F

    .line 1919
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentFakeHandleTargetY:F

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleRealY:F

    goto :goto_1
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setCenter(FF)V

    .line 1462
    return-void
.end method

.method private updateTargetPosition(IFF)V
    .locals 2
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSliceAngle()F

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getAngle(FI)F

    move-result v0

    .line 1421
    .local v0, angle:F
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1422
    return-void
.end method

.method private updateTargetPosition(IFFF)V
    .locals 6
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    const/high16 v5, 0x4000

    .line 1425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingWidth()F

    move-result v4

    div-float v0, v4, v5

    .line 1426
    .local v0, placementRadiusX:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingHeight()F

    move-result v4

    div-float v1, v4, v5

    .line 1427
    .local v1, placementRadiusY:F
    if-ltz p1, :cond_0

    .line 1428
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1429
    .local v3, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1430
    .local v2, targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v2, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1431
    invoke-virtual {v2, p3}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1432
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setX(F)V

    .line 1433
    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setY(F)V

    .line 1435
    .end local v2           #targetIcon:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .end local v3           #targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/TargetDrawable;>;"
    :cond_0
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1438
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FFZ)V

    .line 1439
    return-void
.end method

.method private updateTargetPositions(FFZ)V
    .locals 4
    .parameter "centerX"
    .parameter "centerY"
    .parameter "skipActive"

    .prologue
    .line 1442
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1443
    .local v2, size:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSliceAngle()F

    move-result v0

    .line 1445
    .local v0, alpha:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1446
    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActiveTarget:I

    if-eq v1, v3, :cond_1

    .line 1447
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getAngle(FI)F

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPosition(IFFF)V

    .line 1445
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1450
    :cond_2
    return-void
.end method

.method private vibrate()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    .local v0, hapticEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 779
    :cond_0
    return-void

    .line 773
    .end local v0           #hapticEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "v"
    .parameter "canvas"

    .prologue
    .line 2272
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2274
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2275
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    .line 2276
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2278
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1685
    const/4 v0, 0x0

    .line 1686
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1687
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1689
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doShakeAnimation()V
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;->beginShakeAnimation()V

    .line 2498
    :cond_0
    return-void
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1562
    if-ltz p1, :cond_1

    .line 1563
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1564
    .local v0, drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1568
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    .local v1, resId:I
    :goto_0
    return v1

    .line 1564
    .end local v1           #resId:I
    .restart local v0       #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0

    .line 1566
    .end local v0           #drawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 533
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 525
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1588
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1589
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1593
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :goto_1
    return v0

    .line 1587
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1593
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetResourceId:I

    return v0
.end method

.method public getWaveCenterX()F
    .locals 1

    .prologue
    .line 2486
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    return v0
.end method

.method public getWaveCenterY()F
    .locals 1

    .prologue
    .line 2491
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1737
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1739
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1744
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1745
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setTouchRecepient(Landroid/view/View;)V

    .line 1747
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1466
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1467
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1468
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1469
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1470
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1471
    .local v2, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1472
    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1475
    .end local v2           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1476
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v3, :cond_2

    .line 1477
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1478
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateHandleDrawablePositions(Z)V

    .line 1480
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1208
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1210
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1221
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1222
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1224
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1225
    return v2

    .line 1212
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1215
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1218
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1210
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1382
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1383
    sub-int v5, p4, p2

    .line 1384
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1388
    .local v0, height:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingWidth()F

    move-result v4

    .line 1389
    .local v4, placementWidth:F
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getRingHeight()F

    move-result v3

    .line 1390
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1392
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1395
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 1397
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 1398
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mInitialLayout:Z

    .line 1401
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1402
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOuterRing:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1404
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPointCloud:Lcom/android/internal/policy/impl/keyguard/PointCloud;

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/PointCloud;->setScale(F)V

    .line 1406
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionX(F)V

    .line 1407
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setPositionY(F)V

    .line 1409
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateTargetPositions(FF)V

    .line 1410
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updatePointCloudPosition(FF)V

    .line 1411
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlowPosition(FF)V

    .line 1413
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterX:F

    .line 1414
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveCenterY:F

    .line 1416
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dump()V

    .line 1417
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 1358
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 1359
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 1360
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 1362
    .local v0, computedHeight:I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mRingScaleFactor:F

    .line 1365
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 1366
    .local v5, scaledWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 1368
    .local v4, scaledHeight:I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeInsets(II)V

    .line 1369
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->setMeasuredDimension(II)V

    .line 1370
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x6

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1953
    const-string v5, "MediatekGlowPadView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouch event.action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawX()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", event.getRawY()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCurrentNewEventView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDragViewDoingTouch="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewDoingTouch:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mGlowPadViewState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowPadViewState:I

    if-eqz v5, :cond_1

    .line 1997
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    move-object v8, p1

    .line 1960
    check-cast v8, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 1961
    .local v8, newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-ne p1, v5, :cond_0

    .line 1964
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 1965
    .local v6, action:I
    if-nez v6, :cond_3

    .line 1966
    check-cast p1, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 1968
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    neg-float v10, v10

    float-to-int v10, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    neg-float v11, v11

    float-to-int v11, v11

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 1970
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mCurrentNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->computeOwnerNewEventViewMotionOffset(Landroid/view/View;)V

    .line 1971
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v0, v10, v0

    neg-int v0, v0

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOwnerNewEventViewOffset:[I

    aget v10, v10, v9

    neg-int v10, v10

    invoke-virtual {v5, v0, v10}, Landroid/graphics/Point;->offset(II)V

    .line 1973
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p2, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1975
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch event.getX()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", event.getY()="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.x="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mPoint.y="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 1980
    .local v7, handled:Z
    const-string v0, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onTouch handled="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTapTimeOut="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTapTimeOut:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mTouchTriggered="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    if-nez v7, :cond_4

    .line 1983
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 1984
    .local v2, eventX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 1985
    .local v3, eventY:I
    if-ne v6, v9, :cond_6

    .line 1986
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchTriggered:Z

    if-eqz v0, :cond_5

    .line 1987
    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .end local v2           #eventX:I
    .end local v3           #eventY:I
    :cond_4
    :goto_1
    move v0, v9

    .line 1997
    goto/16 :goto_0

    .restart local v2       #eventX:I
    .restart local v3       #eventY:I
    :cond_5
    move-object v0, p0

    move v5, v4

    .line 1989
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_1

    .line 1991
    :cond_6
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 1992
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-eq v0, v5, :cond_4

    move-object v0, p0

    move v5, v4

    .line 1993
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 996
    .local v0, action:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    .line 997
    .local v2, shouldDropTouch:Z
    packed-switch v0, :pswitch_data_0

    .line 1012
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_2

    .line 1059
    :cond_1
    :goto_1
    return v3

    .line 1000
    :pswitch_1
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 1001
    const-string v4, "MediatekGlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent return directly mDragViewState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragViewState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    .line 1003
    const/4 v2, 0x1

    goto :goto_0

    .line 1009
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchDropped:Z

    goto :goto_0

    .line 1016
    :cond_2
    const/4 v1, 0x0

    .line 1017
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_1

    .line 1058
    :cond_3
    :goto_2
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->invalidate()V

    .line 1059
    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 1020
    :pswitch_4
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** DOWN ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1023
    const/4 v1, 0x1

    .line 1024
    goto :goto_2

    .line 1027
    :pswitch_5
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** MOVE ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1029
    const/4 v1, 0x1

    .line 1030
    goto :goto_2

    .line 1034
    :pswitch_6
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** UP ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 1039
    const/4 v1, 0x1

    .line 1040
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_2

    .line 1046
    :pswitch_7
    const-string v4, "MediatekGlowPadView"

    const-string v5, "*** CANCEL ***"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mActionCancel:Z

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 1050
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 1051
    const/4 v1, 0x1

    .line 1052
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    if-eqz v4, :cond_3

    .line 1053
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->showAllNewEventViews()V

    goto :goto_2

    .line 997
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1017
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->pingInternal()V

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->doShakeAnimation()V

    .line 911
    return-void
.end method

.method public pingInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 914
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 915
    const/4 v0, 0x1

    .line 916
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    .line 919
    .local v3, waveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 921
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 922
    const/4 v0, 0x0

    .line 926
    .end local v1           #t:J
    :cond_0
    if-eqz v0, :cond_1

    .line 927
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startWaveAnimation()V

    .line 930
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1630
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1658
    :cond_0
    :goto_0
    return v5

    .line 1632
    :cond_1
    const/4 v5, 0x0

    .line 1633
    .local v5, replaced:Z
    if-eqz p1, :cond_2

    .line 1635
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1637
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1639
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1640
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1641
    .local v1, iconResId:I
    if-eqz v1, :cond_2

    .line 1642
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1643
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1654
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1656
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1649
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1650
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "MediatekGlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 6
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 965
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->startBackgroundAnimation(IF)V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->stopAndHideWaveAnimation()V

    .line 967
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideTargets(ZZ)V

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, v2, v2, v4, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mFakeHandleAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->stop()V

    .line 972
    const/4 v1, 0x7

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->switchDragViewToState(IIIFF)V

    .line 974
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/Tweener;->reset()V

    .line 975
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->start()V

    .line 505
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 876
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptionsResourceId:I

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 880
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1573
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    .line 1574
    .local v1, target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1575
    invoke-virtual {v1, p2}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setEnabled(Z)V

    .line 1579
    .end local v1           #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_0
    return-void

    .line 1572
    .restart local v1       #target:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 825
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mHandleDrawable:Lcom/android/internal/policy/impl/keyguard/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 828
    :cond_0
    return-void
.end method

.method public setLockScreenView(Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;)V
    .locals 0
    .parameter "lockScreenLayout"

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mLockScreenLayout:Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;

    .line 1775
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mOnTriggerListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$OnTriggerListener;

    .line 1484
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 855
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptionsResourceId:I

    .line 856
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 839
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mNewTargetResources:I

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setTouchRecepient(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1672
    if-eqz p1, :cond_0

    .line 1673
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1674
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    .line 1675
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->refreshPositions()V

    .line 1680
    :goto_0
    return-void

    .line 1677
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchRecepient:Landroid/view/View;

    .line 1678
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->updateGlobalLayoutListenr(Z)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 897
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 902
    :goto_0
    return-void

    .line 900
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mWaveAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTargetAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGlowAnimations:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 496
    return-void
.end method

.method public syncUnReadEventView(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V
    .locals 7
    .parameter "unReadEventView"

    .prologue
    const/4 v6, 0x0

    .line 1778
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    .line 1779
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mUnReadEventView:Lcom/android/internal/policy/impl/keyguard/UnReadEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getNewEventViewList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1780
    .local v2, newEventViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1781
    :cond_0
    const-string v3, "MediatekGlowPadView"

    const-string v4, "syncUnReadEventView get empty newEventViews"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :goto_0
    return-void

    .line 1784
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1785
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1786
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1788
    :cond_2
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    .line 1789
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mSimpleOnGestureListener:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$SimpleOnGestureListener;

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1790
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1792
    const/high16 v3, 0x4040

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    .line 1793
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mTouchSlopSqure:I

    .line 1794
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapWidth()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getNewEventBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->dist2(FF)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;->mDragSnapMargin:F

    goto :goto_0
.end method
