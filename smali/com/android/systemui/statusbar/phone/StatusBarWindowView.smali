.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;
    }
.end annotation


# static fields
.field private static final DB_KIDS_MODE:Ljava/lang/String; = "kids_mode_enabled"

.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "StatusBarWindowView"

.field private static final TOUCHEVENT_TO_NOTIFICATION:I = 0x2

.field private static final TOUCHEVENT_TO_ONGOING:I = 0x1


# instance fields
.field private eventToWhere:I

.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mKidsModeObserver:Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;

.field private mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNotificationPanelHeaderHeight:I

.field private mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mQuickSettingPanelHeight:I

.field private mScrollView:Landroid/widget/ScrollView;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    return p1
.end method


# virtual methods
.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 206
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 104
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 103
    .end local v0           #down:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    .restart local v0       #down:Z
    :pswitch_0
    if-nez v0, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    .line 76
    const v2, 0x7f090065

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, minHeight:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, maxHeight:I
    const v2, 0x7f09006f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 81
    const v2, 0x7f090073

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 82
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 83
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/ExpandHelper;->setScrollView(Landroid/view/View;)V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/ExpandHelper;->setScrollView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelHeaderHeight:I

    .line 90
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_mode_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 91
    :cond_0
    iput v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    .line 97
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_mode_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mKidsModeObserver:Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 197
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, intercept:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 118
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .local v3, ongoingBound:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 120
    .local v2, notificationBound:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 121
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelHeaderHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 123
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelHeaderHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 125
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 126
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelHeaderHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 128
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanelHeaderHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->eventToWhere:I

    .line 149
    .end local v2           #notificationBound:Landroid/graphics/Rect;
    .end local v3           #ongoingBound:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    :cond_1
    if-eqz v1, :cond_2

    .line 153
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 154
    .local v0, cancellation:Landroid/view/MotionEvent;
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 155
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->eventToWhere:I

    packed-switch v4, :pswitch_data_0

    .line 163
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 165
    .end local v0           #cancellation:Landroid/view/MotionEvent;
    :cond_2
    return v1

    .line 143
    .restart local v2       #notificationBound:Landroid/graphics/Rect;
    .restart local v3       #ongoingBound:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->eventToWhere:I

    goto :goto_0

    .line 157
    .end local v2           #notificationBound:Landroid/graphics/Rect;
    .end local v3           #ongoingBound:Landroid/graphics/Rect;
    .restart local v0       #cancellation:Landroid/view/MotionEvent;
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->onGoingItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 160
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->notificationItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->eventToWhere:I

    packed-switch v1, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 184
    :cond_1
    return v0

    .line 174
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mOngoingExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
