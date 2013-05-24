.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.super Landroid/widget/FrameLayout;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;
    }
.end annotation


# static fields
.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field isExist:[Z

.field isPhone:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field private mButtonNumLandscape:I

.field private mButtonNumPortrait:I

.field private mCellGap:F

.field mContentAnim:Landroid/animation/AnimatorSet;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurButtonHeight:F

.field private mCurButtonNum:I

.field mDefaultDisplay:Landroid/view/Display;

.field private mDisplayButtonCnt:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mSingleLine:Z

.field mlp:[Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TW_TAG:Ljava/lang/String;

    .line 60
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 61
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 77
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 299
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    .line 96
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 109
    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 237
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move-object v0, p1

    .line 241
    .local v0, active_app_list:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, quickPanelActiveList:[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 245
    .local v2, main_list:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 246
    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quickPanelActiveList.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    return v0
.end method

.method private makeArrayQuickSettingButtonToOneString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 215
    aget-object v2, p1, v0

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeDividerVisible(II)V
    .locals 5
    .parameter "i"
    .parameter "j"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 541
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v3, v3, p1

    const v4, 0x7f0900e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 542
    .local v0, divider:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 543
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    if-eqz v3, :cond_2

    .line 544
    if-nez p2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 544
    goto :goto_0

    .line 546
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v3, p2, v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private refreshView()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 443
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    const/4 v7, 0x0

    .line 450
    .local v7, j:I
    iput v14, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 451
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->removeAllViewsInLayout()V

    .line 454
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "notification_panel_active_app_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 455
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "notification_panel_active_app_list"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, QBtnAttr:[Ljava/lang/String;
    :goto_0
    array-length v9, v0

    iput v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 463
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 464
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Landroid/widget/FrameLayout$LayoutParams;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:[Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v1, v9, [Ljava/lang/Class;

    .line 466
    .local v1, QBtnClass:[Ljava/lang/Class;
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Landroid/view/View;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    .line 467
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v2, v9, [Ljava/lang/reflect/Constructor;

    .line 468
    .local v2, QBtnConstructor:[Ljava/lang/reflect/Constructor;
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Ljava/lang/reflect/Method;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    .line 469
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Ljava/lang/reflect/Method;

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    .line 470
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v9, v9, [Z

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    .line 471
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 474
    const/4 v3, 0x0

    .line 475
    .local v3, correctionWidth:I
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v9, :cond_2

    .line 476
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    .line 482
    :goto_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v6, v9, :cond_3

    .line 484
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "QuickSettingButton"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v1, v6

    .line 486
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_0

    .line 494
    :try_start_1
    aget-object v9, v1, v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    aput-object v9, v2, v6

    .line 495
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v2, v6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    aput-object v9, v10, v6

    .line 496
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 498
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 499
    .local v8, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v9

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 500
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v9, v7, v9

    int-to-float v9, v9

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v3

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 501
    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v9, v7, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 502
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v9, v9, v6

    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 507
    add-int/lit8 v7, v7, 0x1

    .line 509
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v10, v1, v6

    const-string v11, "localeChanged"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v6

    .line 510
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v10, v1, v6

    const-string v11, "checkTextLength"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    aput-object v10, v9, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    .line 482
    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 457
    .end local v0           #QBtnAttr:[Ljava/lang/String;
    .end local v1           #QBtnClass:[Ljava/lang/Class;
    .end local v2           #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .end local v3           #correctionWidth:I
    .end local v6           #i:I
    :cond_1
    const-string v9, ";"

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #QBtnAttr:[Ljava/lang/String;
    goto/16 :goto_0

    .line 478
    .restart local v1       #QBtnClass:[Ljava/lang/Class;
    .restart local v2       #QBtnConstructor:[Ljava/lang/reflect/Constructor;
    .restart local v3       #correctionWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0065

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    sub-int/2addr v9, v10

    div-int/lit8 v3, v9, 0x2

    goto/16 :goto_1

    .line 487
    .restart local v6       #i:I
    :catch_0
    move-exception v5

    .line 488
    .local v5, e1:Ljava/lang/ClassNotFoundException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ClassNotFoundException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aput-boolean v14, v9, v6

    goto/16 :goto_3

    .line 512
    .end local v5           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 513
    .local v4, e:Ljava/lang/NoSuchMethodException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "NoSuchMethodException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 514
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 515
    .local v4, e:Ljava/lang/SecurityException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "SecurityException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 516
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v4

    .line 517
    .local v4, e:Ljava/lang/InstantiationException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "InstantiationException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 518
    .end local v4           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    .line 519
    .local v4, e:Ljava/lang/IllegalAccessException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IllegalAccessException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 520
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 521
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "IllegalArgumentException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 522
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v4

    .line 523
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v9, "STATUSBAR-QuickSettingPanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "InvocationTargetException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 527
    .end local v4           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    return-void
.end method

.method private setViewWidth()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 256
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 259
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v6, :cond_2

    .line 260
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 266
    .local v0, displayWidth:I
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 269
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_3

    move v3, v4

    .line 270
    .local v3, isPortraitDisplay:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 273
    .local v2, isPortraitConfiguration:Z
    :goto_2
    if-eq v3, v2, :cond_0

    .line 274
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PD:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v3, :cond_5

    .line 276
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_0

    .line 277
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 289
    :cond_0
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    if-le v4, v5, :cond_1

    .line 290
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 293
    :cond_1
    int-to-float v4, v0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 295
    .local v1, iconWidth:I
    return v1

    .line 262
    .end local v0           #displayWidth:I
    .end local v1           #iconWidth:I
    .end local v2           #isPortraitConfiguration:Z
    .end local v3           #isPortraitDisplay:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .restart local v0       #displayWidth:I
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 269
    goto/16 :goto_1

    .restart local v3       #isPortraitDisplay:Z
    :cond_4
    move v2, v5

    .line 270
    goto/16 :goto_2

    .line 281
    .restart local v2       #isPortraitConfiguration:Z
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    if-eq v4, v5, :cond_0

    .line 282
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    goto :goto_3
.end method

.method private update()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    .line 117
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 118
    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    .line 119
    return-void
.end method


# virtual methods
.method protected disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_b

    .line 131
    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_0

    .line 132
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 136
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "AllShareCast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "DormantMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    :cond_2
    aget-object v1, p1, v0

    const-string v2, "MultiWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayButtonCnt:I

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 160
    :cond_3
    aget-object v1, p1, v0

    const-string v2, "WiFiHotspot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    :cond_4
    aget-object v1, p1, v0

    const-string v2, "SmartStay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    :cond_5
    aget-object v1, p1, v0

    const-string v2, "SmartScroll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 181
    :cond_6
    aget-object v1, p1, v0

    const-string v2, "SmartPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    :cond_7
    aget-object v1, p1, v0

    const-string v2, "Nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 195
    :cond_8
    aget-object v1, p1, v0

    const-string v2, "SBeam"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 202
    :cond_9
    aget-object v1, p1, v0

    const-string v2, "AirView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 130
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 209
    :cond_b
    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const v9, 0x7f0d0009

    const/4 v6, 0x1

    const/4 v10, -0x2

    .line 336
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, buttonNumResource:I
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    if-nez v7, :cond_1

    .line 341
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 343
    :cond_1
    if-lez v0, :cond_2

    .line 344
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_3

    move v3, v6

    .line 345
    .local v3, isPortraitDisplay:Z
    :goto_0
    if-eqz v3, :cond_4

    .line 346
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_2

    .line 347
    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumPortrait:I

    .line 358
    .end local v3           #isPortraitDisplay:Z
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 359
    .local v1, correctionWidth:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 361
    .local v5, mCurButtonNum:I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v6, :cond_5

    .line 362
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    .line 368
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v6, :cond_6

    .line 369
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 370
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 373
    rem-int v6, v2, v5

    int-to-float v6, v6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v1

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 374
    div-int v6, v2, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 375
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 344
    .end local v1           #correctionWidth:I
    .end local v2           #i:I
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #mCurButtonNum:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 350
    .restart local v3       #isPortraitDisplay:Z
    :cond_4
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 351
    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonNumLandscape:I

    goto :goto_1

    .line 364
    .end local v3           #isPortraitDisplay:Z
    .restart local v1       #correctionWidth:I
    .restart local v5       #mCurButtonNum:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    goto :goto_2

    .line 381
    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 383
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 531
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->refreshView()V

    .line 533
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 537
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 10
    .parameter "singleLine"

    .prologue
    const/4 v9, -0x2

    .line 387
    const-string v5, "STATUSBAR-QuickSettingPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSingleLine:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    if-nez v5, :cond_1

    .line 439
    :cond_0
    return-void

    .line 390
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-eqz v5, :cond_0

    .line 393
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, j:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v4

    .line 400
    .local v4, w:I
    const/4 v0, 0x0

    .line 401
    .local v0, correctionWidth:I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v5, :cond_3

    .line 402
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 408
    :goto_0
    if-eqz p1, :cond_4

    .line 409
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v1, v5, :cond_0

    .line 410
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2

    .line 411
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 412
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 413
    int-to-float v5, v2

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 414
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 415
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 420
    add-int/lit8 v2, v2, 0x1

    .line 409
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 404
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 424
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v1, v5, :cond_0

    .line 425
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    .line 426
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 427
    .restart local v3       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 428
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    rem-int v5, v2, v5

    int-to-float v5, v5

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v5, v0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 429
    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v5, v2, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonHeight:F

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCellGap:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 430
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->makeDividerVisible(II)V

    .line 435
    add-int/lit8 v2, v2, 0x1

    .line 424
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
