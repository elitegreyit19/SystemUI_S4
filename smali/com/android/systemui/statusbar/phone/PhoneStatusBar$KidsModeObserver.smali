.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KidsModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3573
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3574
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3575
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3577
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingDivider:Landroid/view/View;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSetting:Landroid/view/View;

    if-nez v5, :cond_2

    move v5, v3

    :goto_1
    or-int/2addr v5, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    or-int/2addr v5, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    or-int/2addr v2, v5

    if-eqz v2, :cond_5

    .line 3613
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v2, v4

    .line 3577
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    .line 3580
    :cond_5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3581
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "kids_mode_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 3582
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3583
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3584
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSetting:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3585
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3586
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3589
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v2, :cond_0

    .line 3590
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3591
    .local v0, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3592
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 3597
    .end local v0           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKidsModeActivated:Z
    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3598
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSettingDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3599
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBasicSetting:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3600
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3601
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3604
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v2, :cond_0

    .line 3605
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e004a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 3607
    .local v1, topMargin:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3608
    .restart local v0       #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3609
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method
