.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.super Landroid/widget/LinearLayout;
.source "QuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREENREADER_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final ENABLED_SERVICES_SEPARATOR:C = ':'

.field public static final LINE_RESTRICTION:I = 0xc

.field public static final MIDIUM_DENSITY:I = 0xa0

.field public static final STATUS_DIM:I = 0x3

.field public static final STATUS_OFF:I = 0x2

.field public static final STATUS_OFF2:I = 0x5

.field public static final STATUS_ON:I = 0x1

.field public static final STATUS_ON2:I = 0x4

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-QuickSettingButton"

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mActivateStatus:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtnImage:Landroid/widget/ImageView;

.field private mBtnLED:Landroid/widget/ImageView;

.field private mBtnText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDimIconID:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsProcessing:Z

.field private mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

.field private mOffIconID:I

.field private mOffIconID2:I

.field private mOnIconID:I

.field private mOnIconID2:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mText:Ljava/lang/String;

.field private mTextID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "textId"
    .parameter "onIconId"
    .parameter "offIconId"
    .parameter "dimIconId"
    .parameter "onIconId2"
    .parameter "offIconId2"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 402
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 119
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 124
    const v0, 0x7f04003f

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 125
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    .line 129
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 130
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 131
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 132
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 133
    iput p7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 134
    iput p8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 136
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setGravity(I)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setFocusable(Z)V

    .line 138
    const v0, 0x7f0201ca

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setBackgroundResource(I)V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private checkContentDescription()V
    .locals 5

    .prologue
    .line 375
    const-string v1, ""

    .line 376
    .local v1, str:Ljava/lang/String;
    const/4 v0, -0x1

    .line 377
    .local v0, hasNewLine:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 379
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, str1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 386
    .end local v2           #str1:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public applySsid(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "ssid"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 393
    return-void
.end method

.method protected callActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, mIntent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 296
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected callActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkg"
    .parameter "activity"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v0, mIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    .end local v0           #mIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public checkTextLength()V
    .locals 20

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 321
    .local v9, r:Landroid/content/res/Resources;
    const v14, 0x7f0e004a

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 322
    .local v6, mCellGap:F
    const v14, 0x7f0d0009

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 324
    .local v7, mCurButtonNum:I
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 325
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 328
    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-eqz v14, :cond_2

    sget-boolean v14, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v14, :cond_2

    .line 329
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 333
    .local v3, displayWidth:I
    :goto_0
    int-to-float v14, v3

    add-int/lit8 v15, v7, -0x1

    int-to-float v15, v15

    mul-float/2addr v15, v6

    sub-float/2addr v14, v15

    int-to-float v15, v7

    div-float/2addr v14, v15

    float-to-int v1, v14

    .line 336
    .local v1, buttonWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0046

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/4 v14, 0x2

    if-ge v5, v14, :cond_1

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 341
    .local v10, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 343
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v11, 0x0

    .line 344
    .local v11, textWidth:I
    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 345
    .local v4, enterIndex:I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_3

    .line 346
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v11, v14

    .line 357
    :goto_2
    if-eqz v1, :cond_0

    if-nez v11, :cond_5

    .line 358
    :cond_0
    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RETURN - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v4           #enterIndex:I
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #textWidth:I
    :cond_1
    return-void

    .line 331
    .end local v1           #buttonWidth:I
    .end local v3           #displayWidth:I
    .end local v5           #i:I
    :cond_2
    const v14, 0x7f0e0065

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    .restart local v3       #displayWidth:I
    goto :goto_0

    .line 348
    .restart local v1       #buttonWidth:I
    .restart local v4       #enterIndex:I
    .restart local v5       #i:I
    .restart local v8       #paint:Landroid/graphics/Paint;
    .restart local v10       #str:Ljava/lang/String;
    .restart local v11       #textWidth:I
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v12, v14

    .line 349
    .local v12, width1:I
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-int v13, v14

    .line 350
    .local v13, width2:I
    if-ge v12, v13, :cond_4

    .line 351
    move v11, v13

    goto :goto_2

    .line 353
    :cond_4
    move v11, v12

    goto :goto_2

    .line 362
    .end local v12           #width1:I
    .end local v13           #width2:I
    :cond_5
    if-ge v1, v11, :cond_1

    .line 365
    const-string v14, "STATUSBAR-QuickSettingButton"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reduce text : ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] - buttonWidth:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], textWidth["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v15, 0x0

    const v16, 0x7f0e0046

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4320

    div-float v18, v18, v19

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 339
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method public doNext()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public getActivateStatus()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    return v0
.end method

.method protected isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 270
    .local v0, provisioned:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_1

    .line 271
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    .line 273
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDeviceProvisioned:Z

    return v1
.end method

.method protected isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 414
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, enabledServicesSetting:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 418
    const-string v3, ""

    .line 421
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 422
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 427
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 428
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const/4 v4, 0x1

    .line 432
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public localeChanged()V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 309
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 151
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->init()V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 175
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setEnabled(Z)V

    .line 188
    return-void

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onClick(Z)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkTextLength()V

    .line 315
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->deinit()V

    .line 166
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;->onLongClick()V

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method protected removeEnabledScreenReaderValue()V
    .locals 7

    .prologue
    .line 436
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, enabledServicesSetting:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 445
    .local v1, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 447
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, componentNameString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 450
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 456
    .end local v2           #componentNameString:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.talkback_off"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setActivateStatus(I)V
    .locals 4
    .parameter "activateStatus"

    .prologue
    const v3, 0x7f0201c7

    const v2, 0x7f0201c8

    .line 201
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    .line 203
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->checkContentDescription()V

    .line 210
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mActivateStatus:I

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_1
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "On\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Dim\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 232
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    const-string v1, "Off\n"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mBtnLED:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setIcon(IIIIII)V
    .locals 0
    .parameter "textId"
    .parameter "onIconId"
    .parameter "offIconId"
    .parameter "dimIconId"
    .parameter "onIconId2"
    .parameter "offIconId2"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 106
    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID:I

    .line 107
    iput p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID:I

    .line 108
    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mDimIconID:I

    .line 109
    iput p5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 110
    iput p6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 111
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mListener:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;

    .line 170
    return-void
.end method

.method public setOffIconId2(I)V
    .locals 0
    .parameter "offIcon"

    .prologue
    .line 254
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOffIconID2:I

    .line 255
    return-void
.end method

.method public setOnIconId2(I)V
    .locals 0
    .parameter "onIcon"

    .prologue
    .line 258
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mOnIconID2:I

    .line 259
    return-void
.end method

.method public setTextId(I)V
    .locals 0
    .parameter "textID"

    .prologue
    .line 245
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 246
    return-void
.end method

.method public setTextId(ILjava/lang/String;)V
    .locals 0
    .parameter "textID"
    .parameter "text"

    .prologue
    .line 249
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mTextID:I

    .line 250
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mText:Ljava/lang/String;

    .line 251
    return-void
.end method

.method protected showTalkBackDisablePopup(II)V
    .locals 4
    .parameter "titleRes"
    .parameter "messageRes"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 467
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 483
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 484
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 492
    return-void

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method protected statusBarCollapse()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 265
    :cond_0
    return-void
.end method
