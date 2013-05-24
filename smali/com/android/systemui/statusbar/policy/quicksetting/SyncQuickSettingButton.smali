.class public Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SyncQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SyncQuickSettingButton"


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 65
    const/4 v2, 0x0

    const v3, 0x7f0c0129

    const v4, 0x7f0201c0

    const v5, 0x7f0201bf

    const v6, 0x7f0201be

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "STATUSBAR-SyncQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v2, "STATUSBAR-SyncQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 104
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const-string v2, "STATUSBAR-SyncQuickSettingButton"

    const-string v3, "onClick(): Sync state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_1
    move v0, p1

    .line 111
    .local v0, buttonStatus:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 113
    .local v1, sync:Z
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;ZZ)V

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 148
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SyncQuickSettingButton;->statusBarCollapse()V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, mIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
