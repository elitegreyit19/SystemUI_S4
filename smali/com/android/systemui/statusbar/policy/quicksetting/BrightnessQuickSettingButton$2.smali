.class Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$2;
.super Lcom/android/systemui/statusbar/policy/BrightnessController;
.source "BrightnessQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->showBrightnessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 2
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/BrightnessController;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    const/16 v1, 0xfa0

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->dismissBrightnessDialog(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;I)V

    .line 127
    return-void
.end method
