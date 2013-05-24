.class public Lcom/android/systemui/statusbar/phone/SettingsPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "SettingsPanelView.java"


# instance fields
.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarHeight:F

.field mHandleView:Landroid/view/View;

.field private mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field private mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

.field private mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 139
    .local v0, off:I
    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 141
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 143
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 110
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 111
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

    const-string v3, "settings,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 116
    return-void

    .line 111
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 60
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 64
    const v1, 0x7f0e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    .line 65
    const v1, 0x7f09002b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleView:Landroid/view/View;

    .line 67
    const v1, 0x7f0c00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
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
    .line 127
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingLeft()I

    move-result v0

    .line 130
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getPaddingRight()I

    move-result v1

    .line 131
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mHandleBarHeight:F

    float-to-int v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 1
    .parameter "panelBar"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 81
    :cond_0
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setImeWindowStatus(Z)V

    .line 87
    :cond_0
    return-void
.end method

.method public setQuickSettings(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "qs"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    .line 72
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 1
    .parameter "networkController"
    .parameter "bluetoothController"
    .parameter "batteryController"
    .parameter "locationController"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V

    .line 95
    :cond_0
    return-void
.end method

.method updateResources()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->requestLayout()V

    .line 105
    return-void
.end method
