.class public Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "NfcQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NfcQuickSettingButton"


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f0c0133

    const/4 v7, 0x0

    .line 40
    const v4, 0x7f02019c

    const v5, 0x7f02019a

    const v6, 0x7f020198

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 21
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_0

    .line 49
    const v4, 0x7f02019d

    const v5, 0x7f02019b

    const v6, 0x7f020199

    move-object v2, p0

    move v8, v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setIcon(IIIIII)V

    .line 58
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 71
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setActivateStatus(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 98
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "onClick(): NFC state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 128
    if-eqz p1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
