.class Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;
.super Ljava/lang/Object;
.source "DormantModeQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->onDisplayDormantModeAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

.field final synthetic val$mDormantModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 247
    if-eqz p2, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->val$mDormantModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 255
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_dormantmode_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
