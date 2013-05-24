.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;,
        Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field public static final COLLAPSE_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field public static final COLLAPSE_ACTION_PERMISSION:Ljava/lang/String; = "android.permission.EXPAND_STATUS_BAR"

.field private static final DBG_WAKE:Z = false

.field private static final DB_KIDS_MODE:Ljava/lang/String; = "kids_mode_enabled"

.field public static final DEBUG:Z = false

.field protected static final ENABLE_INTRUDERS:Z = false

.field public static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field protected static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field protected static final MSG_CLOSE_SEARCH_PANEL:I = 0x401

.field protected static final MSG_HIDE_INTRUDER:I = 0x403

.field protected static final MSG_OPEN_SEARCH_PANEL:I = 0x400

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_SHOW_INTRUDER:I = 0x402

.field protected static final MSG_TOGGLE_RECENTS_PANEL:I = 0x3fc

.field public static final MULTIUSER_DEBUG:Z = false

.field public static final PALM_TOUCH_THRESHOLD:F = 8.0f

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final TIMEOUT:I = 0x1

.field public static canNavigationBarMove:Z

.field public static canStatusBarHide:Z

.field public static hasVibrator:Z

.field public static isLightTheme:Z

.field public static isNetworkAvailable:Z

.field public static isNetworkSupported:Z

.field public static supportVoice:Z


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected mCurrentUserId:I

.field protected mCurrentlyIntrudingNotification:Lcom/android/internal/statusbar/StatusBarNotification;

.field private mDeviceProvisioned:Z

.field protected mDisplay:Landroid/view/Display;

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mIsNavigationBarHidden:Z

.field protected mIsStatusBarHidden:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKidsModeActivated:Z

.field private mKidsModeObserver:Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;

.field protected mLatestNotificationText:Landroid/widget/TextView;

.field protected mLatestNotificationTitle:Landroid/widget/LinearLayout;

.field protected mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field protected mMiniConPile:Landroid/widget/LinearLayout;

.field protected mNoNotificationText:Landroid/widget/TextView;

.field protected mNoNotificationsTitle:Landroid/widget/LinearLayout;

.field protected mNotificationBlamePopup:Landroid/widget/PopupMenu;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mOngoingNotificationText:Landroid/widget/TextView;

.field protected mOngoingNotificationTitle:Landroid/widget/LinearLayout;

.field protected mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mPM:Landroid/os/PowerManager;

.field protected mPanelSlightlyVisible:Z

.field protected mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mProvisioningObserver:Landroid/database/ContentObserver;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockHandler:Landroid/os/Handler;

.field private mWakelockSequence:I

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 191
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 211
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeActivated:Z

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    .line 260
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLockHandler:Landroid/os/Handler;

    .line 855
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1058
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private canNavigationBarMove()Z
    .locals 8

    .prologue
    .line 1529
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1531
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1532
    .local v1, dispMetrix:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1534
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1535
    .local v3, rawWidth:I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1536
    .local v2, rawHeight:I
    if-le v3, v2, :cond_0

    move v4, v2

    .line 1537
    .local v4, smallestWidth:I
    :goto_0
    mul-int/lit16 v6, v4, 0xa0

    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v5, v6, v7

    .line 1543
    .local v5, smallestWidthDensityPixel:I
    const/16 v6, 0x26c

    if-ge v5, v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    return v6

    .end local v4           #smallestWidth:I
    .end local v5           #smallestWidthDensityPixel:I
    :cond_0
    move v4, v3

    .line 1536
    goto :goto_0

    .line 1543
    .restart local v4       #smallestWidth:I
    .restart local v5       #smallestWidthDensityPixel:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private checkTheme()V
    .locals 0

    .prologue
    .line 1597
    return-void
.end method

.method public static getIsNetworkAvailable()Z
    .locals 1

    .prologue
    .line 1588
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    return v0
.end method

