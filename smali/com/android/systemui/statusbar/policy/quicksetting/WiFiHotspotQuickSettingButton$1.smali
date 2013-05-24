.class Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiHotspotQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;
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
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, action:Ljava/lang/String;
    const-string v8, "STATUSBAR-WiFiHotspotQuickSettingButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    const-string v8, "wifi_state"

    const/16 v9, 0xe

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    .local v2, apState:I
    const-string v8, "STATUSBAR-WiFiHotspotQuickSettingButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch v2, :pswitch_data_0

    .line 142
    .end local v2           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 143
    return-void

    .line 103
    .restart local v2       #apState:I
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v9, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mState:Z
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;Z)Z

    .line 108
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 113
    .end local v2           #apState:I
    :cond_1
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 116
    .local v6, state:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_saved_state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 117
    .local v5, mApState:I
    const-string v8, "STATUSBAR-WiFiHotspotQuickSettingButton"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ap_saved="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x4

    if-ne v6, v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_saved_state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 120
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 122
    .local v7, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 123
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_ap_saved_state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 125
    .end local v5           #mApState:I
    .end local v6           #state:I
    .end local v7           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 126
    const-string v8, "availableArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 128
    .local v3, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "activeArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 130
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "erroredArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 132
    .local v4, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 135
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 136
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 137
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
