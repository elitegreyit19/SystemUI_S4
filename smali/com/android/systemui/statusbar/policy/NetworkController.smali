.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$2;,
        Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EthernetHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final CONFIGURATION_FAILED:I = 0x2

.field private static final CONFIGURATION_SUCCEEDED:I = 0x1

.field private static DATA_ACTIVITY_IN:I = 0x0

.field private static DATA_ACTIVITY_INOUT:I = 0x0

.field private static DATA_ACTIVITY_NONE:I = 0x0

.field private static DATA_ACTIVITY_OUT:I = 0x0

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field static final DEBUG:Z = false

.field private static final ETHERNET_DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field private static ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = null

.field private static ETH_STATE_UNKNOWN:I = 0x0

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static EXTRA_ETH_STATE:Ljava/lang/String; = null

.field private static final HW_CONNECTED:I = 0x3

.field private static final HW_DISCONNECTED:I = 0x4

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NetworkController"


# instance fields
.field private final EXTRA_IS_VALID_PLMN:Ljava/lang/String;

.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field ethernetManager:Ljava/lang/Object;

.field ethernetManagerClass:Ljava/lang/Class;

.field ethernetMessenger:Landroid/os/Messenger;

.field ethernetServiceMessengerMethod:Ljava/lang/reflect/Method;

.field ethhandler:Landroid/os/Handler;

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherDisconnected:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionEthernet:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field mCurrDataTypeIconId:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field mDataTypeBrand:Ljava/lang/String;

.field mDataTypeIconId:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mEthernetActivity:I

.field mEthernetActivityIconId:I

.field mEthernetActivityIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

.field mEthernetConnected:Z

.field mEthernetEnabled:Z

.field mEthernetIconId:I

.field mEthernetIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field private mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field mLastEthernetActivityIconId:I

.field mLastEthernetIconId:I

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field private mLastSpn:Ljava/lang/String;

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSigStrengthId:I

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTabletOperatorLogoIconView:Landroid/widget/ImageView;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 397
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 123
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 124
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 125
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 126
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 129
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v8

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 144
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 145
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 146
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 150
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 165
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 166
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    .line 174
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 175
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 176
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 177
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move-object v5, v6

    .line 178
    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 181
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetManager:Ljava/lang/Object;

    .line 182
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetManagerClass:Ljava/lang/Class;

    .line 183
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetServiceMessengerMethod:Ljava/lang/reflect/Method;

    .line 189
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    .line 190
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    .line 191
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    .line 192
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    .line 196
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 197
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 198
    const v5, 0x1080751

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 201
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 204
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 205
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 206
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 207
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 208
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 209
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 210
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 211
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 214
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 219
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 220
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 222
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 225
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 226
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 230
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 231
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 232
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    .line 235
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    .line 236
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 241
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 245
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 248
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 250
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 253
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 254
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 255
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 256
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 257
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 258
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 259
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 260
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 264
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 271
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 272
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 280
    const-string v5, "isValidPlmn"

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_IS_VALID_PLMN:Ljava/lang/String;

    .line 287
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 288
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    .line 289
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    .line 290
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    .line 291
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    .line 292
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 293
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    .line 294
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    .line 313
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 323
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 324
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 325
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    .line 329
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 851
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1052
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_UNKNOWN:I

    .line 1053
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_FALSE:I

    .line 1054
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    .line 4393
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 401
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 403
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 405
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 406
    const v5, 0x7f0b0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 407
    const v5, 0x111003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateStatusBarNetworkSettings()V

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 423
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 424
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 430
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 433
    const-string v5, " "

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 434
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x10404a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 436
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 437
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 441
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 442
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 443
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 444
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 445
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 446
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 496
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 497
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v5, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v5, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 523
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 524
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 540
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 541
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRomaingNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return p1
.end method

