.class Lcom/android/systemui/statusbar/phone/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 288
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 289
    .local v6, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 293
    .local v3, rawY:F
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PanelView;->getLocationOnScreen([I)V

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return v8

    .line 297
    :pswitch_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 298
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setPressed(Z)V

    .line 299
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 300
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput v6, v9, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 301
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 302
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v9, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 303
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/TimeAnimator;->cancel()V

    .line 304
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 305
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v10

    aget v10, v10, v8

    int-to-float v10, v10

    sub-float v10, v3, v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v11

    sub-float/2addr v10, v11

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$902(Lcom/android/systemui/statusbar/phone/PanelView;F)F

    .line 306
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    cmpl-float v9, v9, v12

    if-nez v9, :cond_0

    .line 307
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v9, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 308
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 315
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/TimeAnimator;->cancel()V

    .line 316
    sget-object v10, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v11, "Stop Anim."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$400(Lcom/android/systemui/statusbar/phone/PanelView;)[I

    move-result-object v10

    aget v10, v10, v8

    int-to-float v10, v10

    sub-float v10, v3, v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PanelView;->access$900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v11

    sub-float v1, v10, v11

    .line 321
    .local v1, h:F
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v10

    cmpl-float v10, v1, v10

    if-lez v10, :cond_3

    .line 322
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 323
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 325
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v10, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1102(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 327
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 328
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 329
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 332
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v9, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 337
    .end local v1           #h:F
    :pswitch_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput v6, v10, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    .line 338
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z
    invoke-static {v10, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 339
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->setPressed(Z)V

    .line 340
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 341
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 342
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #calls: Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V
    invoke-static {v10, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$800(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V

    .line 344
    const/4 v4, 0x0

    .local v4, vel:F
    const/4 v7, 0x0

    .local v7, yVel:F
    const/4 v5, 0x0

    .line 345
    .local v5, xVel:F
    const/4 v2, 0x0

    .line 347
    .local v2, negative:Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 349
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 351
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    .line 352
    cmpg-float v10, v7, v12

    if-gez v10, :cond_c

    move v2, v8

    .line 354
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 355
    cmpg-float v9, v5, v12

    if-gez v9, :cond_5

    .line 356
    neg-float v5, v5

    .line 358
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    .line 359
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v5

    .line 362
    :cond_6
    float-to-double v9, v7

    float-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 363
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    cmpl-float v9, v4, v9

    if-lez v9, :cond_7

    .line 364
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v4

    .line 367
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$700(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/view/VelocityTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 368
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 v10, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 373
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v9, v9, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 374
    .local v0, deltaY:F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    cmpg-float v9, v0, v9

    if-ltz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PanelView;->access$1900(Lcom/android/systemui/statusbar/phone/PanelView;)F

    move-result v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_a

    .line 377
    :cond_9
    const/4 v4, 0x0

    .line 380
    :cond_a
    if-eqz v2, :cond_b

    .line 381
    neg-float v4, v4

    .line 389
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v9, v4, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_0

    .end local v0           #deltaY:F
    :cond_c
    move v2, v9

    .line 352
    goto :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
