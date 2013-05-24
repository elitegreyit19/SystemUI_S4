.class public Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WiFiHotspotQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final ACTION_WIFI_AP_STATE_CHANGE:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field private static final ATTENTION_URL:Ljava/lang/String; = "file:///android_asset/html/%y/tethering_attention.html"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EXTRA_AP_STATE:Ljava/lang/String; = "wifi_state"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WiFiHotspotQuickSettingButton"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_AP_STATE_DISABLED:I = 0xb

.field private static final WIFI_AP_STATE_ENABLED:I = 0xd

.field private static final WIFI_AP_STATE_FAILED:I = 0xe

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field mCm:Landroid/net/ConnectivityManager;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 147
    const/4 v2, 0x0

    const v3, 0x7f0c0131

    const v4, 0x7f0201c6

    const v5, 0x7f0201c5

    const v6, 0x7f0201c4

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 74
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSsidPwd:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSecurity:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 155
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 157
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showWarningDialog(Z)V

    return-void
.end method

.method private isSimReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 281
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SimCheck.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 284
    .local v0, SimState:I
    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    .line 286
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 248
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 250
    .local v1, wifiState:I
    const-string v2, "STATUSBAR-WiFiHotspotQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") wifiState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 255
    if-ne p1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 257
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_saved_state"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    const/4 v5, 0x0

    if-ne p1, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 264
    if-nez p1, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_saved_state"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 266
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    const-wide/16 v3, 0x258

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v2, v4

    .line 261
    goto :goto_1
.end method

.method private showAttentionDialog(Z)V
    .locals 9
    .parameter "state"

    .prologue
    .line 457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 458
    .local v4, locale:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ja"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "ja"

    .line 459
    .local v3, language:Ljava/lang/String;
    :goto_0
    const-string v6, "file:///android_asset/html/%y/tethering_attention.html"

    const-string v7, "%y"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, url:Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, attention_view:Landroid/webkit/WebView;
    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$9;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 475
    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 477
    move v1, p1

    .line 478
    .local v1, buttonState:Z
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$11;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$11;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$10;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 517
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$13;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$13;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->statusBarCollapse()V

    .line 527
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 528
    .local v2, kgm:Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 529
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 533
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 534
    return-void

    .line 458
    .end local v0           #attention_view:Landroid/webkit/WebView;
    .end local v1           #buttonState:Z
    .end local v2           #kgm:Landroid/app/KeyguardManager;
    .end local v3           #language:Ljava/lang/String;
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    const-string v3, "en"

    goto/16 :goto_0

    .line 531
    .restart local v0       #attention_view:Landroid/webkit/WebView;
    .restart local v1       #buttonState:Z
    .restart local v2       #kgm:Landroid/app/KeyguardManager;
    .restart local v3       #language:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private showWarningDialog(Z)V
    .locals 5
    .parameter "state"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    :goto_0
    return-void

    .line 323
    :cond_0
    move v0, p1

    .line 324
    .local v0, buttonState:Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0189

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->statusBarCollapse()V

    .line 365
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 366
    .local v1, kgm:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 371
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 292
    const/4 v10, 0x0

    .line 293
    .local v10, wifiTethered:Z
    const/4 v9, 0x0

    .line 295
    .local v9, wifiErrored:Z
    move-object/from16 v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 296
    check-cast v8, Ljava/lang/String;

    .line 297
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 298
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    .line 297
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 295
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 301
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 302
    check-cast v8, Ljava/lang/String;

    .line 303
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 304
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v9, 0x1

    .line 303
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 301
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 307
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    const-string v11, "STATUSBAR-WiFiHotspotQuickSettingButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wifiTethered("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") wifiErrored("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v10, :cond_6

    .line 309
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    .line 310
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 316
    :cond_6
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method

.method public generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V
    .locals 20
    .parameter "mWifiManager"
    .parameter "mWifiConfig"

    .prologue
    .line 376
    const/4 v11, 0x0

    .line 377
    .local v11, number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 379
    .local v15, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v15, :cond_0

    .line 380
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    .line 383
    :cond_0
    if-nez v11, :cond_1

    .line 384
    const-string v11, ""

    .line 387
    :cond_1
    const-string v16, ""

    .line 388
    .local v16, tempSSID:Ljava/lang/String;
    const-string v5, ""

    .line 389
    .local v5, defaultSsid:Ljava/lang/String;
    const-string v4, ""

    .line 391
    .local v4, defaultNumber:Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0196

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 398
    :goto_0
    const-string v17, "TetherSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "generateDefaultSSID, number: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 401
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x4

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, last4digitNum:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    move-object v4, v7

    .line 411
    .end local v7           #last4digitNum:Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 412
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 p2, v3

    .line 413
    move-object/from16 v0, p2

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 414
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WPA2/PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WPA/PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 417
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    .line 419
    .local v12, randomUUID:Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 420
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 437
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WPA2/PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 438
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    .line 447
    .end local v12           #randomUUID:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 448
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 452
    :goto_4
    return-void

    .line 394
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, mSplitSsid:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v16, v10, v17

    goto/16 :goto_0

    .line 405
    .end local v10           #mSplitSsid:[Ljava/lang/String;
    :cond_5
    new-instance v13, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 406
    .local v13, rnd:Ljava/util/Random;
    const/16 v17, 0x2327

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v14, v0, 0x3e8

    .line 407
    .local v14, sequence:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 422
    .end local v13           #rnd:Ljava/util/Random;
    .end local v14           #sequence:I
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v12       #randomUUID:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, mSplitPwd:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 424
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 426
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v8, mPwd:Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .local v6, i:I
    :goto_5
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 428
    const-string v17, "LAST4DIGIT"

    aget-object v18, v9, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 429
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :goto_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 431
    :cond_8
    aget-object v17, v9, v6

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 440
    .end local v6           #i:I
    .end local v8           #mPwd:Ljava/lang/StringBuilder;
    .end local v9           #mSplitPwd:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 443
    .end local v12           #randomUUID:Ljava/lang/String;
    :cond_a
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 450
    :cond_b
    invoke-virtual/range {p1 .. p2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_4
.end method

.method public init()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mCm:Landroid/net/ConnectivityManager;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiRegexs:[Ljava/lang/String;

    .line 171
    return-void
.end method

.method public onClick(Z)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 182
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    :cond_0
    const-string v3, "STATUSBAR-WiFiHotspotQuickSettingButton"

    const-string v4, "onClick(): WiFiHotspot state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v3, :cond_3

    .line 190
    const-string v3, "STATUSBAR-WiFiHotspotQuickSettingButton"

    const-string v4, "onClick(): Processing..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "airplane_mode_on"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 200
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 203
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->isSimReady()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v6, 0x5

    if-eq v3, v6, :cond_5

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0c0155

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 210
    const v3, 0x7f0c0156

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 212
    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->statusBarCollapse()V

    .line 220
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 221
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 224
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 236
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 237
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showWarningDialog(Z)V

    goto/16 :goto_0

    .line 240
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z

    if-eq v3, p1, :cond_1

    .line 241
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 242
    if-eqz p1, :cond_7

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setMode(I)V

    goto/16 :goto_0

    :cond_7
    move v3, v5

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 538
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void
.end method
