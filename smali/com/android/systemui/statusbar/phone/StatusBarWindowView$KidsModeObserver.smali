.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;
.super Landroid/database/ContentObserver;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KidsModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 211
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 214
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    #getter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_mode_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    #setter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;I)I

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mQuickSettingPanelHeight:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->access$102(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;I)I

    goto :goto_0
.end method
