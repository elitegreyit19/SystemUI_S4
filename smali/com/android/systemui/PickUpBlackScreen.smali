.class public Lcom/android/systemui/PickUpBlackScreen;
.super Landroid/app/Activity;
.source "PickUpBlackScreen.java"


# static fields
.field private static final BACK:I = 0x8

.field private static final CHECK_USER_ACTION:I = 0xb

.field private static final DISMISS_POPUP:I = 0xa

.field private static final LCD_OFF:I = 0x4

.field private static final LCD_ON:I = 0x3

.field private static final MESSAGE_SOUND:I = 0x2

.field private static final PICKUP_READY:I = 0x9

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PickUpBlackScreen"

.field private static final VIBRATE_RUN:I = 0x1

.field public static mContext:Landroid/content/Context;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ivt:[B

.field private lockpause:Z

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPhoneDetect:Landroid/widget/FrameLayout;

.field private mPhonePutDown:Landroid/widget/FrameLayout;

.field private mPickupDialog:Landroid/app/AlertDialog;

.field private mPickupEvent:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field private pm:Landroid/os/PowerManager;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mPickupDialog:Landroid/app/AlertDialog;

    .line 66
    iput-boolean v1, p0, Lcom/android/systemui/PickUpBlackScreen;->lockpause:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mPickupEvent:Z

    .line 74
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->ivt:[B

    .line 82
    new-instance v0, Lcom/android/systemui/PickUpBlackScreen$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpBlackScreen$1;-><init>(Lcom/android/systemui/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 100
    new-instance v0, Lcom/android/systemui/PickUpBlackScreen$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/PickUpBlackScreen$2;-><init>(Lcom/android/systemui/PickUpBlackScreen;)V

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-void

    .line 74
    nop

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

.method static synthetic access$000(Lcom/android/systemui/PickUpBlackScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mPickupEvent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/PickUpBlackScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/PickUpBlackScreen;->mPickupEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/PickUpBlackScreen;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/PickUpBlackScreen;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->ivt:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/PickUpBlackScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/PickUpBlackScreen;->sound()V

    return-void
.end method

.method private playTone(Landroid/net/Uri;)V
    .locals 6
    .parameter "soundUri"

    .prologue
    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 272
    .local v2, tNM:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 273
    const/4 v1, -0x1

    .line 274
    .local v1, ringerMode:I
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1           #ringerMode:I
    .end local v2           #tNM:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "STATUSBAR-PickUpBlackScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone() - Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeUserActivity()V
    .locals 5

    .prologue
    .line 298
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "pokeUserActivity()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pm.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPickUpDialog()V
    .locals 5

    .prologue
    .line 228
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "showTryDownDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const v0, 0x1030331

    .line 231
    .local v0, theme:I
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v1, :cond_0

    .line 232
    const v0, 0x1030332

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 257
    return-void
.end method

.method private sound()V
    .locals 3

    .prologue
    .line 260
    const-string v1, "STATUSBAR-PickUpBlackScreen"

    const-string v2, "sound() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/PickUpBlackScreen;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/reactive_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    .local v0, soundUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->playTone(Landroid/net/Uri;)V

    .line 264
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/PickUpBlackScreen;->finish()V

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->setContentView(I)V

    .line 144
    iput-object p0, p0, Lcom/android/systemui/PickUpBlackScreen;->activity:Landroid/app/Activity;

    .line 145
    sput-object p0, Lcom/android/systemui/PickUpBlackScreen;->mContext:Landroid/content/Context;

    .line 147
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->activity:Landroid/app/Activity;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 150
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 155
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;

    .line 162
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/android/systemui/PickUpBlackScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mPhoneDetect:Landroid/widget/FrameLayout;

    .line 164
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 216
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onDestroy() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/PickUpBlackScreen;->lockpause:Z

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/PickUpBlackScreen;->pokeUserActivity()V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->wl:Landroid/os/PowerManager$WakeLock;

    .line 196
    :cond_0
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 198
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onPause() ->  unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/PickUpBlackScreen;->lockpause:Z

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/android/systemui/PickUpBlackScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 174
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onResume() -> registerListenerEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/PickUpBlackScreen;->showPickUpDialog()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/PickUpBlackScreen;->lockpause:Z

    .line 183
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 207
    return-void
.end method
