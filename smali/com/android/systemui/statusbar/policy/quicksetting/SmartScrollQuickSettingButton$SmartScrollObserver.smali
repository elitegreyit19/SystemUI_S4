.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "SmartScrollQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 153
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z

    .line 160
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "face_smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;Z)Z

    .line 161
    const-string v0, "STATUSBAR-SmartScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartScrollObserver.onChange() - DB_SMART_SCROLL_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "STATUSBAR-SmartScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartScrollObserver.onChange() - DB_FACE_SMART_SCROLL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mSmartState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mFaceState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 180
    return-void

    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    :cond_1
    move v0, v2

    .line 160
    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I
    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    goto :goto_2

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->mButtonStatus:I
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;I)I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton$SmartScrollObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartScrollQuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method
