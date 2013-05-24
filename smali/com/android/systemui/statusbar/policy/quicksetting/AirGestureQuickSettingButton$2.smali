.class Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;
.super Ljava/lang/Object;
.source "AirGestureQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    const-string v0, "STATUSBAR-AirGesture"

    const-string v1, "showConfirmPopup() - Positive onClick mode: ok"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
