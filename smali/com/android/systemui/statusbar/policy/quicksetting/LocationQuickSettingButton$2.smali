.class Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;
.super Ljava/lang/Object;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

.field final synthetic val$mGpsCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;->val$mGpsCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;->val$mGpsCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 233
    return-void
.end method
