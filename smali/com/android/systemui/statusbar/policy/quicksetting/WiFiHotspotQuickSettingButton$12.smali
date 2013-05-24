.class Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;
.super Ljava/lang/Object;
.source "WiFiHotspotQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showAttentionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

.field final synthetic val$buttonState:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->val$buttonState:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 485
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->val$buttonState:Z

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showWarningDialog(Z)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$600(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->val$buttonState:Z

    if-eq v3, v4, :cond_0

    .line 488
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 491
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    if-eqz v3, :cond_2

    .line 493
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 494
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 496
    .local v0, mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->generateDefaultSSID(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 501
    .end local v0           #mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$12;->val$buttonState:Z

    if-eqz v4, :cond_3

    :goto_1
    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setMode(I)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
