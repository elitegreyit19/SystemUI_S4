.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# static fields
.field private static final BLINDS:I = 0x1

.field protected static final DEBUG:Z = false

.field protected static final DEBUG_GLOW:Z = false

.field protected static final DEBUG_SCALE:Z = false

.field private static final EXPAND_DURATION:J = 0xfaL

.field private static final GLOW_BASE:F = 0.5f

.field private static final GLOW_DURATION:J = 0x96L

.field private static final NONE:I = 0x0

.field private static final PULL:I = 0x2

.field private static final STRETCH:I = 0x4

.field private static final STRETCH_INTERVAL:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "ExpandHelper"

.field private static final USE_DRAG:Z = true

.field private static final USE_SPAN:Z = true


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mCurrViewBottomGlow:Landroid/view/View;

.field private mCurrViewTopGlow:Landroid/view/View;

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mGlowAnimationSet:Landroid/animation/AnimatorSet;

.field private mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

.field private mGlowTopAnimation:Landroid/animation/ObjectAnimator;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:I

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mPopDuration:I

.field private mPopLimit:F

.field private mPullGestureMinXSpan:F

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollView:Landroid/view/View;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

.field private mUseTwSGD:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "small"
    .parameter "large"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 117
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 192
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 193
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 194
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 195
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 197
    new-instance v2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 198
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 199
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v3, "height"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 201
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    .line 202
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    .line 203
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 205
    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 223
    .local v1, glowVisibilityController:Landroid/animation/AnimatorListenerAdapter;
    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 225
    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    .line 226
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    .line 228
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 229
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 231
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 232
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->prepareTwScaleGestureDetector()V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    if-eqz v2, :cond_0

    .line 238
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method private calculateGlow(FF)F
    .locals 9
    .parameter "target"
    .parameter "actual"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    .line 346
    sub-float v2, p1, p2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 347
    .local v1, stretch:F
    const-wide v2, 0x4005bf0a8b145769L

    const/high16 v4, -0x4080

    const/high16 v5, 0x4100

    mul-float/2addr v5, v1

    const/high16 v6, 0x40a0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v8

    div-float v0, v8, v2

    .line 349
    .local v0, strength:F
    mul-float v2, v0, v7

    add-float/2addr v2, v7

    return v2
.end method

.method private clamp(F)F
    .locals 2
    .parameter "target"

    .prologue
    .line 287
    move v0, p1

    .line 288
    .local v0, out:F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 289
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 290
    :cond_1
    return v0

    .line 288
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 652
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 653
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 654
    return-void
.end method

