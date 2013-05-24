.class public Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "BrightnessQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# static fields
.field private static final DISMISS_DIALOG_TIMEOUT_VALUE:I = 0xfa0

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BrightnessQuickSettingButton"


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mBrightnessDialog:Landroid/app/Dialog;

.field private mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 59
    const/4 v2, 0x0

    const v3, 0x7f0c0134

    const v4, 0x7f020187

    const v5, 0x7f020186

    const v6, 0x7f020185

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->dismissBrightnessDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/BrightnessController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->removeAllBrightnessDialogCallbacks()V

    return-void
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->removeAllBrightnessDialogCallbacks()V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_0
    return-void
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mDismissBrightnessDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 9

    .prologue
    const v8, 0x7f09002e

    const/4 v6, 0x1

    const/4 v7, -0x2

    .line 91
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v4, :cond_0

    .line 92
    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    .line 115
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    const v5, 0x7f040010

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 117
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v4, :cond_2

    .line 121
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$2;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v5, p0, v6, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    .line 130
    .local v1, mAnimatedBrightnessIconView:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    const v5, 0x7f09002c

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 131
    .local v2, mBrightnessIconView:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 132
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .end local v1           #mAnimatedBrightnessIconView:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
    .end local v2           #mBrightnessIconView:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 152
    .local v3, window:Landroid/view/Window;
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 153
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 158
    const/16 v4, 0x7e4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 159
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 160
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 161
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 162
    const v4, 0x40020

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 165
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #window:Landroid/view/Window;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 171
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 172
    const/16 v4, 0xfa0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->dismissBrightnessDialog(I)V

    .line 174
    :cond_1
    return-void

    .line 134
    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$3;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v5, p0, v6, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    goto :goto_0

    .line 168
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->setActivateStatus(I)V

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 75
    return-void
.end method

.method public onBatteryLevelChanged(IZI)V
    .locals 3
    .parameter "level"
    .parameter "pluggedIn"
    .parameter "batteryStatus"

    .prologue
    .line 200
    const-string v0, "TW_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current batterystatus  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->getActivateStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->setActivateStatus(I)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->showBrightnessDialog()V

    .line 82
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/BrightnessQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
