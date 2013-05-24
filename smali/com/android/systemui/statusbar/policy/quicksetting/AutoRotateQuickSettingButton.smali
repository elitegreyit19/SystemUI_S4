.class public Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AutoRotateQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AutoRotateQuickSettingButton"


# instance fields
.field private mAutoRotation:Z

.field private mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 68
    const/4 v2, 0x0

    const v3, 0x7f0c0124

    const v4, 0x7f0201a7

    const v5, 0x7f0201a6

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    .line 75
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method private getAutoRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .parameter "autorotate"

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 129
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setActivateStatus(I)V

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const-string v0, "STATUSBAR-AutoRotateQuickSettingButton"

    const-string v1, "onClick(): Rotation state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eq p1, v0, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setAutoRotation(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