.method private handleTimeout(I)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 340
    monitor-enter p0

    .line 342
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 345
    :cond_0
    monitor-exit p0

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSIMandOperatorMatched()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1559
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, currentSIM:Ljava/lang/String;
    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, currentLocation:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return v2

    .line 1568
    :cond_1
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSIMandOperatorMatched  currentPlmn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperatorSIM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1571
    const-string v3, "StatusBar"

    const-string v4, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const-string v3, "domestic"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    const/4 v2, 0x1

    goto :goto_0

    .line 1577
    :cond_2
    const-string v3, "StatusBar"

    const-string v4, "isSIMandOperatorMatched SIM is NOT matched!!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 667
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setIsNetworkAvailable(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1583
    sput-boolean p0, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    .line 1584
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsNetworkAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 545
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 546
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 548
    return-void
.end method

.method private updateStatusBarGlobalSettings()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1467
    :try_start_0
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 1469
    .local v4, wm:Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    sput-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    .end local v4           #wm:Landroid/view/IWindowManager;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    .line 1477
    :try_start_1
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 1479
    .local v0, cm:Landroid/net/IConnectivityManager;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1485
    .end local v0           #cm:Landroid/net/IConnectivityManager;
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 1486
    .local v3, v:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVibrator:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1493
    .end local v3           #v:Landroid/os/Vibrator;
    :goto_3
    :try_start_3
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1110033

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1501
    :goto_4
    return-void

    .restart local v4       #wm:Landroid/view/IWindowManager;
    :cond_0
    move v5, v7

    .line 1469
    goto :goto_0

    .line 1470
    .end local v4           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 1471
    .local v1, e:Landroid/os/RemoteException;
    sput-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    goto :goto_1

    .line 1480
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1481
    .restart local v1       #e:Landroid/os/RemoteException;
    sput-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    goto :goto_2

    .line 1487
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1488
    .local v1, e:Ljava/lang/Exception;
    sput-boolean v7, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVibrator:Z

    goto :goto_3

    .line 1495
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 1496
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v7, "com.android.internal.R.bool.config_voice_capable not found"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1497
    sput-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    goto :goto_4
.end method


# virtual methods
.method protected addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 11
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v10, 0x0

    .line 1190
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v8, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1193
    .local v8, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1195
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->number:I

    iget-object v6, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1201
    .local v0, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v8, v10

    .line 1240
    .end local v8           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    return-object v8

    .line 1206
    .restart local v8       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, p2, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1209
    .local v7, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v8, v10

    .line 1213
    goto :goto_0

    .line 1217
    :cond_1
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v8, v10

    .line 1221
    goto :goto_0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v8, v10

    .line 1227
    goto :goto_0

    .line 1233
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v9

    .line 1237
    .local v9, pos:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 1238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 1513
    return-void
.end method

.method protected applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .locals 7
    .parameter "sbn"
    .parameter "content"

    .prologue
    const v6, 0x7f020173

    .line 525
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x10900af

    if-eq v3, v4, :cond_0

    .line 527
    const/4 v2, 0x0

    .line 529
    .local v2, version:I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 530
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 535
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 540
    .end local v2           #version:I
    :cond_0
    :goto_1
    return-void

    .line 531
    .restart local v2       #version:I
    :catch_0
    move-exception v0

    .line 532
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 611
    const/16 v0, 0x3ff

    .line 612
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 614
    return-void
.end method

.method protected cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 892
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 893
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 663
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method public dismissIntruder()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationBlamePopup:Landroid/widget/PopupMenu;

    .line 589
    :cond_0
    return-void
.end method

.method protected expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 4
    .parameter "entry"
    .parameter "expand"

    .prologue
    .line 1244
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1246
    .local v1, rowHeight:I
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1247
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandable()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 1249
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1254
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    return p2

    .line 1252
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected abstract getExpandedViewMaxHeight()I
.end method

.method public getMiniConPile()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getNotificationLongClicker()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected abstract getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method public getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :goto_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideCallOnGoingView()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 625
    const/16 v0, 0x401

    .line 626
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 627
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 628
    return-void
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 3

    .prologue
    .line 1449
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1450
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method protected inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 24
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 957
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0018

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 959
    .local v18, minHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0019

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 961
    .local v17, maxHeight:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v22, v0

    .line 962
    .local v22, sbn:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v19, v0

    .line 963
    .local v19, oneU:Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 964
    .local v16, large:Landroid/widget/RemoteViews;
    if-nez v19, :cond_0

    .line 965
    const/4 v4, 0x0

    .line 1051
    :goto_0
    return v4

    .line 969
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 971
    .local v15, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040029

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v15, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 974
    .local v21, row:Landroid/view/View;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 977
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v23

    .line 978
    .local v23, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00d9

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 984
    const v4, 0x7f090085

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 985
    .local v10, content:Landroid/view/ViewGroup;
    const v4, 0x7f090086

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 987
    .local v9, adaptive:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 989
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 990
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_4

    .line 991
    new-instance v3, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 993
    .local v3, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 999
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_1
    const/4 v13, 0x0

    .line 1000
    .local v13, expandedOneU:Landroid/view/View;
    const/4 v12, 0x0

    .line 1002
    .local v12, expandedLarge:Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v9, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v13

    .line 1003
    if-eqz v16, :cond_1

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1013
    :cond_1
    if-eqz v13, :cond_2

    .line 1014
    new-instance v20, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    .local v20, params:Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 1018
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 1022
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1023
    move-object/from16 v0, v20

    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    .end local v20           #params:Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_2
    if-eqz v12, :cond_3

    .line 1027
    new-instance v20, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1029
    .restart local v20       #params:Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->minHeight:I

    .line 1030
    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;->maxHeight:I

    .line 1031
    move-object/from16 v0, v20

    invoke-virtual {v9, v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1033
    .end local v20           #params:Lcom/android/internal/widget/SizeAdaptiveLayout$LayoutParams;
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 1037
    const v6, 0x7f090002

    if-eqz v16, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1046
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1047
    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 1048
    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1049
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLargeView(Landroid/view/View;)V

    .line 1051
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 995
    .end local v12           #expandedLarge:Landroid/view/View;
    .end local v13           #expandedOneU:Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1007
    .restart local v12       #expandedLarge:Landroid/view/View;
    .restart local v13       #expandedOneU:Landroid/view/View;
    :catch_0
    move-exception v11

    .line 1008
    .local v11, e:Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1009
    .local v14, ident:Ljava/lang/String;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1037
    .end local v11           #e:Ljava/lang/RuntimeException;
    .end local v14           #ident:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNavigationBarHidden()Z
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isNavigationBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isStatusBarHidden()Z
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v0

    return v0
.end method

.method public isStatusBarVisible()Z
    .locals 4

    .prologue
    .line 1548
    const/4 v1, 0x1

    .line 1550
    .local v1, isStatusBarVisible:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1554
    :goto_0
    return v1

    .line 1551
    :catch_0
    move-exception v0

    .line 1552
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StatusBar"

    const-string v3, "Remote exception while to check visibility of status bar"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isSystemBarHidden()Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method protected isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1
    .parameter "parent"
    .parameter "entry"

    .prologue
    .line 1289
    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsecureKeyguardLocked()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 6
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 1055
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public notificationIsForCurrentUser(Lcom/android/internal/statusbar/StatusBarNotification;)Z
    .locals 3
    .parameter "n"

    .prologue
    .line 486
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 487
    .local v1, thisUserId:I
    invoke-virtual {p1}, Lcom/android/internal/statusbar/StatusBarNotification;->getUserId()I

    move-result v0

    .line 492
    .local v0, notificationUserId:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->pokeWakelock(I)V

    .line 319
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    .line 322
    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLockHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakelockSequence:I

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLockHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 328
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLockHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 329
    monitor-exit p0

    .line 330
    return-void

    .line 329
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 604
    const/16 v0, 0x3fe

    .line 605
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 607
    return-void
.end method

.method protected preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 882
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 883
    return-void
.end method

.method public releaseWakelock()V
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 336
    :cond_0
    monitor-exit p0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 5
    .parameter "key"

    .prologue
    .line 1170
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1171
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1172
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification for unknown key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const/4 v2, 0x0

    .line 1181
    :goto_0
    return-object v2

    .line 1176
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1177
    .local v1, rowParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationIcons()V

    .line 1181
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setMaxBrightness(I)V
    .locals 0
    .parameter "maxLevel"

    .prologue
    .line 1459
    return-void
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public showCallOnGoingView()V
    .locals 0

    .prologue
    .line 1454
    return-void
.end method

.method protected showNotificationEvenIfUnprovisioned(Lcom/android/internal/statusbar/StatusBarNotification;)Z
    .locals 7
    .parameter "sbn"

    .prologue
    const/4 v4, 0x1

    .line 1435
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1436
    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1437
    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v5, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 1439
    .local v0, aKind:Ljava/lang/String;
    const-string v5, "android.system.imeswitcher"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1445
    .end local v0           #aKind:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    :goto_1
    return v4

    .line 1441
    .restart local v0       #aKind:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    const-string v5, "android.system.update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1445
    .end local v0           #aKind:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    .line 618
    const/16 v0, 0x400

    .line 619
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 621
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isStatusBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsStatusBarHidden:Z

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNavigationBarHidden()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mIsNavigationBarHidden:Z

    .line 374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateStatusBarGlobalSettings()V

    .line 377
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPM:Landroid/os/PowerManager;

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v14, "statusbar"

    invoke-virtual {v0, v1, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v13}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 386
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 390
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->checkTheme()V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v14, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeObserver:Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v13}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v14, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mProvisioningObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 405
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 409
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 410
    .local v2, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v3, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v4, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 414
    const/4 v0, 0x7

    new-array v5, v0, [I

    .line 415
    .local v5, switches:[I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v6, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 425
    aget v0, v5, v13

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(I)V

    .line 426
    aget v0, v5, v12

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 427
    const/4 v0, 0x2

    aget v0, v5, v0

    if-eqz v0, :cond_1

    move v0, v12

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 429
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x3

    aget v1, v5, v1

    const/4 v14, 0x4

    aget v14, v5, v14

    invoke-virtual {p0, v0, v1, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 430
    const/4 v0, 0x5

    aget v0, v5, v0

    if-eqz v0, :cond_2

    move v0, v12

    :goto_2
    const/4 v1, 0x6

    aget v1, v5, v1

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {p0, v0, v12}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHardKeyboardStatus(ZZ)V

    .line 433
    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    .line 434
    .local v7, N:I
    const/4 v11, 0x0

    .line 435
    .local v11, viewIndex:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v7, :cond_4

    .line 436
    invoke-virtual {v2, v9}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v10

    .line 437
    .local v10, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v10, :cond_0

    .line 438
    invoke-virtual {v2, v9}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9, v11, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 439
    add-int/lit8 v11, v11, 0x1

    .line 435
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v7           #N:I
    .end local v9           #i:I
    .end local v10           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v11           #viewIndex:I
    :cond_1
    move v0, v13

    .line 427
    goto :goto_1

    :cond_2
    move v0, v13

    .line 430
    goto :goto_2

    :cond_3
    move v12, v13

    goto :goto_3

    .line 444
    .restart local v7       #N:I
    .restart local v9       #i:I
    .restart local v11       #viewIndex:I
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 445
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v7, v0, :cond_5

    .line 446
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_6

    .line 447
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 446
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 450
    :cond_5
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notification list length mismatch: keys="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " notifications="

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 467
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    return-void

    .line 419
    .end local v7           #N:I
    .end local v8           #filter:Landroid/content/IntentFilter;
    .end local v9           #i:I
    .end local v11           #viewIndex:I
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected abstract tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
.end method

.method public toggleNotificationPanel()V
    .locals 0

    .prologue
    .line 1462
    return-void
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 597
    const/16 v0, 0x3fc

    .line 598
    .local v0, msg:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 599
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 600
    return-void
.end method

.method protected toggleRecentsActivity()V
    .locals 47

    .prologue
    .line 680
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v15

    .line 682
    .local v15, firstTask:Lcom/android/systemui/recent/TaskDescription;
    new-instance v18, Landroid/content/Intent;

    const-string v43, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    .local v18, intent:Landroid/content/Intent;
    const-string v43, "com.android.systemui"

    const-string v44, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const/high16 v43, 0x1080

    move-object/from16 v0, v18

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 688
    if-nez v15, :cond_1

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    const v44, 0x7f05000d

    const v45, 0x7f05000e

    invoke-static/range {v43 .. v45}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v21

    .line 693
    .local v21, opts:Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v44

    new-instance v45, Landroid/os/UserHandle;

    const/16 v46, -0x2

    invoke-direct/range {v45 .. v46}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 853
    .end local v15           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #opts:Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 697
    .restart local v15       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    new-instance v44, Landroid/os/UserHandle;

    const/16 v45, -0x2

    invoke-direct/range {v44 .. v45}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 850
    .end local v15           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v18           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v13

    .line 851
    .local v13, e:Landroid/content/ActivityNotFoundException;
    const-string v43, "StatusBar"

    const-string v44, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 702
    .end local v13           #e:Landroid/content/ActivityNotFoundException;
    .restart local v15       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v18       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-virtual {v15}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 703
    .local v14, first:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 705
    .local v28, res:Landroid/content/res/Resources;
    const v43, 0x7f0e0003

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v39, v0

    .line 707
    .local v39, thumbWidth:F
    const v43, 0x7f0e0004

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v36, v0

    .line 709
    .local v36, thumbHeight:F
    if-nez v14, :cond_2

    .line 710
    new-instance v43, Ljava/lang/RuntimeException;

    const-string v44, "Recents thumbnail is null"

    invoke-direct/range {v43 .. v44}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 712
    :cond_2
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v43, v39

    if-nez v43, :cond_3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v43, v36

    if-eqz v43, :cond_4

    .line 713
    :cond_3
    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 715
    if-nez v14, :cond_4

    .line 716
    new-instance v43, Ljava/lang/RuntimeException;

    const-string v44, "Recents thumbnail is null"

    invoke-direct/range {v43 .. v44}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 721
    :cond_4
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 722
    .local v12, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 726
    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 731
    .local v9, config:Landroid/content/res/Configuration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_6

    const/16 v31, 0x1

    .line 732
    .local v31, showRecentApplicationShortCut:Z
    :goto_1
    if-eqz v31, :cond_5

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 734
    .local v23, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v43

    const-string v44, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual/range {v43 .. v44}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 735
    .local v29, shortcutAppList:Ljava/lang/String;
    const-string v43, ","

    invoke-static/range {v43 .. v43}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 736
    .local v5, PATTERN_COMMA:Ljava/util/regex/Pattern;
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v30

    .line 737
    .local v30, shortcutComponentNames:[Ljava/lang/String;
    const/4 v4, 0x4

    .line 739
    .local v4, MAX_NUM_SHORTCUT_BUTTONS:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v17

    move/from16 v1, v43

    if-ge v0, v1, :cond_5

    const/16 v43, 0x4

    move/from16 v0, v17

    move/from16 v1, v43

    if-ge v0, v1, :cond_5

    .line 740
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 741
    .local v33, tempIntent:Landroid/content/Intent;
    aget-object v43, v30, v17

    invoke-static/range {v43 .. v43}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 742
    const/16 v43, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    .line 743
    .local v24, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v24, :cond_7

    .line 745
    const/16 v31, 0x1

    .line 754
    .end local v4           #MAX_NUM_SHORTCUT_BUTTONS:I
    .end local v5           #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .end local v17           #i:I
    .end local v23           #packageManager:Landroid/content/pm/PackageManager;
    .end local v24           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v29           #shortcutAppList:Ljava/lang/String;
    .end local v30           #shortcutComponentNames:[Ljava/lang/String;
    .end local v33           #tempIntent:Landroid/content/Intent;
    :cond_5
    iget v0, v9, Landroid/content/res/Configuration;->orientation:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_9

    .line 755
    const v43, 0x7f0e000e

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v6, v0

    .line 757
    .local v6, appLabelLeftMargin:F
    const v43, 0x7f0e000d

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v7, v0

    .line 759
    .local v7, appLabelWidth:F
    const v43, 0x7f0e000b

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v37, v0

    .line 761
    .local v37, thumbLeftMargin:F
    const v43, 0x7f0e0005

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v35, v0

    .line 764
    .local v35, thumbBgPadding:F
    add-float v43, v6, v7

    add-float v43, v43, v37

    add-float v43, v43, v39

    const/high16 v44, 0x4000

    mul-float v44, v44, v35

    add-float v40, v43, v44

    .line 771
    .local v40, width:F
    const/4 v8, 0x0

    .line 774
    .local v8, buttonMargin:F
    if-eqz v31, :cond_8

    .line 775
    const v43, 0x7f0e005b

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v8, v0

    .line 780
    :goto_3
    const v43, 0x7f0e005c

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    add-float v8, v8, v43

    .line 782
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v43, v43, v40

    const/high16 v44, 0x4000

    div-float v43, v43, v44

    add-float v43, v43, v6

    add-float v43, v43, v7

    add-float v43, v43, v35

    add-float v43, v43, v37

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v41, v0

    .line 784
    .local v41, x:I
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v43, v0

    const v44, 0x7f0e0004

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    sub-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v43, v43, v35

    sub-float v43, v43, v8

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v42, v0

    .line 835
    .end local v6           #appLabelLeftMargin:F
    .end local v7           #appLabelWidth:F
    .end local v37           #thumbLeftMargin:F
    .end local v40           #width:F
    .local v42, y:I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v43

    new-instance v44, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    move-object/from16 v0, v43

    move/from16 v1, v41

    move/from16 v2, v42

    move-object/from16 v3, v44

    invoke-static {v0, v14, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v21

    .line 845
    .restart local v21       #opts:Landroid/app/ActivityOptions;
    const-string v43, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v44, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v43, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v44

    new-instance v45, Landroid/os/UserHandle;

    const/16 v46, -0x2

    invoke-direct/range {v45 .. v46}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 731
    .end local v8           #buttonMargin:F
    .end local v21           #opts:Landroid/app/ActivityOptions;
    .end local v31           #showRecentApplicationShortCut:Z
    .end local v35           #thumbBgPadding:F
    .end local v41           #x:I
    .end local v42           #y:I
    :cond_6
    const/16 v31, 0x0

    goto/16 :goto_1

    .line 748
    .restart local v4       #MAX_NUM_SHORTCUT_BUTTONS:I
    .restart local v5       #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .restart local v17       #i:I
    .restart local v23       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v24       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v29       #shortcutAppList:Ljava/lang/String;
    .restart local v30       #shortcutComponentNames:[Ljava/lang/String;
    .restart local v31       #showRecentApplicationShortCut:Z
    .restart local v33       #tempIntent:Landroid/content/Intent;
    :cond_7
    const/16 v31, 0x0

    .line 739
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 777
    .end local v4           #MAX_NUM_SHORTCUT_BUTTONS:I
    .end local v5           #PATTERN_COMMA:Ljava/util/regex/Pattern;
    .end local v17           #i:I
    .end local v23           #packageManager:Landroid/content/pm/PackageManager;
    .end local v24           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v29           #shortcutAppList:Ljava/lang/String;
    .end local v30           #shortcutComponentNames:[Ljava/lang/String;
    .end local v33           #tempIntent:Landroid/content/Intent;
    .restart local v6       #appLabelLeftMargin:F
    .restart local v7       #appLabelWidth:F
    .restart local v8       #buttonMargin:F
    .restart local v35       #thumbBgPadding:F
    .restart local v37       #thumbLeftMargin:F
    .restart local v40       #width:F
    :cond_8
    const v43, 0x7f0e0058

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v8, v0

    goto/16 :goto_3

    .line 787
    .end local v6           #appLabelLeftMargin:F
    .end local v7           #appLabelWidth:F
    .end local v8           #buttonMargin:F
    .end local v35           #thumbBgPadding:F
    .end local v37           #thumbLeftMargin:F
    .end local v40           #width:F
    :cond_9
    const v43, 0x7f0e0064

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v38, v0

    .line 789
    .local v38, thumbTopMargin:F
    const v43, 0x7f0e0005

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v35, v0

    .line 791
    .restart local v35       #thumbBgPadding:F
    const v43, 0x7f0e000c

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v34, v0

    .line 793
    .local v34, textPadding:F
    const v43, 0x7f0e0006

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v20, v0

    .line 795
    .local v20, labelTextSize:F
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 796
    .local v22, p:Landroid/graphics/Paint;
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 797
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v43, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v44, v0

    sub-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v19, v0

    .line 799
    .local v19, labelTextHeight:F
    const v43, 0x7f0e0007

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v11, v0

    .line 801
    .local v11, descriptionTextSize:F
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 802
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v43

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v43, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v44, v0

    sub-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v10, v0

    .line 805
    .local v10, descriptionTextHeight:F
    const v43, 0x105000c

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v32, v0

    .line 807
    .local v32, statusBarHeight:F
    const/16 v26, 0x0

    .line 809
    .local v26, recentsItemTopPadding:F
    add-float v43, v38, v36

    const/high16 v44, 0x4000

    mul-float v44, v44, v35

    add-float v43, v43, v44

    add-float v43, v43, v34

    add-float v43, v43, v19

    add-float v43, v43, v26

    add-float v43, v43, v34

    add-float v16, v43, v10

    .line 813
    .local v16, height:F
    const v43, 0x7f0e000f

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v25, v0

    .line 815
    .local v25, recentsItemRightPadding:F
    const v43, 0x7f0e000a

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v27, v0

    .line 819
    .local v27, recentsScrollViewRightPadding:F
    const/4 v8, 0x0

    .line 822
    .restart local v8       #buttonMargin:F
    if-eqz v31, :cond_a

    .line 823
    const v43, 0x7f0e005b

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v43

    move/from16 v0, v43

    int-to-float v8, v0

    .line 828
    :goto_5
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v43, v0

    const v44, 0x7f0e0003

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v44

    sub-int v43, v43, v44

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v43, v43, v35

    sub-float v43, v43, v25

    sub-float v43, v43, v27

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v41, v0

    .line 831
    .restart local v41       #x:I
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v43, v43, v32

    sub-float v43, v43, v16

    sub-float v43, v43, v8

    const/high16 v44, 0x4000

    div-float v43, v43, v44

    add-float v43, v43, v38

    add-float v43, v43, v26

    add-float v43, v43, v35

    add-float v43, v43, v32

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v42, v0

    .restart local v42       #y:I
    goto/16 :goto_4

    .line 825
    .end local v41           #x:I
    .end local v42           #y:I
    :cond_a
    const v43, 0x7f0e0058

    move-object/from16 v0, v28

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v43

    move/from16 v0, v43

    int-to-float v8, v0

    goto :goto_5
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method protected updateExpansionStates()V
    .locals 4

    .prologue
    .line 1259
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1260
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1261
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1262
    .local v1, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1263
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 1265
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1260
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1267
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1269
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    goto :goto_1

    .line 1278
    .end local v1           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 28
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v22

    .line 1296
    .local v22, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v22, :cond_0

    .line 1297
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotification for unknown key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :goto_0
    return-void

    .line 1301
    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v23, v0

    .line 1304
    .local v23, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v21, v0

    .line 1305
    .local v21, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v13, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1306
    .local v13, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v20, v0

    .line 1307
    .local v20, oldBigContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v10, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1326
    .local v10, bigContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_7

    const/4 v14, 0x1

    .line 1332
    .local v14, contentsUnchanged:Z
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_8

    :cond_2
    const/4 v11, 0x1

    .line 1339
    .local v11, bigContentsUnchanged:Z
    :goto_2
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    .line 1340
    .local v25, rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->score:I

    if-ne v4, v5, :cond_9

    const/16 v24, 0x1

    .line 1344
    .local v24, orderUnchanged:Z
    :goto_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v26, 0x1

    .line 1347
    .local v26, updateTicker:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isTopNotification(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v17

    .line 1348
    .local v17, isTopAnyway:Z
    if-eqz v14, :cond_d

    if-eqz v11, :cond_d

    if-nez v24, :cond_3

    if-eqz v17, :cond_d

    .line 1350
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v13, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1354
    if-eqz v10, :cond_4

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLargeView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v10, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 1358
    :cond_4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1359
    .local v12, contentIntent:Landroid/app/PendingIntent;
    if-eqz v12, :cond_b

    .line 1360
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v18

    .line 1362
    .local v18, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    .end local v18           #listener:Landroid/view/View$OnClickListener;
    :goto_5
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1372
    .local v3, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t update icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1378
    .end local v3           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v12           #contentIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v15

    .line 1380
    .local v15, e:Ljava/lang/RuntimeException;
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1382
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1401
    .end local v15           #e:Ljava/lang/RuntimeException;
    :cond_5
    :goto_6
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    .line 1404
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->notificationIsForCurrentUser(Lcom/android/internal/statusbar/StatusBarNotification;)Z

    move-result v16

    .line 1408
    .local v16, isForCurrentUser:Z
    if-eqz v26, :cond_6

    if-eqz v16, :cond_6

    .line 1412
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 1416
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 1417
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_0

    .line 1326
    .end local v11           #bigContentsUnchanged:Z
    .end local v14           #contentsUnchanged:Z
    .end local v16           #isForCurrentUser:Z
    .end local v17           #isTopAnyway:Z
    .end local v24           #orderUnchanged:Z
    .end local v25           #rowParent:Landroid/view/ViewGroup;
    .end local v26           #updateTicker:Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1332
    .restart local v14       #contentsUnchanged:Z
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1340
    .restart local v11       #bigContentsUnchanged:Z
    .restart local v25       #rowParent:Landroid/view/ViewGroup;
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1344
    .restart local v24       #orderUnchanged:Z
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 1364
    .restart local v12       #contentIntent:Landroid/app/PendingIntent;
    .restart local v17       #isTopAnyway:Z
    .restart local v26       #updateTicker:Z
    :cond_b
    :try_start_1
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 1376
    .restart local v3       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpansionStates()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 1389
    .end local v3           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v12           #contentIntent:Landroid/app/PendingIntent;
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/NotificationData$Entry;->userExpanded()Z

    move-result v27

    .line 1390
    .local v27, wasExpanded:Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1391
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1392
    if-eqz v27, :cond_5

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v19

    .line 1394
    .local v19, newEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->expandView(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    .line 1395
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setUserExpanded(Z)Z

    goto :goto_6
.end method

.method protected abstract updateNotificationIcons()V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 5
    .parameter "row"
    .parameter "n"

    .prologue
    .line 497
    const v4, 0x7f090084

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 498
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 500
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 501
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 502
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 519
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 520
    return-object v3

    .line 517
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSearchPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, visible:Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v3, :cond_0

    .line 641
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v2

    .line 642
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 646
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 647
    .local v1, tmpRoot:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04002c

    invoke-virtual {v3, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SearchPanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 649
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v5, 0x401

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 653
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 655
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 657
    if-eqz v2, :cond_1

    .line 658
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 660
    :cond_1
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .parameter "newUserId"

    .prologue
    .line 483
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPanelSlightlyVisible:Z

    .line 1147
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 954
    return-void
.end method
