.class Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "serviceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 108
    .local v0, inAirplaneMode:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z

    .line 109
    const-string v3, "STATUSBAR-AirplaneModeQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhoneStateListener - inAirplaneMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 114
    return-void

    .end local v0           #inAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 107
    goto :goto_0

    .line 110
    .restart local v0       #inAirplaneMode:Z
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
