.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"


# instance fields
.field mFingers:I

.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarArea:F

.field mHandleBarHeight:F

.field mHandleView:Landroid/view/View;

.field mOkToFlip:Z

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 88
    .local v0, off:I
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 65
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 71
    return-void

    .line 66
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 55
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    .line 56
    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    .line 57
    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    .line 59
    const v1, 0x7f0c00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingLeft()I

    move-result v0

    .line 79
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPaddingRight()I

    move-result v1

    .line 80
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarHeight:F

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 122
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 99
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    goto :goto_0

    .line 102
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 104
    .local v2, miny:F
    move v1, v2

    .line 105
    .local v1, maxy:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 107
    .local v3, y:F
    cmpg-float v5, v3, v2

    if-gez v5, :cond_2

    move v2, v3

    .line 108
    :cond_2
    cmpl-float v5, v3, v1

    if-lez v5, :cond_3

    move v1, v3

    .line 105
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v3           #y:F
    :cond_4
    sub-float v5, v1, v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHandleBarArea:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 112
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->switchToSettings()V

    .line 116
    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOkToFlip:Z

    goto :goto_0

    .line 114
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->flipToSettings()V

    goto :goto_2

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 47
    return-void
.end method