.method private changeDataNetType()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1454
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_3

    .line 1456
    const/4 v1, 0x0

    .line 1457
    .local v1, getDataSignalMarginal:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 1459
    .local v2, result:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "isDataSignalMarginal"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1461
    if-eqz v1, :cond_0

    .line 1462
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1464
    :cond_0
    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 1465
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeDataNetType   isDataSignalMarginal ::"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1479
    .end local v1           #getDataSignalMarginal:Ljava/lang/reflect/Method;
    .end local v2           #result:Z
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    const v4, 0x7f0200d2

    if-ne v3, v4, :cond_5

    .line 1480
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    if-nez v3, :cond_4

    const v3, 0x7f0200ff

    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1481
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_LGT:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1482
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeDataNetType   [3G] mSigStrengthId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_1
    :goto_3
    return-void

    .restart local v1       #getDataSignalMarginal:Ljava/lang/reflect/Method;
    .restart local v2       #result:Z
    :cond_2
    move v3, v5

    .line 1464
    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, e:Ljava/lang/NoSuchMethodException;
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 1468
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1469
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1470
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1471
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 1472
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1475
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v1           #getDataSignalMarginal:Ljava/lang/reflect/Method;
    .end local v2           #result:Z
    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 1476
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   mSignalStrength is null "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1480
    :cond_4
    const v3, 0x7f0200fd

    goto :goto_2

    .line 1483
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    const v4, 0x7f0200d4

    if-ne v3, v4, :cond_1

    .line 1484
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    if-nez v3, :cond_6

    const v3, 0x7f020100

    :goto_4
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1485
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LGT:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1486
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeDataNetType   [4G] mSigStrengthId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1484
    :cond_6
    const v3, 0x7f0200fe

    goto :goto_4
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    .prologue
    .line 3354
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3355
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 3356
    .local v2, ssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 3358
    .local v1, networkid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 3359
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon: getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3363
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 3369
    :goto_0
    return-void

    .line 3368
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 6
    .parameter "signalStrength"

    .prologue
    const v5, 0x7f0200e5

    .line 1210
    const/4 v0, -0x1

    .line 1213
    .local v0, iconLevel:I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1216
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1219
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1223
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1248
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1249
    .local v1, iconList:[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1251
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1253
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1255
    return-void

    .line 1220
    .end local v1           #iconList:[I
    :cond_2
    if-gez v0, :cond_0

    .line 1221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_0

    .line 1230
    :cond_3
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_5

    .line 1233
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1239
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1240
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1241
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1234
    :cond_5
    if-gez v0, :cond_4

    .line 1235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    .line 1242
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1243
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1244
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private displayingRoamingIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "plmn"

    .prologue
    .line 3175
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 3176
    .local v3, rilIMSI:Ljava/lang/String;
    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    .line 3177
    .local v5, sponIMSI:[Ljava/lang/String;
    const-string v8, "ril.simtype"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3178
    .local v4, simType:Ljava/lang/String;
    const-string v6, ""

    .line 3179
    .local v6, srtingIMSI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3182
    .local v2, getSponImsi:Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getSponImsi"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3183
    if-eqz v2, :cond_0

    .line 3184
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3200
    :cond_0
    if-nez v3, :cond_1

    .line 3201
    const-string v3, ""

    .line 3204
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v8, :cond_2

    .line 3205
    const-string v6, ""

    move-object v7, v6

    .line 3237
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .local v7, srtingIMSI:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 3186
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3187
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   NoSuchMethodException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 3188
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3189
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3190
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   IllegalArgumentException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 3191
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3192
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 3193
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   IllegalAccessException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 3194
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3195
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 3196
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   InvocationTargetException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 3197
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3210
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :cond_2
    const-string v8, "3"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "18"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3211
    const-string v6, ""

    move-object v7, v6

    .line 3213
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3216
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3217
    const-string v6, ""

    move-object v7, v6

    .line 3219
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3222
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3223
    const-string v8, "450"

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3224
    const-string v6, "(H)"

    .line 3236
    :cond_5
    :goto_1
    const-string v8, "CarrierLabel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayingRoamingIMSI srtingIMSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 3237
    .end local v6           #srtingIMSI:Ljava/lang/String;
    .restart local v7       #srtingIMSI:Ljava/lang/String;
    goto :goto_0

    .line 3225
    .end local v7           #srtingIMSI:Ljava/lang/String;
    .restart local v6       #srtingIMSI:Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    aget-object v8, v5, v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3226
    const-string v6, "(S1)"

    goto :goto_1

    .line 3227
    :cond_7
    const/4 v8, 0x1

    aget-object v8, v5, v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3228
    const-string v6, "(S2)"

    goto :goto_1

    .line 3229
    :cond_8
    const/4 v8, 0x2

    aget-object v8, v5, v8

    if-eqz v8, :cond_9

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3230
    const-string v6, "(S3)"

    goto/16 :goto_1

    .line 3232
    :cond_9
    const-string v8, "CarrierLabel"

    const-string v9, "displayingRoamingIMSI - nothing shows!"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    const-string v6, ""

    goto/16 :goto_1
.end method

.method private displayingRoamingNetType()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 3126
    const-string v5, "ril.simtype"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3127
    .local v2, simType:Ljava/lang/String;
    const-string v3, ""

    .line 3129
    .local v3, srtingNetType:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v5, :cond_0

    .line 3130
    const-string v3, ""

    move-object v4, v3

    .line 3171
    .end local v3           #srtingNetType:Ljava/lang/String;
    .local v4, srtingNetType:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3135
    .end local v4           #srtingNetType:Ljava/lang/String;
    .restart local v3       #srtingNetType:Ljava/lang/String;
    :cond_0
    const-string v5, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "18"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3136
    const-string v3, ""

    move-object v4, v3

    .line 3138
    .end local v3           #srtingNetType:Ljava/lang/String;
    .restart local v4       #srtingNetType:Ljava/lang/String;
    goto :goto_0

    .line 3141
    .end local v4           #srtingNetType:Ljava/lang/String;
    .restart local v3       #srtingNetType:Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v5, :pswitch_data_0

    .line 3166
    :pswitch_0
    const-string v3, ""

    .line 3170
    :goto_1
    const-string v5, "CarrierLabel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayingRoamingNetType srtingNetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataNetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 3171
    .end local v3           #srtingNetType:Ljava/lang/String;
    .restart local v4       #srtingNetType:Ljava/lang/String;
    goto :goto_0

    .line 3145
    .end local v4           #srtingNetType:Ljava/lang/String;
    .restart local v3       #srtingNetType:Ljava/lang/String;
    :pswitch_1
    const-string v3, "[G]"

    .line 3146
    goto :goto_1

    .line 3152
    :pswitch_2
    const-string v3, "[W]"

    .line 3153
    goto :goto_1

    .line 3155
    :pswitch_3
    const-string v5, "gsm.network.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3156
    .local v1, networktype:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3157
    .local v0, networkname:[Ljava/lang/String;
    array-length v5, v0

    if-lt v5, v8, :cond_2

    const-string v5, "GSM"

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3158
    const-string v3, "[G]"

    goto :goto_1

    .line 3159
    :cond_2
    array-length v5, v0

    if-lt v5, v8, :cond_3

    const-string v5, "UMTS"

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3160
    const-string v3, "[W]"

    goto :goto_1

    .line 3162
    :cond_3
    const-string v3, ""

    .line 3164
    goto :goto_1

    .line 3141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f0200da

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2829
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 2830
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2831
    .local v0, iconIndex:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2833
    .local v1, iconMode:I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2843
    :pswitch_0
    if-ne v0, v7, :cond_1

    .line 2862
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v2

    .line 2838
    .restart local v0       #iconIndex:I
    .restart local v1       #iconMode:I
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 2840
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 2846
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 2847
    packed-switch v1, :pswitch_data_1

    .line 2853
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 2854
    const-string v2, "STATUSBAR-NetworkController"

    const-string v4, "getCdmaEriIcon() mDeviceType == 1"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2855
    goto :goto_0

    :pswitch_3
    move v2, v3

    .line 2849
    goto :goto_0

    .line 2851
    :pswitch_4
    const v2, 0x7f020112

    goto :goto_0

    .line 2836
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2847
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    .line 1204
    :goto_0
    return v0

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1202
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1204
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataConnectionDescriptionIconId(I)I
    .locals 2
    .parameter "iconLevel"

    .prologue
    .line 1435
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 1446
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 1448
    .local v0, iconId:I
    :goto_0
    return v0

    .line 1437
    .end local v0           #iconId:I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 1438
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1440
    .end local v0           #iconId:I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 1441
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1443
    .end local v0           #iconId:I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 1444
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 951
    const/4 v0, 0x1

    .line 953
    .local v0, dataServiceState:I
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 954
    .local v3, getDataState:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 955
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 957
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState : dataServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 967
    .end local v0           #dataServiceState:I
    .end local v3           #getDataState:Ljava/lang/reflect/Method;
    .local v1, dataServiceState:I
    :goto_0
    return v1

    .line 959
    .end local v1           #dataServiceState:I
    .restart local v0       #dataServiceState:I
    :catch_0
    move-exception v2

    .line 960
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 961
    .end local v0           #dataServiceState:I
    .restart local v1       #dataServiceState:I
    goto :goto_0

    .line 962
    .end local v1           #dataServiceState:I
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    .restart local v0       #dataServiceState:I
    :catch_1
    move-exception v2

    .line 963
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 964
    .end local v0           #dataServiceState:I
    .restart local v1       #dataServiceState:I
    goto :goto_0

    .line 965
    .end local v1           #dataServiceState:I
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #dataServiceState:I
    :catch_2
    move-exception v2

    .line 966
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 967
    .end local v0           #dataServiceState:I
    .restart local v1       #dataServiceState:I
    goto :goto_0
.end method

.method private getDataSignalIconId(II)I
    .locals 2
    .parameter "inetCondition"
    .parameter "iconLevel"

    .prologue
    .line 1389
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 1400
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 1402
    .local v0, iconId:I
    :goto_0
    return v0

    .line 1391
    .end local v0           #iconId:I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 1392
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1394
    .end local v0           #iconId:I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 1395
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1397
    .end local v0           #iconId:I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 1398
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1389
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getLGTEriIcon(II)I
    .locals 1
    .parameter "iconIndex"
    .parameter "iconMode"

    .prologue
    .line 2886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    const/4 v0, 0x0

    .line 2889
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200e5

    goto :goto_0
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .parameter "networkid"

    .prologue
    .line 3384
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3386
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 3387
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3388
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 3389
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    const-string v3, "AKA"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PEAP"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "auth=MSCHAPV2"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3393
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 3399
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .parameter "iconLevel"

    .prologue
    .line 1412
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 1423
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 1425
    .local v0, iconId:I
    :goto_0
    return v0

    .line 1414
    .end local v0           #iconId:I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 1415
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1417
    .end local v0           #iconId:I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 1418
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1420
    .end local v0           #iconId:I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 1421
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1412
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalIconList(I)[I
    .locals 2
    .parameter "inetCondition"

    .prologue
    .line 1365
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 1376
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1378
    .local v0, iconList:[I
    :goto_0
    return-object v0

    .line 1367
    .end local v0           #iconList:[I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1368
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 1370
    .end local v0           #iconList:[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1371
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 1373
    .end local v0           #iconList:[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 1374
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 1365
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 4308
    if-eqz p1, :cond_0

    .line 4309
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4311
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4316
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 4312
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 4313
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 4316
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private final getRoamingIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 2395
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2396
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2397
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "NoService, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :goto_0
    return-void

    .line 2398
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 2400
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2402
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2404
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2405
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2406
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2409
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_6

    .line 2414
    const v0, 0x7f0200e5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2415
    const v0, 0x7f02005f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2416
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.isNetworkRoaming(), mDeviceType != 1, mRoamingIconId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2418
    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2419
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2420
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "Nothing, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateORGDataNetType()V

    .line 1565
    :goto_0
    return-void

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYBDataNetType()V

    goto :goto_0

    .line 1501
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYADataNetType()V

    goto :goto_0

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYCDataNetType()V

    goto :goto_0

    .line 1507
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1508
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOLBDataNetType()V

    goto :goto_0

    .line 1510
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVD2DataNetType()V

    goto :goto_0

    .line 1513
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1514
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVIDDataNetType()V

    goto :goto_0

    .line 1516
    :cond_6
    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDORDataNetType()V

    goto :goto_0

    .line 1519
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1520
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMHDataNetType()V

    goto :goto_0

    .line 1522
    :cond_8
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1523
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updatePCTDataNetType()V

    goto :goto_0

    .line 1525
    :cond_9
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1526
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateJDIDataNetType()V

    goto/16 :goto_0

    .line 1528
    :cond_a
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSFRDataNetType()V

    goto/16 :goto_0

    .line 1531
    :cond_b
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 1536
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1562
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 1538
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 1541
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 1544
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 1547
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 1550
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 1553
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateLGTDataNetType()V

    goto/16 :goto_0

    .line 1556
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 1559
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateJPNDataNetType()V

    goto/16 :goto_0

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .parameter "iconIndex"
    .parameter "iconMode"

    .prologue
    const v0, 0x7f0200da

    const/4 v1, 0x1

    .line 2866
    if-ne p1, v1, :cond_1

    .line 2867
    const/4 v0, 0x0

    .line 2881
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 2869
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 2873
    :pswitch_2
    const v0, 0x7f020112

    goto :goto_0

    .line 2875
    :pswitch_3
    if-nez p2, :cond_2

    .line 2876
    const v0, 0x7f0200dc

    goto :goto_0

    .line 2877
    :cond_2
    if-ne p2, v1, :cond_0

    .line 2878
    const v0, 0x7f020113

    goto :goto_0

    .line 2869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1066
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1072
    :pswitch_0
    const/4 v0, 0x1

    .line 1075
    :cond_0
    :pswitch_1
    return v0

    .line 1067
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 3338
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 3339
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3349
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3343
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3344
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3345
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3346
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3349
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 1058
    const/4 v0, 0x1

    .line 1060
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    const/4 v0, 0x1

    .line 3372
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3373
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3380
    :cond_0
    :goto_0
    return v0

    .line 3376
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3380
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 3116
    const-string v1, "ril.currentplmn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3118
    .local v0, currIso:Ljava/lang/String;
    const-string v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3119
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3121
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private refreshOperatorLogoView()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4428
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 4429
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4431
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 4432
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4434
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4435
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 4467
    :cond_0
    :goto_0
    return-void

    .line 4436
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4437
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4439
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4440
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4443
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4445
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4446
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4448
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 4450
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4452
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4453
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4454
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4455
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: SIMandOperatorMatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4457
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4458
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 4460
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: PORTRAIT or SIMandOperatorMismatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4462
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4463
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 3105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    .line 3106
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    .line 3107
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    .line 3108
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    .line 3109
    return-void
.end method

.method private final updateATTDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0c00c8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1775
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 1776
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1817
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 1818
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1823
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 1824
    return-void

    .line 1778
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1779
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1784
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1785
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1794
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1795
    const v0, 0x7f0200d5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1796
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1798
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 1801
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1802
    const v0, 0x7f0200e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1805
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 1808
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1809
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1776
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1080
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 1086
    return-void

    :cond_0
    move v0, v1

    .line 1080
    goto :goto_0
.end method

.method private final updateCMCCDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020050

    const/4 v5, 0x0

    const v4, 0x7f0c00cb

    const v3, 0x7f020053

    const v2, 0x7f0200d2

    .line 2255
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    .line 2258
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2259
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2260
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2387
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2389
    return-void

    .line 2264
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2369
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 2370
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2371
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2372
    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2266
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 2267
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2268
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2269
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2277
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 2278
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2279
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2280
    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2288
    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2289
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2290
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2297
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 2298
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2299
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2300
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2304
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2305
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2306
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2314
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 2315
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2316
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2320
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2321
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2322
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2329
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 2331
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2332
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2333
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2341
    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 2342
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2343
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2344
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2355
    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2356
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2357
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2362
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2363
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2364
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2376
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2377
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2378
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3455
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3457
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3460
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 3461
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v3, :cond_3

    .line 3462
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3463
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3469
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3480
    .local v1, connectionStatus:I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    .line 3481
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 3483
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 3484
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 3495
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 3498
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    .line 3499
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    .line 3502
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 3504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 3505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3506
    return-void

    .end local v1           #connectionStatus:I
    :cond_2
    move v3, v5

    .line 3460
    goto :goto_0

    .line 3465
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3466
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 3487
    .restart local v1       #connectionStatus:I
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    .line 3488
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 3490
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method private final updateDORDataNetType()V
    .locals 2

    .prologue
    .line 2742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2748
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2749
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2750
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2751
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2753
    :cond_0
    return-void
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2896
    const/4 v3, 0x1

    .line 2899
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_7

    .line 2902
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_5

    .line 2903
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_4

    .line 2904
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 2915
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 2918
    .local v0, iconId:I
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 2924
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v4, :cond_2

    .line 2925
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v4, v9, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 2927
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 2928
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 2929
    const/4 v3, 0x1

    .line 2941
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 2976
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2978
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2984
    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 2985
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 2986
    return-void

    .line 2906
    .end local v0           #iconId:I
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 2907
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2909
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 2910
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2912
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 2913
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2920
    .end local v0           #iconId:I
    :cond_4
    const/4 v0, 0x0

    .line 2921
    .restart local v0       #iconId:I
    const/4 v3, 0x0

    goto :goto_1

    .line 2933
    .end local v0           #iconId:I
    :cond_5
    const v0, 0x7f02010c

    .line 2934
    .restart local v0       #iconId:I
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_6

    .line 2935
    const v0, 0x7f02010e

    .line 2937
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 2947
    .end local v0           #iconId:I
    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_8

    .line 2948
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 2960
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 2968
    .restart local v0       #iconId:I
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2969
    const-string v4, "STATUSBAR-NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCdmaLTE - mSimState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    goto :goto_3

    .line 2950
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 2951
    .restart local v0       #iconId:I
    goto :goto_5

    .line 2953
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 2954
    .restart local v0       #iconId:I
    goto :goto_5

    .line 2956
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 2957
    .restart local v0       #iconId:I
    goto :goto_5

    .line 2964
    .end local v0           #iconId:I
    :cond_8
    const/4 v0, 0x0

    .line 2965
    .restart local v0       #iconId:I
    const/4 v3, 0x0

    goto :goto_5

    .line 2979
    .restart local v1       #ident:J
    :catch_0
    move-exception v4

    .line 2981
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2904
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2948
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020050

    const/4 v5, 0x0

    const v4, 0x7f020053

    const v3, 0x7f0c00cb

    const v2, 0x7f0200d2

    .line 1569
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    .line 1572
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1573
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1574
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1701
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 1703
    return-void

    .line 1578
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1683
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 1684
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1685
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1686
    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1580
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 1581
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1582
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1583
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1591
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 1592
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1593
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1594
    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1602
    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1603
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1604
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1611
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 1612
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1613
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1614
    const v0, 0x7f02005d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1618
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1619
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1620
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1621
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1628
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 1629
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1630
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1634
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1635
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1643
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 1645
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1646
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1647
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1655
    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 1656
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1657
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1658
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1659
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1669
    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1670
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1671
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1676
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1677
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1678
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1690
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1691
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1692
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateEthernetState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 3553
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_ETH_STATE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/statusbar/policy/NetworkController;->ETH_STATE_UNKNOWN:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3555
    .local v0, extra_eth_state:I
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEthernetState ETH_STATE_CHANGED_ACTION new state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    .line 3601
    return-void
.end method

.method private final updateJDIDataNetType()V
    .locals 2

    .prologue
    .line 2802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2804
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2805
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2806
    const v0, 0x7f0200d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2809
    :cond_0
    return-void
.end method

.method private final updateJPNDataNetType()V
    .locals 2

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 1709
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateJPNDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v1, 0x7f0200d4

    if-ne v0, v1, :cond_0

    .line 1713
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1714
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1717
    :cond_0
    return-void
.end method

.method private final updateLGTDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020055

    const/4 v5, 0x0

    const v4, 0x7f020053

    const v3, 0x7f0c00cb

    const v2, 0x7f0200d2

    .line 2120
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateLGTDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    .line 2123
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2124
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2125
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2243
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2245
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 2251
    return-void

    .line 2129
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2225
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 2226
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2227
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2228
    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2131
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 2132
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2133
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2134
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2142
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 2143
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2144
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2145
    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2153
    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2154
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2155
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2156
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2162
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 2163
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2164
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2165
    const v0, 0x7f02005d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2169
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2170
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2171
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2179
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 2180
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2181
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2185
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2186
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2194
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 2196
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2197
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2198
    const v0, 0x7f020050

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2211
    :cond_5
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2212
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2213
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2218
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2219
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2220
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2232
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2233
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2234
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private updateNoSIMNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x111

    .line 4322
    const-string v4, "ro.config.donot_nosim"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4323
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "do not show no sim notifiation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :goto_0
    return-void

    .line 4326
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_1

    .line 4327
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 4330
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4331
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0159

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4332
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f0c015a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4334
    .local v2, text:Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f02010c

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4342
    .local v0, builder:Landroid/app/Notification$Builder;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_2

    .line 4343
    const v4, 0x7f02010e

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4346
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private final updateOLBDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0c00cc

    const v3, 0x7f0200e2

    .line 2633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2635
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2638
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2639
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2644
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2645
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 2646
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2647
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2657
    :cond_1
    :goto_0
    return-void

    .line 2651
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2652
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0c00cb

    const v5, 0x7f0200e2

    const v4, 0x7f0200d2

    const v3, 0x7f0c00cc

    .line 2426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2428
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 2433
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2435
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 2436
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2437
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2455
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 2456
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2458
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 2459
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2460
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2477
    :cond_4
    :goto_1
    return-void

    .line 2441
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2442
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2447
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2448
    const v0, 0x7f0200d3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2464
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2465
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 2470
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2471
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYADataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0c00cd

    const v6, 0x7f0200d4

    const/4 v5, 0x0

    const v4, 0x7f0c00cb

    const v3, 0x7f0200d2

    .line 2529
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 2532
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2533
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2534
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2539
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2540
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2541
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2542
    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2547
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 2551
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2552
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2553
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2571
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 2572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2573
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2574
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2591
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 2592
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2593
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2598
    :cond_5
    return-void

    .line 2557
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 2558
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2559
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2563
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2564
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2578
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 2579
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2580
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 2584
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2585
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYBDataNetType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2481
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 2484
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2485
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2486
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2491
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2492
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2493
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2494
    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2499
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 2504
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 2505
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2506
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2507
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2519
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 2520
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2521
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2525
    :cond_4
    return-void

    .line 2511
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2512
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2513
    const v0, 0x7f020053

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 2514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateOYCDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0c00cc

    .line 2601
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 2611
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 2612
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2613
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2624
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2625
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2626
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2627
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2617
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2618
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2619
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updatePCTDataNetType()V
    .locals 2

    .prologue
    .line 2785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2787
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 2791
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2792
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2799
    :cond_1
    :goto_0
    return-void

    .line 2794
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 2795
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2796
    const v0, 0x7f0200d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRomaingNotification()V
    .locals 9

    .prologue
    const/16 v8, 0x222

    const/4 v5, 0x1

    .line 4355
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const v6, 0x7f0200dc

    if-ne v4, v6, :cond_1

    .line 4356
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4391
    :goto_0
    return-void

    .line 4359
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4360
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0c018d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4363
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "data_roaming"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 4366
    const-string v4, "STATUSBAR-NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-eqz v4, :cond_4

    .line 4368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4369
    const v4, 0x7f0c018f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4376
    .local v2, text:Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x7f0200a9

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4385
    .local v0, builder:Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 4363
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 4371
    :cond_3
    const v4, 0x7f0c018e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/String;
    goto :goto_2

    .line 4374
    .end local v2           #text:Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c0190

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/String;
    goto :goto_2
.end method

.method private final updateSFRDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0c00cb

    const v4, 0x7f0200d3

    const v3, 0x7f0200d2

    const v2, 0x7f0c00cc

    .line 1720
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 1721
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v0, :cond_1

    .line 1722
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    .line 1771
    :cond_1
    :goto_0
    return-void

    .line 1725
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 1726
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1727
    const v0, 0x7f0200d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1735
    :cond_2
    :sswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1736
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1737
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1743
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 1744
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1745
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1746
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1749
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1750
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1751
    const v0, 0x7f020053

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1757
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 1758
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1759
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1763
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1764
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1722
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0c00cc

    const v5, 0x7f0c00c8

    const v4, 0x7f0200d4

    const v3, 0x7f0c00cb

    const v2, 0x7f0200d2

    .line 2008
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    .line 2011
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2012
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2114
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2115
    return-void

    .line 2016
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2106
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2107
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2018
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2019
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2025
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2026
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2027
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2032
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2033
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2040
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_1

    .line 2041
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2042
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2046
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2047
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2048
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2055
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 2056
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2057
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2061
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2062
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2063
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2094
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2095
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2096
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2100
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2101
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2016
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 973
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 977
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, absentReason:Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 981
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 982
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PERM_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v0           #absentReason:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 1033
    return-void

    .line 984
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 985
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:ABSENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    .end local v0           #absentReason:Ljava/lang/String;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 990
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 991
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:READY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 994
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 997
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 998
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PIN_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1001
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1002
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PUK_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1012
    :cond_4
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "NETWORK_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_1
    :try_start_1
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PERSO_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1023
    :goto_2
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:NETWORK_LOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1014
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: NETWORK_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1018
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1019
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: PERSO_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1026
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #lockedReason:Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1027
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:UNKNOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 4414
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    .line 4418
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    .line 4421
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    .line 4423
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 2756
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2762
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const-string v0, "704"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "706"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2764
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2765
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2766
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2768
    :cond_1
    return-void
.end method

.method private final updateTMHDataNetType()V
    .locals 2

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2777
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2778
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2779
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2780
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2782
    :cond_0
    return-void
.end method

.method private final updateTMODataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0c00cb

    const v4, 0x7f0c00c8

    const v3, 0x7f0200d2

    const/4 v2, 0x0

    .line 1827
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1882
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 1883
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1888
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 1889
    return-void

    .line 1829
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1830
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1835
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1836
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1837
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1845
    :pswitch_3
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1847
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1848
    const v0, 0x7f0200d4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1852
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1853
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1859
    :pswitch_4
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1861
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1862
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1866
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1867
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1873
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1874
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1875
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0201f9

    const v4, 0x7f020127

    const v3, 0x7f02005e

    .line 1260
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_2

    .line 1261
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    if-eqz v2, :cond_1

    .line 1267
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 1355
    :goto_0
    return-void

    .line 1270
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 1271
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1278
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-eqz v2, :cond_4

    .line 1281
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_3

    .line 1283
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1284
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1285
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1287
    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1288
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1289
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1294
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_7

    .line 1301
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_6

    .line 1303
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1304
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1305
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1307
    :cond_6
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1308
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1309
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1310
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 1317
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_9

    .line 1318
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1327
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_a

    .line 1328
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too high"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1336
    :cond_8
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1339
    .local v1, iconList:[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1341
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_b

    .line 1342
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 1349
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1351
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    .line 1323
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 1331
    :cond_a
    if-gez v0, :cond_8

    .line 1332
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    .line 1344
    .restart local v1       #iconList:[I
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto :goto_3
.end method

.method private final updateVD2DataNetType()V
    .locals 3

    .prologue
    .line 2660
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2662
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2665
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2666
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2670
    :cond_0
    return-void
.end method

.method private final updateVIDDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0c00cd

    const v5, 0x7f0c00cb

    const v4, 0x7f0200d4

    const v3, 0x7f0200d2

    .line 2674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2676
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2683
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2684
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2685
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2695
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2698
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2702
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2703
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2714
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 2715
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2719
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2720
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2721
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2732
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 2733
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2734
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2735
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2738
    :cond_7
    return-void

    .line 2688
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2689
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2690
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2707
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2708
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2709
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2724
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2725
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0c00cc

    const v5, 0x7f0c00c8

    const v4, 0x7f0200d0

    const v3, 0x7f0c00cb

    const v2, 0x7f0200d2

    .line 1894
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1986
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 1987
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1988
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1989
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2001
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2002
    return-void

    .line 1896
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_0

    .line 1897
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1898
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1906
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 1907
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1908
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1909
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1916
    :cond_1
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1917
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1918
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1924
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 1925
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1926
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1930
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1931
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1932
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1937
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 1938
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1939
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1943
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1944
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1945
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1951
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 1952
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1953
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1954
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1961
    :cond_4
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 1962
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1963
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1964
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1974
    :cond_5
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1975
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1980
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1981
    const v0, 0x7f0200d6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1982
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1992
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1993
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1994
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3310
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_2

    .line 3311
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3312
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v0, :cond_0

    .line 3313
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3316
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v0, :cond_1

    .line 3317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    if-eqz v0, :cond_1

    .line 3318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3322
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 3323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 3335
    :goto_0
    return-void

    .line 3326
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_3

    .line 3327
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3328
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 3333
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 3330
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020140

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    const v1, 0x7f020069

    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_1

    :cond_5
    move v0, v1

    .line 3330
    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3269
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3270
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3271
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 3306
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3307
    return-void

    :cond_1
    move v4, v5

    .line 3271
    goto :goto_0

    .line 3274
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3275
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 3277
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3278
    .local v3, wasConnected:Z
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3280
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    .line 3282
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 3283
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 3284
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 3286
    :cond_3
    if-eqz v1, :cond_6

    .line 3287
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 3296
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 3297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    goto :goto_1

    :cond_5
    move v4, v5

    .line 3278
    goto :goto_2

    .line 3289
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_6
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3291
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_4

    .line 3292
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3300
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #wasConnected:Z
    :cond_8
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3301
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 3302
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 3431
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 3432
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 3433
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 3434
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3437
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 3446
    :goto_1
    return-void

    .line 3436
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 3440
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3441
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 3444
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3405
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3406
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3407
    .local v1, wasConnected:Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3408
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3410
    .local v2, wimaxStatus:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 3425
    .end local v2           #wimaxStatus:I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 3427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3428
    return-void

    .restart local v2       #wimaxStatus:I
    :cond_1
    move v3, v4

    .line 3410
    goto :goto_0

    .line 3412
    .end local v2           #wimaxStatus:I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3413
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 3414
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3415
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 3417
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 3420
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3422
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 3420
    goto :goto_2

    :cond_5
    move v3, v4

    .line 3422
    goto :goto_3
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method public addCombinedSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method public addDataDirectionIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    return-void
.end method

.method public addEthernetActivityIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public addEthernetIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 615
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 632
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 611
    return-void
.end method

.method public addOperatorLogoIconViewForTablet(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    .line 620
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 627
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method public addWimaxIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4174
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4175
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4178
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4179
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4181
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4182
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4183
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4185
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4187
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4189
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4190
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4191
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4192
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4193
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4194
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4195
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4196
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4197
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4198
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4199
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4201
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4202
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4203
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4205
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4207
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4209
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4210
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4211
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4212
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4213
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4214
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4215
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4216
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4217
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4218
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4219
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4221
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4222
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4223
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4224
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4225
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4226
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4227
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4228
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4229
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4230
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4231
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4233
    const-string v0, "  mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4234
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4235
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4236
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4239
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4241
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4242
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4244
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4245
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4246
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4247
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4248
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4250
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4252
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4254
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4255
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 4258
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4259
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4260
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4261
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4262
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4264
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4265
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4266
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4270
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4271
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4273
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4274
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4277
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4278
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4279
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4280
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4281
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4282
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4283
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4284
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4285
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4286
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4287
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4288
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4289
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4290
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4291
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4292
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4293
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4294
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4295
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4296
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4297
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4298
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4299
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4300
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4301
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4302
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4303
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4304
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4305
    return-void

    .line 4175
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2813
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 2815
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2816
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_2

    .line 2817
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 2818
    .local v1, iconMode:I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 2824
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 10
    .parameter "cb"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 723
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v8, v9

    .line 724
    .local v8, wifiEnabled:Z
    :goto_0
    if-eqz v8, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 726
    .local v7, wifiDesc:Ljava/lang/String;
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v8, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 729
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 746
    return-void

    .end local v7           #wifiDesc:Ljava/lang/String;
    .end local v8           #wifiEnabled:Z
    :cond_1
    move v8, v1

    .line 723
    goto :goto_0

    .restart local v8       #wifiEnabled:Z
    :cond_2
    move-object v7, v6

    .line 724
    goto :goto_1

    .line 733
    .restart local v7       #wifiDesc:Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    .line 735
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    move v1, v9

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 740
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v2, 0x10404a0

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 754
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 755
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    :cond_0
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - RSSI_CHANGED_ACTION, WIFI_STATE, NETWORK_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 846
    :cond_1
    :goto_0
    return-void

    .line 761
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 765
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 766
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 767
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 770
    .local v8, plmn:Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 771
    const-string v0, "TW_TAG"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 773
    const/4 v8, 0x0

    .line 777
    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 783
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 789
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 791
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 792
    .end local v8           #plmn:Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 794
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - CONNECTIVITY_ACTION, INET_CONDITION_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 797
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 798
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 800
    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 801
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 804
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 807
    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 810
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 812
    :cond_b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 814
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 820
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 825
    :cond_d
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const v1, 0x10404c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 828
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 829
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 831
    :cond_f
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 833
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 834
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 840
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController;->ETH_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ETH_STATE_CHANGED_ACTIONN"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateEthernetState(Landroid/content/Intent;)V

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 9
    .parameter "cluster"

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 636
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setRoamingIcon(I)V

    .line 637
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_3

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 640
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: DATA_SUSPENDED : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 670
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    move v0, v7

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 685
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setEthernetIndicators(ZZIILjava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_9

    .line 695
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    move v1, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_1
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v7, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 719
    return-void

    .line 644
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: else : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_0

    .line 649
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    if-eqz v0, :cond_6

    .line 651
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_5

    .line 653
    invoke-interface {p1, v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 660
    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    goto :goto_0

    .line 657
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_5

    .line 664
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 666
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v8

    .line 670
    goto/16 :goto_1

    .line 695
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_2

    .line 704
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_6
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_6

    :cond_b
    move v7, v8

    .line 713
    goto/16 :goto_4
.end method

.method refreshViews()V
    .locals 20

    .prologue
    .line 3607
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 3609
    .local v8, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 3610
    .local v7, combinedSignalIconId:I
    const/4 v5, 0x0

    .line 3611
    .local v5, combinedActivityIconId:I
    const-string v6, ""

    .line 3612
    .local v6, combinedLabel:Ljava/lang/String;
    const-string v16, ""

    .line 3613
    .local v16, wifiLabel:Ljava/lang/String;
    const-string v13, ""

    .line 3615
    .local v13, mobileLabel:Ljava/lang/String;
    const-string v12, ""

    .line 3618
    .local v12, mATTmobileLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v9

    .line 3620
    .local v9, emergencyOnly:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 3621
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3622
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 3623
    const-string v13, ""

    .line 3723
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    .line 3725
    const v17, 0x7f0c00f4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3726
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3764
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3765
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_1a

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_1a

    .line 3766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 3767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 3768
    .local v14, serviceState:I
    if-eqz v14, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_2

    .line 3773
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3779
    .end local v14           #serviceState:I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3789
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0078

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3791
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d4

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3795
    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "mBluetoothTethered: mDataTypeIconId is BT tether icon"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3798
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3799
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3804
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 3805
    const v17, 0x7f0c0101

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3815
    :cond_4
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v17

    if-nez v17, :cond_21

    .line 3824
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 3826
    const v17, 0x7f020123

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 3827
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3828
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 3831
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3833
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 3835
    const-string v13, ""

    .line 3891
    :cond_7
    :goto_4
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    const v18, 0x7f0201f9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3892
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3897
    :cond_9
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    if-eqz v17, :cond_a

    .line 3898
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRomaingNotification()V

    .line 3929
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 3946
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 3947
    .local v4, cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_5

    .line 3633
    .end local v4           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 3634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3648
    :goto_6
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v17, :cond_d

    .line 3649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3655
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 3656
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 3659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 3670
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3708
    :cond_e
    :goto_7
    move-object v6, v13

    .line 3709
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3710
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_0

    .line 3635
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    if-eqz v9, :cond_13

    .line 3636
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_11

    if-eqz v9, :cond_12

    .line 3638
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_6

    .line 3641
    :cond_12
    const-string v13, ""

    goto :goto_6

    .line 3644
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_6

    .line 3661
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 3664
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 3667
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 3675
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 3691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 3692
    const v17, 0x7f020126

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3699
    :goto_8
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v17, :cond_e

    .line 3700
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 3702
    const-string v17, "StatusBar.NetworkController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 3677
    :pswitch_3
    const v17, 0x7f020124

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 3680
    :pswitch_4
    const v17, 0x7f020128

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 3683
    :pswitch_5
    const v17, 0x7f020125

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    .line 3694
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    .line 3719
    :cond_17
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_0

    .line 3728
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_2

    .line 3750
    :goto_9
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v17, :cond_19

    .line 3751
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3756
    :cond_19
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v17, :cond_0

    .line 3757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 3758
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3735
    :pswitch_6
    const v17, 0x7f020124

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    .line 3738
    :pswitch_7
    const v17, 0x7f020128

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    .line 3741
    :pswitch_8
    const v17, 0x7f020125

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    .line 3744
    :pswitch_9
    const v17, 0x7f020126

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    .line 3777
    :cond_1a
    move-object/from16 v6, v16

    goto/16 :goto_2

    .line 3782
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 3783
    const-string v16, ""

    goto/16 :goto_3

    .line 3785
    :cond_1c
    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 3837
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_20

    .line 3839
    const-string v16, ""

    .line 3841
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_1e

    .line 3842
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_1f

    .line 3843
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3853
    :cond_1e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3854
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 3845
    :cond_1f
    move-object v6, v13

    goto :goto_a

    .line 3850
    :cond_20
    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3851
    move-object/from16 v6, v16

    goto :goto_a

    .line 3858
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 3862
    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3864
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_23

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_23

    .line 3865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_23

    .line 3866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 3867
    .restart local v14       #serviceState:I
    if-eqz v14, :cond_22

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_22

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_23

    .line 3872
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3879
    .end local v14           #serviceState:I
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_24

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3881
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3884
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3885
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3887
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    goto/16 :goto_4

    .line 3879
    :cond_24
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_b

    .line 3881
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_c

    .line 3949
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_27

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3950
    .local v3, cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_d

    .line 3954
    .end local v3           #cb:Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_28

    .line 3955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 3959
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_29

    .line 3960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 3965
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 3966
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 3967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3968
    .local v2, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_e
    if-ge v10, v2, :cond_2b

    .line 3969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 3970
    .local v15, v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_2a

    .line 3971
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3968
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 3973
    :cond_2a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 3981
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2c

    .line 3982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 3983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3984
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_10
    if-ge v10, v2, :cond_2c

    .line 3985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 3986
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3984
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 3992
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2e

    .line 3993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3995
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_11
    if-ge v10, v2, :cond_2e

    .line 3996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 3997
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_2d

    .line 3998
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3995
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 4000
    :cond_2d
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 4008
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_30

    .line 4009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4011
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_13
    if-ge v10, v2, :cond_30

    .line 4012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4013
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_2f

    .line 4014
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4011
    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 4016
    :cond_2f
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 4023
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    .line 4024
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    .line 4025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4026
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_15
    if-ge v10, v2, :cond_32

    .line 4027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4028
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_31

    .line 4029
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4026
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 4031
    :cond_31
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 4040
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    .line 4041
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 4042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4043
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_17
    if-ge v10, v2, :cond_34

    .line 4044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4045
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_33

    .line 4046
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4043
    :goto_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 4048
    :cond_33
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4049
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 4055
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_35

    .line 4056
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 4057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4058
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_19
    if-ge v10, v2, :cond_35

    .line 4059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4060
    .restart local v15       #v:Landroid/widget/ImageView;
    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4058
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 4066
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_37

    .line 4067
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4069
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1a
    if-ge v10, v2, :cond_37

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4071
    .restart local v15       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_36

    .line 4072
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4069
    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 4074
    :cond_36
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 4082
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_39

    .line 4086
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 4087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4088
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1c
    if-ge v10, v2, :cond_39

    .line 4089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 4090
    .restart local v15       #v:Landroid/widget/ImageView;
    if-nez v5, :cond_38

    .line 4091
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4088
    :goto_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    .line 4093
    :cond_38
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4094
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 4101
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/ImageView;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3a

    .line 4102
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 4103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4104
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1e
    if-ge v10, v2, :cond_3a

    .line 4105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 4106
    .local v15, v:Landroid/widget/TextView;
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4104
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 4111
    .end local v2           #N:I
    .end local v10           #i:I
    .end local v15           #v:Landroid/widget/TextView;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4112
    .restart local v2       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_1f
    if-ge v10, v2, :cond_3c

    .line 4113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 4114
    .restart local v15       #v:Landroid/widget/TextView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4115
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3b

    .line 4116
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4112
    :goto_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    .line 4118
    :cond_3b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    .line 4123
    .end local v15           #v:Landroid/widget/TextView;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4124
    const/4 v10, 0x0

    :goto_21
    if-ge v10, v2, :cond_3d

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 4126
    .restart local v15       #v:Landroid/widget/TextView;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4124
    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    .line 4146
    .end local v15           #v:Landroid/widget/TextView;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4147
    const/4 v10, 0x0

    :goto_22
    if-ge v10, v2, :cond_3f

    .line 4148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 4149
    .restart local v15       #v:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3e

    .line 4150
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4151
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4152
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4153
    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "update carrier label"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :goto_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 4155
    :cond_3e
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 4161
    .end local v15           #v:Landroid/widget/TextView;
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_40

    .line 4162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 4165
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_41

    .line 4166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 4169
    :cond_41
    return-void

    .line 3659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3675
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3732
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setStackedMode(Z)V
    .locals 1
    .parameter "stacked"

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 750
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2994
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2997
    .local v0, something:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2998
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 2999
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3000
    const/4 p1, 0x0

    .line 3005
    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 3007
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3008
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->displayingRoamingNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    :cond_1
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    const/4 v0, 0x1

    .line 3016
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3017
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/NetworkController;->displayingRoamingIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 3022
    if-eqz v0, :cond_3

    .line 3023
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    const/4 v0, 0x1

    .line 3028
    :cond_4
    if-eqz v0, :cond_9

    .line 3030
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_8

    .line 3031
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3032
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3033
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3056
    :goto_0
    return-void

    .line 3034
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_6

    .line 3036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3037
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 3038
    :cond_6
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_7

    .line 3039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3040
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 3042
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3043
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 3046
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 3049
    :cond_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_a

    .line 3050
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 3051
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 3053
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"
    .parameter "showCB"
    .parameter "CBmsg"

    .prologue
    const/4 v4, 0x1

    .line 3065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3066
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3067
    .local v0, something:Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 3069
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3070
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 3071
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3072
    const/4 p1, 0x0

    .line 3076
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 3077
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    const/4 v0, 0x1

    .line 3080
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3081
    if-eqz v0, :cond_2

    .line 3082
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    const/4 v0, 0x1

    .line 3087
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 3088
    if-eqz v0, :cond_4

    .line 3089
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    const/4 v0, 0x1

    .line 3095
    :cond_5
    if-eqz v0, :cond_6

    .line 3096
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3101
    :goto_0
    return-void

    .line 3098
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
