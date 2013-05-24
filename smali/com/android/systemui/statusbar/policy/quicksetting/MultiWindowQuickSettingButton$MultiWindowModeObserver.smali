.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiWindowModeObserver.onChange() - DB_MULTI_WINDOW_MODE_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;Z)Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 167
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method
