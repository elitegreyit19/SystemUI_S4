.class public Lcom/android/systemui/PickUpTutorial;
.super Landroid/app/Activity;
.source "PickUpTutorial.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_OFF_STATE:I = 0x5

.field private static final LCD_ON:I = 0x3

.field private static final LCD_ON_STATE:I = 0x6

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpTutorial"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field mAnimation:Landroid/view/animation/Animation;

.field private mBack:Z

.field private mCount:I

.field private mDownDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mLCDisOn:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPaused:Z

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickUpDialog:Landroid/app/AlertDialog;

.field private mPickUpTutorial:Landroid/widget/FrameLayout;

.field private mReadyToShowPutDownDialog:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 73
    iput-object v2, p0, Lcom/android/systemui/PickUpTutorial;->mDownDialog:Landroid/app/AlertDialog;

    .line 74
    iput-object v2, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpDialog:Landroid/app/AlertDialog;

    .line 81
    iput v1, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    .line 89
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->ivt:[B

    .line 142
    new-instance v0, Lcom/android/systemui/PickUpTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpTutorial$1;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/android/systemui/PickUpTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpTutorial$2;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 89
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x0t
        0xf1t
        0xe0t
        0x1t
        0xe2t
        0x0t
        0x64t
        0xfft
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0xb1t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/PickUpTutorial;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->ivt:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/PickUpTutorial;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/PickUpTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/PickUpTutorial;->tryPickUpDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/PickUpTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/PickUpTutorial;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/PickUpTutorial;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/systemui/PickUpTutorial;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/PickUpTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/PickUpTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    return p1
.end method

.method private canNavigationBarMove()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method private putDownDialog()V
    .locals 4

    .prologue
    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 310
    const-string v1, "STATUSBAR-PickUpTutorial"

    const-string v2, "putDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 356
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/PickUpTutorial$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/PickUpTutorial$3;-><init>(Lcom/android/systemui/PickUpTutorial;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 365
    return-void
.end method

.method private tryPickUpDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 369
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v2, p0, Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z

    .line 418
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 420
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhonePutDown GONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 426
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "tryPickUpDialog() mPhoneDetect VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 428
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    sparse-switch p2, :sswitch_data_0

    .line 233
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 219
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    goto :goto_0

    .line 229
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mBack:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/PickUpTutorial;->finish()V

    .line 304
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020081

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 99
    iput-object p0, p0, Lcom/android/systemui/PickUpTutorial;->activity:Landroid/app/Activity;

    .line 100
    sput-object p0, Lcom/android/systemui/PickUpTutorial;->mContext:Landroid/content/Context;

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->setContentView(I)V

    .line 107
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPickUpTutorial:Landroid/widget/FrameLayout;

    .line 116
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mVibrator:Landroid/os/SystemVibrator;

    .line 117
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    .line 118
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "PickUp Tutorial"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mContext:Landroid/content/Context;

    const v1, 0x7f050009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    .line 134
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 135
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/PickUpTutorial;->putDownDialog()V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 293
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 297
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 272
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 274
    invoke-virtual {p0, v4}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    iput-boolean v4, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 282
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, v3}, Lcom/android/systemui/PickUpTutorial;->setMotionSensor(Z)V

    .line 260
    iput v2, p0, Lcom/android/systemui/PickUpTutorial;->mCount:I

    .line 261
    iput-boolean v2, p0, Lcom/android/systemui/PickUpTutorial;->mPaused:Z

    .line 262
    iput-boolean v3, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/PickUpTutorial;->mLCDisOn:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 267
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 289
    return-void
.end method

.method public setMotionSensor(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 239
    const-string v0, "STATUSBAR-PickUpTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMotionSensor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 244
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 245
    if-eqz p1, :cond_1

    .line 246
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget-object v0, Lcom/android/systemui/PickUpTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    goto :goto_0
.end method
