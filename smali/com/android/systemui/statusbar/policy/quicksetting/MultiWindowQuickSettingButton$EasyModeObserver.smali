.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 177
    const-string v1, "STATUSBAR-MultiWindowSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EasyModeObserver.onChange() - EASY_MODE_ON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setActivateStatus(I)V

    .line 184
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method
