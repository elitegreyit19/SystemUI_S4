.class Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;
.super Ljava/lang/Object;
.source "WiFiHotspotQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 360
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
