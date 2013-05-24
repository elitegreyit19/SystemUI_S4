.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BatteryController"


# instance fields
.field mBatteryChargeIcon:I

.field mBatteryIcon:I

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 46
    const v1, 0x7f0200ac

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    .line 47
    const v1, 0x7f0200b9

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseATTBatteryIcon:Z

    if-eqz v1, :cond_0

    .line 69
    const v1, 0x7f0200b8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    .line 70
    const v1, 0x7f0200c2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, action:Ljava/lang/String;
    const-string v15, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 90
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - ACTION_BATTERY_CHANGED"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v15, "level"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 92
    .local v10, level:I
    const-string v15, "plugged"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v12, 0x1

    .line 93
    .local v12, plugged:Z
    :goto_0
    const-string v15, "plugged"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 94
    .local v13, pluggedType:I
    const-string v15, "status"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 95
    .local v5, batteryStatus:I
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    .line 98
    .local v9, icon:I
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 144
    const-string v15, "STATUSBAR-BatteryController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive() - : BatteryManager.EXTRA_STATUS  -  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "status"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_2
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    if-eqz v15, :cond_0

    const-string v15, "online"

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_0

    .line 151
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - online == 0 && VZW"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const v9, 0x7f0200c4

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 159
    .local v3, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_9

    .line 160
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 161
    .local v14, v:Landroid/widget/ImageView;
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v16, 0x7f0c00d6

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 92
    .end local v3           #N:I
    .end local v5           #batteryStatus:I
    .end local v7           #i:I
    .end local v9           #icon:I
    .end local v12           #plugged:Z
    .end local v13           #pluggedType:I
    .end local v14           #v:Landroid/widget/ImageView;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 95
    .restart local v5       #batteryStatus:I
    .restart local v12       #plugged:Z
    .restart local v13       #pluggedType:I
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_1

    .line 100
    .restart local v9       #icon:I
    :pswitch_0
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_CHARGING:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryChargeIcon:I

    .line 102
    goto :goto_2

    .line 104
    :pswitch_1
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v15, :cond_3

    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-nez v15, :cond_4

    :cond_3
    const/4 v15, 0x2

    if-ne v13, v15, :cond_4

    .line 106
    const v9, 0x7f0201f7

    .line 107
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_DISCHARGING: tw_stat_sys_battery_usb_not_charge"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    .line 110
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_DISCHARGING: stat_sys_battery"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 114
    :pswitch_2
    const-string v15, "health"

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 115
    .local v11, mBatteryHealth:I
    const-string v15, "STATUSBAR-BatteryController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onReceive() - BATTERY_STATUS_NOT_CHARGING:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v15, "KOR"

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 118
    const/4 v15, 0x3

    if-eq v11, v15, :cond_5

    const/4 v15, 0x7

    if-ne v11, v15, :cond_6

    .line 120
    :cond_5
    const v9, 0x7f0201f6

    goto/16 :goto_2

    .line 123
    :cond_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    .line 126
    :cond_7
    const/4 v15, 0x5

    if-ne v11, v15, :cond_8

    .line 127
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    goto/16 :goto_2

    .line 129
    :cond_8
    const v9, 0x7f0201f6

    .line 132
    goto/16 :goto_2

    .line 136
    .end local v11           #mBatteryHealth:I
    :pswitch_3
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_FULL:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    .line 138
    goto/16 :goto_2

    .line 140
    :pswitch_4
    const-string v15, "STATUSBAR-BatteryController"

    const-string v16, "onReceive() - BATTERY_STATUS_UNKNOWN:"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:I

    .line 142
    goto/16 :goto_2

    .line 166
    .restart local v3       #N:I
    .restart local v7       #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 167
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_a

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 169
    .local v14, v:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v16, 0x7f0c0076

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 173
    .end local v14           #v:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 175
    .local v6, cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v6, v10, v12, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZI)V

    goto :goto_5

    .line 178
    .end local v3           #N:I
    .end local v5           #batteryStatus:I
    .end local v6           #cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #icon:I
    .end local v10           #level:I
    .end local v12           #plugged:Z
    .end local v13           #pluggedType:I
    :cond_b
    return-void

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
