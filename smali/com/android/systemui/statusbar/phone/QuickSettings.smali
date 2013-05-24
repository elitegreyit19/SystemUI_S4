.class Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# static fields
.field public static final SHOW_IME_TILE:Z = false

.field private static final TAG:Ljava/lang/String; = "QuickSettings"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mBrightnessDialog:Landroid/app/Dialog;

.field private mBrightnessDialogLongTimeout:I

.field private mBrightnessDialogShortTimeout:I

.field private mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mTilesSetUp:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 8
    .parameter "context"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 748
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$30;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$30;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    .line 852
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$33;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 877
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$34;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$34;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 132
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 137
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f02008f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 138
    const v0, 0x7f020090

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LevelListDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    .line 140
    const v0, 0x7f0d000c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialogLongTimeout:I

    .line 142
    const v0, 0x7f0d000b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialogShortTimeout:I

    .line 145
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v3, profileFilter:Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeAllBrightnessDialogCallbacks()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/BrightnessController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/PanelBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialogShortTimeout:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->dismissBrightnessDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;

    return-object v0
.end method

.method private addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 10
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const v9, 0x7f040011

    const/4 v8, 0x0

    .line 393
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 395
    .local v5, wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040020

    invoke-virtual {v5, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 396
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$9;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$10;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 415
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 417
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceSupportsTelephony()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 421
    .local v4, rssiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f04001c

    invoke-virtual {v4, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 422
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$11;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$12;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 453
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 457
    .end local v4           #rssiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 460
    .local v3, rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f04001b

    invoke-virtual {v3, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 461
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$13;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$13;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$14;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 476
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 480
    .end local v3           #rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_1
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 482
    .local v1, batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040014

    invoke-virtual {v1, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 483
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$15;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$15;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$16;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$16;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v1, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 516
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 521
    .local v0, airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040012

    invoke-virtual {v0, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 522
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$17;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$17;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v0, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 536
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 539
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceSupportsBluetooth()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 540
    invoke-virtual {p2, v9, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 542
    .local v2, bluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v6, 0x7f040015

    invoke-virtual {v2, v6, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 543
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$18;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$18;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$19;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$19;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v2, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 577
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 580
    .end local v2           #bluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_2
    return-void
.end method

.method private addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 8
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const v7, 0x7f040011

    const/4 v6, 0x0

    .line 584
    invoke-virtual {p2, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 586
    .local v0, alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v4, 0x7f040013

    invoke-virtual {v0, v4, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 587
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$20;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$20;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$21;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$21;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 608
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual {p2, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 613
    .local v2, locationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v4, 0x7f040019

    invoke-virtual {v2, v4, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 614
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$22;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$22;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$23;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$23;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 628
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 631
    invoke-virtual {p2, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 633
    .local v3, wifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v4, 0x7f040021

    invoke-virtual {v3, v4, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 634
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$24;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$24;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$25;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 649
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 681
    invoke-virtual {p2, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 683
    .local v1, bugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v4, 0x7f040017

    invoke-virtual {v1, v4, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 684
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$28;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$28;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$29;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$29;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 697
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 714
    return-void
.end method

.method private addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 7
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const v6, 0x7f040011

    const/4 v5, 0x0

    .line 289
    invoke-virtual {p2, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 291
    .local v2, userTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f04001f

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 292
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 324
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p2, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 330
    .local v0, brightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f040016

    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 331
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p2, v6, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 373
    .local v1, settingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f04001d

    invoke-virtual {v1, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 374
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$7;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$8;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 387
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

.method private applyBluetoothStatus()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 840
    return-void
.end method

.method private applyWifiDisplayStatus()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onWifiDisplayStateChanged(Landroid/hardware/display/WifiDisplayStatus;)V

    .line 836
    return-void
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeAllBrightnessDialogCallbacks()V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 794
    :cond_0
    return-void
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, currentUserContext:Landroid/content/Context;
    const/4 v4, 0x0

    .line 195
    .local v4, userInfo:Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 196
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 204
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 205
    .local v3, userId:I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 207
    .local v5, userName:Ljava/lang/String;
    move-object v0, v1

    .line 208
    .local v0, context:Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 252
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void

    .line 198
    .end local v0           #context:Landroid/content/Context;
    .end local v3           #userId:I
    .end local v5           #userName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 199
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 201
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 202
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    return-void
.end method

.method private setupQuickSettings()V
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 263
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 265
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    const v1, 0x7f040010

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 764
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    const v3, 0x7f09002e

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettings$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$31;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 781
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 785
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialogLongTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->dismissBrightnessDialog(I)V

    .line 787
    :cond_1
    return-void

    .line 782
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showBugreportDialog()V
    .locals 4

    .prologue
    .line 797
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x10405b1

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$32;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$32;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 817
    const v2, 0x104019f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 818
    const v2, 0x104019e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 819
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 820
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 821
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 823
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 827
    return-void

    .line 824
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 274
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .parameter "intent"
    .parameter "onlyProvisioned"

    .prologue
    .line 277
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_1
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method private updateWifiDisplayStatus()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 831
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V

    .line 832
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 847
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    if-eqz v0, :cond_1

    .line 848
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 850
    :cond_1
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 161
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onImeWindowStatusChanged(Z)V

    .line 173
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "phoneStatusBar"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 165
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;)V
    .locals 3
    .parameter "networkController"
    .parameter "bluetoothController"
    .parameter "batteryController"
    .parameter "locationController"

    .prologue
    .line 177
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateWifiDisplayStatus()V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 189
    return-void
.end method

.method updateResources()V
    .locals 6

    .prologue
    .line 717
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 720
    .local v2, r:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 723
    const v5, 0x7f0d000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 724
    .local v3, span:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 725
    .local v4, v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 727
    .end local v4           #v:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 728
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, isBrightnessDialogVisible:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->removeAllBrightnessDialogCallbacks()V

    .line 735
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    .line 736
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 738
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialog:Landroid/app/Dialog;

    .line 739
    if-eqz v1, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V

    .line 742
    :cond_2
    return-void
.end method
