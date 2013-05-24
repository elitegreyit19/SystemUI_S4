.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final CHARGING_INTERRUPTION_PERIOD:I = 0xea60

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final MAXIMUM_LOW_BATTERY_DUMP:I = 0x3

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final PRODUCT_DEV:I = 0x0

.field static final SLOW_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargingWarning"

.field static final SOC_SUDDEN_CHANGE_THRESHOLD:I = 0xa

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final WIRELESS_CHARGING_DURATION:I = 0xbb8


# instance fields
.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryStatus:I

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field mDeviceType:I

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mPlugType:I

.field mThemeContext:Landroid/content/Context;

.field mVZW:Z

.field mWirelessChargingDialog:Landroid/app/AlertDialog;

.field mWirelessChargingTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 121
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 122
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 123
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 124
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 125
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 126
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 127
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 128
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 133
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 154
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 236
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 729
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 777
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    .line 972
    new-instance v0, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 221
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 222
    const/4 v2, 0x1

    .line 230
    :cond_0
    :goto_0
    return v2

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 228
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_3

    .line 229
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 230
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 233
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargingNotification()V
    .locals 3

    .prologue
    .line 1021
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1025
    .local v0, notificationManager:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1027
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1029
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 962
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 963
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 966
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f0c0173

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 968
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 970
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 922
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 924
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 926
    .end local v0           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargingWarning()V
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 787
    :cond_0
    return-void
.end method

.method dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 669
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 637
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 473
    :cond_0
    return-void
.end method

