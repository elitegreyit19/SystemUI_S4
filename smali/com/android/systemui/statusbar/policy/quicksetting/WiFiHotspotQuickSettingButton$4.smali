.class Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;
.super Ljava/lang/Object;
.source "WiFiHotspotQuickSettingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 270
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    return-void
.end method
