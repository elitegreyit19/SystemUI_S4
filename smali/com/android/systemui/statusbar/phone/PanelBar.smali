.class public Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final ANIMATING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field public static final COLLAPSE_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field public static final COLLAPSE_ACTION_PERMISSION:Ljava/lang/String; = "android.permission.EXPAND_STATUS_BAR"

.field public static final DEBUG:Z = false

.field public static final EXPAND_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field public static final STATE_OPENING:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mPanelExpandedFractionSum:F

.field mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

.field mPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 64
    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "fmt"
    .parameter "args"

    .prologue
    .line 41
    return-void
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "pv"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 74
    return-void
.end method

.method public collapseAllPanels(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, waiting:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 206
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    .line 208
    const/4 v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 211
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .line 215
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    if-nez v2, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v3, :cond_2

    .line 218
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 221
    :cond_2
    return-void
.end method

.method public getBarHeight()F
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public go(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 60
    return-void
.end method

.method public onAllPanelsCollapsed()V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setFocusable(Z)V

    .line 234
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 69
    return-void
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 3
    .parameter "openPanel"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->setFocusable(Z)V

    .line 241
    return-void
.end method

.method public onPanelPeeked()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 147
    :goto_0
    return v2

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    .line 113
    .local v1, panel:Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_1

    .line 116
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 122
    .local v0, enabled:Z
    if-nez v0, :cond_2

    .line 124
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 144
    .end local v0           #enabled:Z
    .end local v1           #panel:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 147
    .local v2, result:Z
    :cond_4
    goto :goto_0

    .line 128
    .end local v2           #result:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1
.end method

.method public onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 249
    return-void
.end method

.method public onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 254
    return-void
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 11
    .parameter "panel"
    .parameter "frac"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, fullyClosed:Z
    const/4 v1, 0x0

    .line 166
    .local v1, fullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 167
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 168
    .local v3, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    .line 170
    .local v5, visible:Z
    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 171
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez v8, :cond_1

    .line 172
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 175
    :cond_1
    const/4 v0, 0x0

    .line 176
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    .line 177
    .local v4, thisFrac:F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    if-eqz v5, :cond_4

    move v8, v4

    :goto_2
    add-float/2addr v8, v10

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 179
    if-ne p1, v3, :cond_2

    .line 180
    const/high16 v8, 0x3f80

    cmpl-float v8, v4, v8

    if-nez v8, :cond_2

    move-object v1, p1

    .line 183
    .end local v4           #thisFrac:F
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v8

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    .line 184
    if-nez v5, :cond_0

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .end local v5           #visible:Z
    :cond_3
    move v5, v7

    .line 168
    goto :goto_1

    .restart local v4       #thisFrac:F
    .restart local v5       #visible:Z
    :cond_4
    move v8, v9

    .line 177
    goto :goto_2

    .line 186
    .end local v4           #thisFrac:F
    :cond_5
    if-eqz v5, :cond_0

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    goto :goto_0

    .line 189
    .end local v3           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    .end local v5           #visible:Z
    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelExpandedFractionSum:F

    .line 190
    if-eqz v1, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_8

    .line 191
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 200
    :cond_7
    :goto_3
    return-void

    .line 193
    :cond_8
    if-eqz v0, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz v6, :cond_7

    .line 194
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    goto :goto_3
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 4
    .parameter "touch"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, N:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    return-object v1
.end method

.method public setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V
    .locals 6
    .parameter "ph"

    .prologue
    .line 77
    if-nez p1, :cond_1

    .line 78
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const-string v4, "setPanelHolder: null PanelHolder"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildCount()I

    move-result v0

    .line 84
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelHolder;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v3, :cond_2

    .line 87
    check-cast v2, Lcom/android/systemui/statusbar/phone/PanelView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 84
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 4
    .parameter "panel"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelHolder:Lcom/android/systemui/statusbar/phone/PanelHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTouchingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PanelHolder;->setSelectedPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 156
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    if-eq v1, p1, :cond_0

    .line 157
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse()V

    goto :goto_0

    .line 160
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    return-void
.end method