.method dismissWirelessChargingNotice()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 739
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1147
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1148
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1149
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1158
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1160
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method isOverCurrent()Z
    .locals 2

    .prologue
    .line 1137
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    if-ltz v0, :cond_0

    .line 1138
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : not overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v0, 0x0

    .line 1142
    :goto_0
    return v0

    .line 1141
    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method notifyAbnormalChargingNotification(I)V
    .locals 9
    .parameter "messageId"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0c0172

    .line 982
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 984
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 985
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargingNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_0
    return-void

    .line 991
    :cond_0
    if-ne v7, p1, :cond_2

    .line 992
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c016f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 999
    .local v3, text:Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 1000
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1001
    if-ne v7, p1, :cond_3

    .line 1002
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f0200aa

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1006
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1007
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1008
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1009
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1012
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1013
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1015
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1017
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 995
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c016c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 996
    .restart local v4       #title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c016e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1004
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f0200c4

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0c0173

    const/4 v8, 0x0

    .line 929
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 930
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    return-void

    .line 934
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 936
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 937
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 941
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0160

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 942
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 945
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 946
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f020161

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 947
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 948
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 951
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 952
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 954
    .local v2, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 956
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 958
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 882
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 884
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 885
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0160

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0161

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, text:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 893
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 894
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f0200c3

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 895
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 896
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 897
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 900
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 901
    .local v1, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 903
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 905
    const/4 v7, 0x5

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 907
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 908
    .local v4, powerManager:Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 909
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 914
    .local v0, fullBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method playSound(I)V
    .locals 11
    .parameter "soundType"

    .prologue
    .line 1032
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1035
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1037
    .local v1, audioMode:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    if-eq v7, v1, :cond_1

    .line 1038
    const-string v7, "KOR"

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1040
    const/4 v7, 0x3

    if-eq v7, v1, :cond_1

    .line 1041
    const-string v7, "PowerUI"

    const-string v8, "recording.. so doesn\'t play sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v1           #audioMode:I
    :goto_0
    return-void

    .line 1045
    .restart local v1       #audioMode:I
    :cond_0
    const-string v7, "PowerUI"

    const-string v8, "recording so doesn\'t play sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1051
    .end local v1           #audioMode:I
    :cond_1
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_2

    .line 1054
    const-string v7, "PowerUI"

    const-string v8, "playSound : NotificationPlayer is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    new-instance v7, Lcom/android/systemui/media/NotificationPlayer;

    const-string v8, "PowerUI"

    invoke-direct {v7, v8}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1057
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_2

    .line 1058
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new NotificationPlayer"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    :cond_2
    if-eqz v0, :cond_3

    .line 1065
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1071
    .local v4, ringerMode:I
    :goto_1
    const/4 v7, 0x2

    if-ne v7, v4, :cond_4

    .line 1073
    packed-switch p1, :pswitch_data_0

    .line 1084
    :try_start_0
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1088
    .local v5, soundUri:Landroid/net/Uri;
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1089
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_NORMAL"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1117
    .end local v5           #soundUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1118
    .local v2, exception:Ljava/lang/Exception;
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    .end local v2           #exception:Ljava/lang/Exception;
    .end local v4           #ringerMode:I
    :cond_3
    const/4 v4, 0x2

    .restart local v4       #ringerMode:I
    goto :goto_1

    .line 1075
    :pswitch_0
    :try_start_1
    const-string v7, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1076
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1078
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "low_battery_sound"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1079
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1081
    .end local v5           #soundUri:Landroid/net/Uri;
    :pswitch_2
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1082
    .restart local v5       #soundUri:Landroid/net/Uri;
    goto :goto_2

    .line 1090
    .end local v5           #soundUri:Landroid/net/Uri;
    :cond_4
    const/4 v7, 0x1

    if-ne v7, v4, :cond_6

    .line 1092
    packed-switch p1, :pswitch_data_1

    .line 1101
    const/16 v3, 0xb

    .line 1105
    .local v3, hapticFeedback:I
    :goto_3
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 1106
    .local v6, systemVibrator:Landroid/os/SystemVibrator;
    if-eqz v6, :cond_5

    .line 1107
    invoke-virtual {v6, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1111
    :goto_4
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_VIBRATE"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1094
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :pswitch_3
    const/16 v3, 0xa

    .line 1095
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1098
    .end local v3           #hapticFeedback:I
    :pswitch_4
    const/16 v3, 0xb

    .line 1099
    .restart local v3       #hapticFeedback:I
    goto :goto_3

    .line 1109
    .restart local v6       #systemVibrator:Landroid/os/SystemVibrator;
    :cond_5
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new SystemVibrator"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1112
    .end local v3           #hapticFeedback:I
    .end local v6           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_6
    if-nez v4, :cond_7

    .line 1113
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_SILENT"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1115
    :cond_7
    const-string v7, "PowerUI"

    const-string v8, "unknown RINGER_MODE"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1092
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method showAbnormalChargingWarning(I)V
    .locals 12
    .parameter "messageId"

    .prologue
    const v11, 0x7f0c0170

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 790
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    .line 792
    .local v4, isShutdownOn:Z
    :goto_0
    if-eqz v4, :cond_1

    .line 793
    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning while Shutdown is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_1
    return-void

    .end local v4           #isShutdownOn:Z
    :cond_0
    move v4, v7

    .line 790
    goto :goto_0

    .line 797
    .restart local v4       #isShutdownOn:Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    .line 798
    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargingWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 808
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charging"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 809
    .local v0, abnormalChargeSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 810
    if-ne v11, p1, :cond_4

    .line 811
    const-string v9, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 812
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 814
    :cond_3
    const/4 v7, 0x3

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/4 v7, 0x4

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/16 v7, 0xa

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    .line 815
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 819
    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 820
    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 826
    :cond_5
    if-ne v11, p1, :cond_7

    .line 827
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0c016f

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 829
    .local v5, title:Ljava/lang/CharSequence;
    const/4 v7, 0x2

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v7, v9, :cond_6

    .line 830
    const p1, 0x7f0c0171

    .line 836
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 837
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 833
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0c016c

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #title:Ljava/lang/CharSequence;
    goto :goto_2

    .line 840
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const/high16 v9, 0x7f04

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 841
    .local v6, v:Landroid/view/View;
    const v7, 0x7f090007

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    .line 843
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    move v3, p1

    .line 848
    .local v3, finalMessageId:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 849
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 850
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 851
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 852
    const v7, 0x1010355

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 853
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 869
    .local v2, d:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 875
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 876
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 877
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method showChargingInterruptionWarning()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 672
    const-string v7, "PowerUI"

    const-string v8, "showChargingInterruptionWarning()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "SHOULD_SHUT_DOWN"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v2, v7, :cond_0

    .line 676
    .local v2, isShutdownOn:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 677
    const-string v6, "PowerUI"

    const-string v7, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_1
    return-void

    .end local v2           #isShutdownOn:Z
    :cond_0
    move v2, v6

    .line 674
    goto :goto_0

    .line 682
    .restart local v2       #isShutdownOn:Z
    :cond_1
    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v9, v7, :cond_2

    .line 683
    const v3, 0x7f0c015e

    .line 694
    .local v3, messageId:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 695
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 696
    const v6, 0x7f0c015c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 697
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 698
    const v6, 0x1010355

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 699
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 701
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 702
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 712
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 713
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 714
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    .line 716
    invoke-virtual {p0, v9}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 718
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 719
    .local v5, powerManager:Landroid/os/PowerManager;
    if-nez v5, :cond_5

    .line 720
    const-string v6, "PowerUI"

    const-string v7, "showChargingInterruptionWarning : fail to get PowerManager reference"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v3           #messageId:I
    .end local v5           #powerManager:Landroid/os/PowerManager;
    :cond_2
    const/4 v7, 0x7

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_3

    .line 685
    const v3, 0x7f0c015f

    .restart local v3       #messageId:I
    goto :goto_2

    .line 686
    .end local v3           #messageId:I
    :cond_3
    const/4 v7, 0x6

    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v8, :cond_4

    .line 687
    const v3, 0x7f0c015d

    .restart local v3       #messageId:I
    goto :goto_2

    .line 689
    .end local v3           #messageId:I
    :cond_4
    const-string v6, "PowerUI"

    const-string v7, "status is NotCharging but health is wrong value"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 723
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v1       #d:Landroid/app/AlertDialog;
    .restart local v3       #messageId:I
    .restart local v5       #powerManager:Landroid/os/PowerManager;
    :cond_5
    const v6, 0x10000006

    const-string v7, "PowerUI"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 725
    .local v4, notChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 726
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 640
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 645
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 646
    const v2, 0x7f0c006d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 647
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 648
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 651
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 658
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 659
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 660
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 661
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 21

    .prologue
    .line 476
    const-string v18, "PowerUI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    const-string v17, "showing"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " low battery warning: level="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "]"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    .line 487
    .local v3, bucket:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "LOW_BATTERY_DUMP"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 488
    .local v8, isLowBatteryDumpOn:Z
    :goto_1
    if-eqz v8, :cond_0

    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 490
    .local v11, lowBatteryDumpCount:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v11, v0, :cond_3

    .line 491
    const-string v17, "PowerUI"

    const-string v18, "Dump for Low battery"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    add-int/lit8 v11, v11, 0x1

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 500
    .end local v11           #lowBatteryDumpCount:I
    :cond_0
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "SHOULD_SHUT_DOWN"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v9, 0x1

    .line 501
    .local v9, isShutdownOn:Z
    :goto_3
    if-eqz v9, :cond_5

    .line 502
    const-string v17, "PowerUI"

    const-string v18, "Shutdown is ON"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_4
    return-void

    .line 476
    .end local v3           #bucket:I
    .end local v8           #isLowBatteryDumpOn:Z
    .end local v9           #isShutdownOn:Z
    :cond_1
    const-string v17, "updating"

    goto/16 :goto_0

    .line 487
    .restart local v3       #bucket:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 496
    .restart local v8       #isLowBatteryDumpOn:Z
    .restart local v11       #lowBatteryDumpCount:I
    :cond_3
    const-string v17, "PowerUI"

    const-string v18, "Low battery but Low battery dump count reaches maximum"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 500
    .end local v11           #lowBatteryDumpCount:I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 506
    .restart local v9       #isShutdownOn:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_6

    .line 507
    const-string v17, "PowerUI"

    const-string v18, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 511
    :cond_6
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0163

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 517
    .local v15, title:Ljava/lang/CharSequence;
    :goto_5
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0165

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 539
    .local v10, levelText:Ljava/lang/CharSequence;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 597
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 598
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v17, "low_battery_sound"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 599
    .local v14, soundPath:Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 602
    .local v13, powerManager:Landroid/os/PowerManager;
    if-nez v13, :cond_c

    .line 603
    const-string v17, "PowerUI"

    const-string v18, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 514
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v10           #levelText:Ljava/lang/CharSequence;
    .end local v13           #powerManager:Landroid/os/PowerManager;
    .end local v14           #soundPath:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0162

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #title:Ljava/lang/CharSequence;
    goto :goto_5

    .line 520
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0164

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #levelText:Ljava/lang/CharSequence;
    goto :goto_6

    .line 545
    :cond_9
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v18, "GT-P6800"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 546
    const v6, 0x7f020005

    .line 551
    .local v6, imageId:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f040003

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 552
    .local v16, v:Landroid/view/View;
    const v17, 0x7f09000d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const v17, 0x7f09000e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 558
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    .local v2, b:Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 561
    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 562
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 563
    const v17, 0x1010355

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 564
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 566
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.intent.action.POWER_USAGE_SUMMARY"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v7, intent:Landroid/content/Intent;
    const/high16 v17, 0x5880

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 572
    const v17, 0x7f0c006e

    new-instance v18, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    :cond_a
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 583
    .local v5, d:Landroid/app/AlertDialog;
    new-instance v17, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 590
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d9

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 591
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 593
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 594
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 548
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    .end local v5           #d:Landroid/app/AlertDialog;
    .end local v6           #imageId:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v16           #v:Landroid/view/View;
    :cond_b
    const v6, 0x7f020004

    .restart local v6       #imageId:I
    goto/16 :goto_8

    .line 606
    .end local v6           #imageId:I
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v13       #powerManager:Landroid/os/PowerManager;
    .restart local v14       #soundPath:Ljava/lang/String;
    :cond_c
    const v17, 0x10000006

    const-string v18, "PowerUI"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 608
    .local v12, lowBatteryScreenDimLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v17, 0x3a98

    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_4
