.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "MobileDataQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)I

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mobile_data"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z

    .line 155
    const-string v0, "STATUSBAR-MobileDataQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: mMobileData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAirPlaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    goto :goto_1
.end method
