.class Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$4;
.super Ljava/lang/Object;
.source "BrightnessQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 149
    return-void
.end method
