.class public Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PowerSavingQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;
    }
.end annotation


# static fields
.field private static final DB_PSM_SWITCH:Ljava/lang/String; = "psm_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PowerSavingController"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z

.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 63
    const/4 v2, 0x0

    const v3, 0x7f0c012b

    const v4, 0x7f0201a2

    const v5, 0x7f0201a1

    const v6, 0x7f0201a0

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    .line 73
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    .line 77
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 76
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private canEnablePowerSaving()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 162
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_cpu_clock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, cpu:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_display"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, display:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, back:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_haptic_feedback"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, haptic:I
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    move v4, v6

    .line 174
    .local v4, retVal:Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    move v4, v6

    .line 178
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mSupportBrowser:Z

    if-eqz v5, :cond_1

    .line 179
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v4, v6

    .line 181
    :cond_1
    :goto_2
    return v4

    .end local v4           #retVal:Z
    :cond_2
    move v4, v7

    .line 172
    goto :goto_0

    .restart local v4       #retVal:Z
    :cond_3
    move v4, v7

    .line 176
    goto :goto_1

    :cond_4
    move v4, v7

    .line 179
    goto :goto_2
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "c"
    .parameter "pkg"

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 186
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 188
    .local v1, hasPkg:Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 198
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_switch"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 128
    const/4 v1, 0x5

    .line 130
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c015b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->statusBarCollapse()V

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 153
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

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
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mSupportBrowser:Z

    .line 84
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "STATUSBAR-PowerSavingController"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v0, "STATUSBAR-PowerSavingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerSaving  onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const-string v0, "STATUSBAR-PowerSavingController"

    const-string v1, "onClick(): PowerSaving state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->canEnablePowerSaving()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 114
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PowerSavingModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
