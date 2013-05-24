.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;
    }
.end annotation


# static fields
.field private static final DB_AIR_VIEW:Ljava/lang/String; = "finger_air_view"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirView"


# instance fields
.field private mAirViewObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 45
    const/4 v2, 0x0

    const v3, 0x7f0c0135

    const v4, 0x7f02017b

    const v5, 0x7f02017a

    const v6, 0x7f020179

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    .line 59
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 57
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 155
    const/4 v1, 0x5

    .line 157
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c018a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->statusBarCollapse()V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 180
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 185
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 186
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mAirViewObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$AirViewObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 134
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, magnifier:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_show_up_indicator"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, showUpIndicator:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, informationPreview:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, fullText:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pointer"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 139
    .local v3, pointer:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pregress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 140
    .local v4, progressBarPreview:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_speed_dial_tip"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 142
    .local v6, speedDialTip:I
    or-int v9, v2, v5

    or-int/2addr v9, v1

    or-int/2addr v9, v0

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 74
    const-string v0, "STATUSBAR-AirView"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "STATUSBAR-AirView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirView onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 83
    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    const v0, 0x7f0c0139

    const v1, 0x7f0c013a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setActivateStatus(I)V

    .line 97
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$FingerAirViewSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
