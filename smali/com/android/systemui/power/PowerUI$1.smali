.class Lcom/android/systemui/power/PowerUI$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, action:Ljava/lang/String;
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 242
    .local v8, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "level"

    const/16 v19, 0x64

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 244
    .local v10, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 247
    .local v7, oldBatteryHealth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "health"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 250
    .local v13, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "plugged"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 252
    .local v12, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "invalid_charger"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 254
    .local v9, oldBatteryOnline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "online"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 256
    .local v6, oldBatteryChargetype:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "charge_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "current_avg"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 259
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v17

    if-nez v17, :cond_1

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "INTENT_DEBUG"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    sub-int v17, v17, v8

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v8, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 264
    .local v5, lowBatteryDumpCount:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v5, v0, :cond_b

    .line 265
    const-string v17, "PowerUI"

    const-string v18, "Dump for SOC sudden change"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    add-int/lit8 v5, v5, 0x1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "LOW_BATTERY_DUMP_COUNT"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 275
    .end local v5           #lowBatteryDumpCount:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/4 v15, 0x1

    .line 276
    .local v15, plugged:Z
    :goto_1
    if-eqz v13, :cond_d

    const/4 v14, 0x1

    .line 278
    .local v14, oldPlugged:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v8}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v11

    .line 279
    .local v11, oldBucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v18, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 323
    .local v4, bucket:I
    if-nez v15, :cond_e

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    if-gez v4, :cond_e

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    .line 348
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v10, v0, :cond_5

    .line 349
    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 355
    :cond_3
    :goto_4
    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 357
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 358
    .local v16, powerManager:Landroid/os/PowerManager;
    if-nez v16, :cond_14

    .line 359
    const-string v17, "PowerUI"

    const-string v18, "onReceive : fail to get PowerManager reference"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local v16           #powerManager:Landroid/os/PowerManager;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showChargingInterruptionWarning()V

    .line 382
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_7

    .line 383
    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v0, v7, :cond_6

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 384
    :cond_6
    const-string v17, "PowerUI"

    const-string v18, "Overvoltage (recovered) so turn on the screen."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v17, "KOR"

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 391
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_9

    .line 392
    if-eqz v13, :cond_8

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v13, :cond_9

    .line 393
    :cond_8
    if-nez v13, :cond_9

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 399
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_a

    .line 400
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v9, :cond_17

    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 401
    const-string v17, "PowerUI"

    const-string v18, "start Wireless charging"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c0169

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    .line 465
    .end local v4           #bucket:I
    .end local v6           #oldBatteryChargetype:I
    .end local v7           #oldBatteryHealth:I
    .end local v8           #oldBatteryLevel:I
    .end local v9           #oldBatteryOnline:I
    .end local v10           #oldBatteryStatus:I
    .end local v11           #oldBucket:I
    .end local v12           #oldInvalidCharger:I
    .end local v13           #oldPlugType:I
    .end local v14           #oldPlugged:Z
    .end local v15           #plugged:Z
    :cond_a
    :goto_7
    return-void

    .line 270
    .restart local v5       #lowBatteryDumpCount:I
    .restart local v6       #oldBatteryChargetype:I
    .restart local v7       #oldBatteryHealth:I
    .restart local v8       #oldBatteryLevel:I
    .restart local v9       #oldBatteryOnline:I
    .restart local v10       #oldBatteryStatus:I
    .restart local v12       #oldInvalidCharger:I
    .restart local v13       #oldPlugType:I
    :cond_b
    const-string v17, "PowerUI"

    const-string v18, "SOC sudden change but Low battery dump count reaches maximum"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    .end local v5           #lowBatteryDumpCount:I
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 276
    .restart local v15       #plugged:Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 328
    .restart local v4       #bucket:I
    .restart local v11       #oldBucket:I
    .restart local v14       #oldPlugged:Z
    :cond_e
    if-ge v4, v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    if-gez v4, :cond_10

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    .line 333
    :cond_f
    if-nez v15, :cond_2

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    .line 336
    :cond_10
    if-le v4, v11, :cond_11

    if-lez v4, :cond_11

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 338
    :cond_11
    if-eqz v15, :cond_2

    if-nez v14, :cond_2

    if-gez v4, :cond_2

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->isOverCurrent()Z

    move-result v17

    if-nez v17, :cond_12

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 343
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning()V

    goto/16 :goto_3

    .line 351
    :cond_13
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v0, v10, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    goto/16 :goto_4

    .line 361
    .restart local v16       #powerManager:Landroid/os/PowerManager;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    const-string v19, "PowerUI"

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "PowerUI"

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_5

    .line 367
    .end local v16           #powerManager:Landroid/os/PowerManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_5

    .line 372
    :cond_16
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v10, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissChargingInterruptionWarning()V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 403
    :cond_17
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v0, v9, :cond_19

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 405
    :cond_18
    const-string v17, "PowerUI"

    const-string v18, "switch from wireless to cable"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c016a

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_7

    .line 407
    :cond_19
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v0, v9, :cond_1a

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v9, :cond_1b

    :cond_1a
    const/16 v17, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 409
    const-string v17, "PowerUI"

    const-string v18, "switch from cable to wireless"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c016b

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showWirelessChargingNotice(I)V

    goto/16 :goto_7

    .line 411
    :cond_1b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v9, :cond_1c

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissWirelessChargingNotice()V

    goto/16 :goto_7

    .line 413
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    if-nez v17, :cond_1d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c016d

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showAbnormalChargingWarning(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c016d

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_7

    .line 417
    :cond_1d
    if-nez v9, :cond_a

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissAbnormalChargingWarning()V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    goto/16 :goto_7

    .line 435
    .end local v4           #bucket:I
    .end local v6           #oldBatteryChargetype:I
    .end local v7           #oldBatteryHealth:I
    .end local v8           #oldBatteryLevel:I
    .end local v9           #oldBatteryOnline:I
    .end local v10           #oldBatteryStatus:I
    .end local v11           #oldBucket:I
    .end local v12           #oldInvalidCharger:I
    .end local v13           #oldPlugType:I
    .end local v14           #oldPlugged:Z
    .end local v15           #plugged:Z
    :cond_1e
    const-string v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 436
    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1f

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelFullBatteryNotification()V

    .line 438
    const-string v17, "PowerUI"

    const-string v18, "Language is changed so notify FullBatteryNotification again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFullBatteryNotification()V

    .line 442
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->cancelAbnormalChargingNotification()V

    .line 445
    const-string v17, "PowerUI"

    const-string v18, "Language is changed so notify incompatible charger again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const v18, 0x7f0c016e

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->notifyAbnormalChargingNotification(I)V

    goto/16 :goto_7

    .line 453
    :cond_20
    const-string v17, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 454
    const-string v17, "PowerUI"

    const-string v18, "Face detection is failed before dimming"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_7

    .line 456
    :cond_21
    const-string v17, "com.sec.factory.app.factorytest.FTA_ON"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 458
    const-string v17, "PowerUI"

    const-string v18, "FTA mode ON"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 459
    :cond_22
    const-string v17, "com.sec.factory.app.factorytest.FTA_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$1;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 461
    const-string v17, "PowerUI"

    const-string v18, "FTA mode OFF"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 463
    :cond_23
    const-string v17, "PowerUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown intent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method