.end method

.method showWirelessChargingNotice(I)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 744
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 772
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 775
    :goto_1
    return-void

    .line 746
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_1

    .line 747
    const-string v2, "PowerUI"

    const-string v3, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 752
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 753
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 754
    const v2, 0x7f0c0168

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 755
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 756
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 759
    .local v1, d:Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 767
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 768
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 769
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 159
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 161
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v7

    .line 163
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v6

    .line 166
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 167
    .local v2, powerManager:Landroid/os/PowerManager;
    if-nez v2, :cond_0

    .line 168
    const-string v3, "PowerUI"

    const-string v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, characteristics:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iput v8, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 181
    :goto_1
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v8, v3, :cond_2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "GT-P6800"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 183
    const-string v3, "PowerUI"

    const-string v4, "White theme"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_2
    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 194
    :goto_3
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : VZW customer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer;

    const-string v4, "PowerUI"

    invoke-direct {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 197
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 200
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    return-void

    .line 170
    .end local v0           #characteristics:Ljava/lang/String;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, 0x6

    const-string v4, "PowerUI"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 171
    const-string v3, "PowerUI"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 178
    .restart local v0       #characteristics:Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_1

    .line 185
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 186
    const-string v3, "PowerUI"

    const-string v4, "Dark theme"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 192
    :cond_3
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto :goto_3
.end method

.method turnOnScreen()V
    .locals 5

    .prologue
    .line 1123
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1124
    .local v1, powerManager:Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1125
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return-void

    .line 1130
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, exception:Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
