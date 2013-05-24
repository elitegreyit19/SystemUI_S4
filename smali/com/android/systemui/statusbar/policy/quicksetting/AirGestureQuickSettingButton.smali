.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirGestureQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;
    }
.end annotation


# static fields
.field private static final DB_AIR_GESTURE:Ljava/lang/String; = "air_motion_engine"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirGesture"


# instance fields
.field private mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 46
    const/4 v2, 0x0

    const v3, 0x7f0c0136

    const v4, 0x7f020178

    const v5, 0x7f020177

    const v6, 0x7f020176

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setActivateStatus(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    .line 60
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 58
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, theme:I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 158
    const/4 v1, 0x5

    .line 160
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c018b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->statusBarCollapse()V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 184
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showConfirmPopup()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 199
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setActivateStatus(I)V

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 138
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 139
    .local v5, QuickGlance:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 140
    .local v3, AirScroll:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 141
    .local v4, AirTurn:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 142
    .local v1, AirMove:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_clip"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 143
    .local v2, AirPin:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 145
    .local v0, AirCallAccept:I
    or-int v8, v5, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v0

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "STATUSBAR-AirGesture"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v0, "STATUSBAR-AirGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirGesture onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 84
    if-eqz p1, :cond_3

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    const v0, 0x7f0c0137

    const v1, 0x7f0c0138

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setActivateStatus(I)V

    .line 98
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
