.class Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$2;
.super Ljava/lang/Object;
.source "PowerSavingQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    const-string v0, "STATUSBAR-PowerSavingController"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PowerSavingModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
