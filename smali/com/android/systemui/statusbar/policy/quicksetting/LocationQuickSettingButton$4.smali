.class Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;
.super Ljava/lang/Object;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 253
    const-string v1, "STATUSBAR-LocationQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPositiveButton onClick()...value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->val$value:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "gps_alert_pref"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;->val$value:Z

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V

    .line 258
    return-void
.end method