.method private findView(FF)Landroid/view/View;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 297
    .local v0, location:[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 298
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 299
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 300
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v1

    .line 304
    .end local v0           #location:[I
    :goto_0
    return-object v1

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private finishExpanding(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 615
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v4, :cond_0

    .line 648
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 620
    .local v0, currentHeight:F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    .line 621
    .local v2, targetHeight:F
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    .line 622
    .local v1, h:F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_4

    move v3, v5

    .line 623
    .local v3, wasClosed:Z
    :goto_1
    if-eqz v3, :cond_6

    .line 624
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    :cond_1
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 628
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 629
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 631
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 632
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_3
    invoke-interface {v7, v8, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)Z

    .line 633
    cmpl-float v4, v2, v0

    if-eqz v4, :cond_3

    .line 634
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v5, v5, [F

    aput v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 635
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 636
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 638
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)Z

    .line 640
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 641
    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    goto :goto_0

    .end local v3           #wasClosed:Z
    :cond_4
    move v3, v6

    .line 622
    goto :goto_1

    .line 624
    .restart local v3       #wasClosed:Z
    :cond_5
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    goto :goto_2

    .line 626
    :cond_6
    if-nez p1, :cond_7

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    :goto_4
    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_4

    :cond_9
    move v4, v6

    .line 632
    goto :goto_3
.end method

.method private handleGlowVisibility()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 377
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    return-void

    :cond_0
    move v0, v2

    .line 377
    goto :goto_0

    :cond_1
    move v1, v2

    .line 379
    goto :goto_1
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 310
    if-nez p1, :cond_0

    .line 328
    :goto_0
    return v4

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 315
    new-array v1, v6, [I

    .line 316
    .local v1, location:[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 317
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 318
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 321
    .end local v1           #location:[I
    :cond_1
    new-array v1, v6, [I

    .line 322
    .restart local v1       #location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 323
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 324
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 327
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v0, v3

    .local v0, inside:Z
    :goto_3
    move v4, v0

    .line 328
    goto :goto_0

    .end local v0           #inside:Z
    :cond_2
    move v2, v4

    .line 327
    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private prepareTwScaleGestureDetector()V
    .locals 7

    .prologue
    .line 706
    :try_start_0
    const-string v4, "com.sec.android.touchwiz.view.TwScaleGestureDetector"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 707
    .local v3, twSGDClass:Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector$OnScaleGestureListener;

    aput-object v5, v2, v4

    .line 708
    .local v2, paraType:[Ljava/lang/Class;
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 709
    .local v0, cons:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/android/systemui/ExpandHelper$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/ExpandHelper$3;-><init>(Lcom/android/systemui/ExpandHelper;)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    iput-object v4, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    .end local v0           #cons:Ljava/lang/reflect/Constructor;
    .end local v2           #paraType:[Ljava/lang/Class;
    .end local v3           #twSGDClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ExpandHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 658
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 659
    check-cast v0, Landroid/view/ViewGroup;

    .line 660
    .local v0, g:Landroid/view/ViewGroup;
    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 661
    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 669
    .end local v0           #g:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private startExpanding(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "expandType"

    .prologue
    const/4 v2, 0x1

    .line 591
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 592
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 595
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 597
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)Z

    .line 598
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->setView(Landroid/view/View;)V

    .line 599
    const/high16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 602
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 611
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 607
    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_1
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f80

    .line 249
    const/4 v4, 0x0

    .line 250
    .local v4, span:F
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 256
    :goto_0
    mul-float/2addr v4, v7

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, drag:F
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 265
    :goto_1
    mul-float/2addr v0, v7

    .line 266
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_2

    const/high16 v6, -0x4080

    :goto_2
    mul-float/2addr v0, v6

    .line 267
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 268
    .local v3, pull:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 269
    .local v1, hand:F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 270
    .local v5, target:F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 271
    .local v2, newHeight:F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 273
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 276
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v6, :cond_3

    .line 277
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 278
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 284
    :goto_3
    return-void

    .line 253
    .end local v0           #drag:F
    .end local v1           #hand:F
    .end local v2           #newHeight:F
    .end local v3           #pull:F
    .end local v5           #target:F
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    goto :goto_0

    .line 263
    .restart local v0       #drag:F
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    goto :goto_1

    :cond_2
    move v6, v7

    .line 266
    goto :goto_2

    .line 280
    .restart local v1       #hand:F
    .restart local v2       #newHeight:F
    .restart local v3       #pull:F
    .restart local v5       #target:F
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 281
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    goto :goto_3
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 683
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 686
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 687
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 673
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 674
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 676
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 393
    .local v0, action:I
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v5, 0x0

    .line 394
    .local v5, y:I
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v10, :cond_1

    .line 395
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 396
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusX()F

    move-result v10

    float-to-int v3, v10

    .line 397
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v10

    float-to-int v5, v10

    .line 405
    :goto_0
    int-to-float v10, v5

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 408
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v10, :cond_2

    .line 409
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 415
    :goto_1
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 416
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 419
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v10, :cond_3

    .line 488
    :cond_0
    :goto_2
    return v8

    .line 399
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 400
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v10

    float-to-int v3, v10

    .line 401
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v10

    float-to-int v5, v10

    goto :goto_0

    .line 411
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto :goto_1

    .line 422
    :cond_3
    if-ne v0, v11, :cond_4

    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 427
    :cond_4
    const/4 v1, 0x0

    .line 428
    .local v1, isInProgress:Z
    const/4 v4, 0x0

    .line 429
    .local v4, xspan:F
    const/4 v7, 0x0

    .line 430
    .local v7, yspan:F
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v10, :cond_5

    .line 431
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->isInProgress()Z

    move-result v1

    .line 432
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    .line 433
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpanY()F

    move-result v7

    .line 440
    :goto_3
    if-ne v0, v11, :cond_6

    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_6

    cmpl-float v10, v4, v7

    if-lez v10, :cond_6

    if-eqz v1, :cond_6

    .line 448
    int-to-float v9, v3

    int-to-float v10, v5

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v2

    .line 449
    .local v2, underFocus:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 450
    invoke-direct {p0, v2, v11}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    goto :goto_2

    .line 435
    .end local v2           #underFocus:Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    .line 436
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    .line 437
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v10}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v7

    goto :goto_3

    .line 454
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScrollY()I

    move-result v10

    if-lez v10, :cond_7

    move v8, v9

    .line 455
    goto :goto_2

    .line 458
    :cond_7
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 488
    :cond_8
    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    goto/16 :goto_2

    .line 460
    :pswitch_0
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v10, :cond_8

    .line 461
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    sub-int v6, v5, v10

    .line 462
    .local v6, yDiff:I
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-le v6, v10, :cond_8

    .line 464
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    .line 465
    int-to-float v10, v3

    int-to-float v11, v5

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v2

    .line 466
    .restart local v2       #underFocus:Landroid/view/View;
    if-eqz v2, :cond_8

    .line 467
    invoke-direct {p0, v2, v8}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 468
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 469
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_4

    .line 477
    .end local v2           #underFocus:Landroid/view/View;
    .end local v6           #yDiff:I
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    int-to-float v9, v3

    int-to-float v10, v5

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 478
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    goto :goto_4

    .line 484
    :pswitch_2
    invoke-direct {p0, v9}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_4

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 502
    .local v0, action:I
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v11, :cond_1

    .line 503
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v11, p1}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 509
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 587
    :cond_0
    :goto_1
    :pswitch_0
    return v9

    .line 505
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 511
    :pswitch_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_9

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v4, v11, v12

    .line 513
    .local v4, rawHeight:F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 514
    .local v2, newHeight:F
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_6

    move v6, v9

    .line 515
    .local v6, wasClosed:Z
    :goto_2
    const/4 v1, 0x0

    .line 516
    .local v1, isFinished:Z
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_2

    .line 517
    const/4 v1, 0x1

    .line 519
    :cond_2
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_3

    .line 520
    const/4 v1, 0x1

    .line 523
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 524
    .local v3, pull:F
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_4

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    cmpl-float v11, v3, v11

    if-lez v11, :cond_5

    .line 525
    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_5

    .line 526
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    .line 527
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 531
    :cond_5
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-eqz v11, :cond_7

    .line 532
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v11, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 533
    const/high16 v11, 0x3f00

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 539
    :goto_3
    const/4 v7, 0x0

    .local v7, x:I
    const/4 v8, 0x0

    .line 540
    .local v8, y:I
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v11, :cond_8

    .line 541
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusX()F

    move-result v11

    float-to-int v7, v11

    .line 542
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v11

    float-to-int v8, v11

    .line 548
    :goto_4
    int-to-float v11, v7

    int-to-float v12, v8

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v5

    .line 549
    .local v5, underFocus:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-eq v5, v11, :cond_0

    .line 550
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 551
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 552
    int-to-float v11, v8

    iput v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 553
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto/16 :goto_1

    .end local v1           #isFinished:Z
    .end local v3           #pull:F
    .end local v5           #underFocus:Landroid/view/View;
    .end local v6           #wasClosed:Z
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_6
    move v6, v10

    .line 514
    goto :goto_2

    .line 535
    .restart local v1       #isFinished:Z
    .restart local v3       #pull:F
    .restart local v6       #wasClosed:Z
    :cond_7
    const/high16 v11, 0x4080

    mul-float/2addr v11, v3

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    goto :goto_3

    .line 544
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_8
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    float-to-int v7, v11

    .line 545
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    float-to-int v8, v11

    goto :goto_4

    .line 558
    .end local v1           #isFinished:Z
    .end local v2           #newHeight:F
    .end local v3           #pull:F
    .end local v4           #rawHeight:F
    .end local v6           #wasClosed:Z
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_9
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v10, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    goto/16 :goto_1

    .line 570
    :pswitch_2
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mUseTwSGD:Z

    if-eqz v10, :cond_a

    .line 571
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 572
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mTwSGD:Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/view/TwScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_1

    .line 574
    :cond_a
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 575
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_1

    .line 583
    :pswitch_3
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_1

    .line 509
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .parameter "eventSource"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 333
    return-void
.end method

.method public setGlow(F)V
    .locals 4
    .parameter "glow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 358
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 374
    :cond_3
    :goto_0
    return-void

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->handleGlowVisibility()V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 336
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 337
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    .line 341
    return-void
.end method
