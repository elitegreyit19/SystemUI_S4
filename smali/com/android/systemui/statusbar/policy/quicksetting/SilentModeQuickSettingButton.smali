.class public Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SilentModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeQuickSettingButton"

.field private static mDeviceSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const v3, 0x7f0c0120

    const v4, 0x7f0201af

    const v7, 0x7f0201ae

    const/4 v6, 0x0

    const v5, 0x7f0201b0

    .line 67
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_0

    .line 76
    const v8, 0x7f020197

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setIcon(IIIIII)V

    .line 85
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 86
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->updateStatus()V

    .line 101
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setSoundEffectsEnabled(Z)V

    .line 102
    return-void

    .line 98
    :cond_0
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 111
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-ne v1, v3, :cond_2

    .line 127
    const/4 v0, 0x0

    .line 142
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 144
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilentMode onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), setRingerMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 128
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-nez v1, :cond_3

    .line 129
    const/4 v0, 0x2

    goto :goto_1

    .line 130
    :cond_3
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 131
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVibrator:Z

    if-eqz v1, :cond_4

    .line 132
    const/4 v0, 0x1

    goto :goto_1

    .line 134
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setSoundEffectsEnabled(Z)V

    .line 138
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public updateStatus()V
    .locals 4

    .prologue
    .line 161
    const/4 v0, -0x1

    .line 162
    .local v0, status:I
    const v1, 0x7f0c0120

    .line 164
    .local v1, textID:I
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 165
    const/4 v0, 0x4

    .line 166
    const v1, 0x7f0c0122

    .line 179
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setTextId(I)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setActivateStatus(I)V

    .line 181
    return-void

    .line 167
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-nez v2, :cond_1

    .line 168
    const/4 v0, 0x5

    .line 169
    const v1, 0x7f0c0123

    goto :goto_0

    .line 170
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 171
    const/4 v0, 0x1

    .line 172
    const v1, 0x7f0c0121

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x1

    .line 175
    const v1, 0x7f0c0121

    goto :goto_0
.end method
