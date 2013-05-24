.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageTime:J

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationStyle:Landroid/app/Notification$BigPictureStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 21
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 144
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 147
    .local v15, r:Landroid/content/res/Resources;
    const-string v17, "ro.build.type"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "eng"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 148
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 153
    :goto_0
    sget-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "SaveImageInBackgroundTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SaveImageInBackgroundTask\'s SCREENSHOT_NOTIFICATION_ID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 156
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v19, v0

    invoke-direct/range {v18 .. v20}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, imageDate:Ljava/lang/String;
    sget-object v17, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, imageDir:Ljava/lang/String;
    const-string v17, "Screenshot_%s.png"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 160
    const-string v17, "%s/%s/%s"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    const-string v20, "Screenshots"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 163
    sget-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v17, :cond_1

    const-string v17, "SaveImageInBackgroundTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SaveImageInBackgroundTask\'s mImageFilePath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 167
    .local v10, imageWidth:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 168
    .local v9, imageHeight:I
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 170
    .local v6, iconSize:I
    if-ge v10, v9, :cond_3

    move/from16 v16, v10

    .line 171
    .local v16, shortSide:I
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move/from16 v0, v16

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 172
    .local v14, preview:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 173
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 174
    .local v13, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 175
    .local v5, desat:Landroid/graphics/ColorMatrix;
    const/high16 v17, 0x3e80

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 176
    new-instance v17, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 177
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 178
    .local v11, matrix:Landroid/graphics/Matrix;
    sub-int v17, v16, v10

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v16, v9

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 180
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 181
    const v17, 0x40ffffff

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 183
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v14, v6, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 186
    .local v4, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v17, :cond_4

    const/16 v17, 0x1

    :goto_2
    sput-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 187
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 189
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0c008b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v17, :cond_5

    const-string v17, " "

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    const v18, 0x7f0c008c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    const v18, 0x7f0c008d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    const v18, 0x7f0200a6

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 197
    new-instance v17, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 202
    .local v12, n:Landroid/app/Notification;
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 211
    return-void

    .line 150
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v4           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v5           #desat:Landroid/graphics/ColorMatrix;
    .end local v6           #iconSize:I
    .end local v7           #imageDate:Ljava/lang/String;
    .end local v8           #imageDir:Ljava/lang/String;
    .end local v9           #imageHeight:I
    .end local v10           #imageWidth:I
    .end local v11           #matrix:Landroid/graphics/Matrix;
    .end local v12           #n:Landroid/app/Notification;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #preview:Landroid/graphics/Bitmap;
    .end local v16           #shortSide:I
    :cond_2
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .restart local v6       #iconSize:I
    .restart local v7       #imageDate:Ljava/lang/String;
    .restart local v8       #imageDir:Ljava/lang/String;
    .restart local v9       #imageHeight:I
    .restart local v10       #imageWidth:I
    :cond_3
    move/from16 v16, v9

    .line 170
    goto/16 :goto_1

    .line 186
    .restart local v3       #c:Landroid/graphics/Canvas;
    .restart local v4       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v5       #desat:Landroid/graphics/ColorMatrix;
    .restart local v11       #matrix:Landroid/graphics/Matrix;
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v14       #preview:Landroid/graphics/Bitmap;
    .restart local v16       #shortSide:I
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 189
    :cond_5
    const-string v17, ""

    goto/16 :goto_3
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 392
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v2, 0x1

    .line 399
    :cond_0
    :goto_0
    return v2

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 30
    .parameter "params"

    .prologue
    .line 215
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    const/16 v25, 0x0

    .line 329
    :goto_0
    return-object v25

    .line 219
    :cond_0
    const/16 v25, -0x2

    invoke-static/range {v25 .. v25}, Landroid/os/Process;->setThreadPriority(I)V

    .line 221
    const/16 v25, 0x0

    aget-object v25, p1, v25

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 222
    .local v6, context:Landroid/content/Context;
    const/16 v25, 0x0

    aget-object v25, p1, v25

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 223
    .local v12, image:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 224
    .local v17, out:Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 225
    .local v15, imageFile:Ljava/io/File;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 226
    .local v19, r:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.sec.feature.spen_usp"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 229
    .local v11, hasSPenUspFeature:Z
    :try_start_0
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 230
    .end local v15           #imageFile:Ljava/io/File;
    .local v16, imageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 231
    .local v13, imageDir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_1

    .line 232
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_1
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 236
    .end local v17           #out:Ljava/io/OutputStream;
    .local v18, out:Ljava/io/OutputStream;
    const/16 v25, 0x1

    :try_start_2
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 237
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V

    .line 240
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v24, values:Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 242
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v25, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v25, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v25, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v25, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 246
    const-string v25, "date_added"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v25, "date_modified"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v25, "mime_type"

    const-string v26, "image/png"

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v25, "_size"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    sget-object v25, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 252
    .local v22, uri:Landroid/net/Uri;
    const-string v25, "%s/%s/"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const-string v28, "Screenshots"

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 257
    .local v14, imageDirPath:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v25, "android.intent.action.DELETE"

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v8, deleteIntent:Landroid/content/Intent;
    const-string v25, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-class v25, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v25

    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v25, v0

    const v26, 0x7f020156

    const v27, 0x1040594

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/high16 v29, 0x1000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 267
    new-instance v10, Landroid/content/Intent;

    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v10, editIntent:Landroid/content/Intent;
    const-string v25, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v25, "DirPath"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-class v25, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v25

    invoke-virtual {v10, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    const v25, 0x10008000

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v25, v0

    const v26, 0x7f020157

    const v27, 0x10408d8

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/high16 v29, 0x1000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 279
    new-instance v21, Landroid/content/Intent;

    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v21, sharingIntent:Landroid/content/Intent;
    const-string v25, "image/png"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v25, "android.intent.extra.STREAM"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 284
    .local v5, chooserIntent:Landroid/content/Intent;
    const v25, 0x10008000

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v25, v0

    const v26, 0x7f020158

    const v27, 0x10406d8

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/high16 v29, 0x1000

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    invoke-virtual/range {v25 .. v28}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 291
    const/16 v25, 0x0

    aget-object v25, p1, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 292
    const/16 v25, 0x0

    aget-object v25, p1, v25

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 295
    new-instance v7, Landroid/content/Intent;

    const-string v25, "com.android.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v7, copyIntent:Landroid/content/Intent;
    const-string v25, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 301
    .local v23, uriString:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v25, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v4, actionIntent:Landroid/content/Intent;
    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    new-instance v3, Landroid/content/Intent;

    const-string v25, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v3, action:Landroid/content/Intent;
    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    .end local v3           #action:Landroid/content/Intent;
    .end local v4           #actionIntent:Landroid/content/Intent;
    .end local v5           #chooserIntent:Landroid/content/Intent;
    .end local v7           #copyIntent:Landroid/content/Intent;
    .end local v8           #deleteIntent:Landroid/content/Intent;
    .end local v10           #editIntent:Landroid/content/Intent;
    .end local v14           #imageDirPath:Ljava/lang/String;
    .end local v20           #resolver:Landroid/content/ContentResolver;
    .end local v21           #sharingIntent:Landroid/content/Intent;
    .end local v22           #uri:Landroid/net/Uri;
    .end local v23           #uriString:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v18, :cond_6

    .line 322
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v17, v18

    .line 329
    .end local v13           #imageDir:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    const/16 v25, 0x0

    aget-object v25, p1, v25

    goto/16 :goto_0

    .line 308
    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    const-string v25, "SaveImageInBackgroundTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Fail to create capture image file ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v25, 0x0

    aget-object v25, p1, v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 311
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 312
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v17, v18

    .line 318
    .end local v13           #imageDir:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .local v9, e:Ljava/lang/Exception;
    .restart local v17       #out:Ljava/io/OutputStream;
    :goto_3
    const/16 v25, 0x0

    :try_start_5
    aget-object v25, p1, v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 320
    if-eqz v17, :cond_3

    .line 322
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 323
    :catch_1
    move-exception v9

    .line 324
    const-string v25, "SaveImageInBackgroundTask"

    const-string v26, "IOException"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 323
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    .line 324
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v25, "SaveImageInBackgroundTask"

    const-string v26, "IOException"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v17, v18

    .line 325
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 320
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #imageDir:Ljava/io/File;
    :catchall_0
    move-exception v25

    :goto_4
    if-eqz v17, :cond_5

    .line 322
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 325
    :cond_5
    :goto_5
    throw v25

    .line 323
    :catch_3
    move-exception v9

    .line 324
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v26, "SaveImageInBackgroundTask"

    const-string v27, "IOException"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 320
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    :catchall_1
    move-exception v25

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_4

    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v25

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 315
    .end local v13           #imageDir:Ljava/io/File;
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v15           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_3

    .end local v15           #imageFile:Ljava/io/File;
    .end local v17           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v18       #out:Ljava/io/OutputStream;
    :cond_6
    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v17, v18

    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #out:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 12
    .parameter "params"

    .prologue
    const/high16 v11, 0x1000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 334
    sget-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SaveImageInBackgroundTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPostExecute params result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v6, :cond_2

    .line 337
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v6, v7}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 386
    :cond_1
    :goto_0
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 387
    return-void

    .line 340
    :cond_2
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 343
    .local v5, r:Landroid/content/res/Resources;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v3, launchIntent:Landroid/content/Intent;
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v7, "image/png"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v7, 0x7f0c008e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0c008f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v9, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 354
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 355
    .local v4, n:Landroid/app/Notification;
    iget v6, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 356
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v6, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 359
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "edit_after_screen_capture"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 361
    .local v1, directEditIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.mimage.photoretouching"

    const-string v7, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v0, cn:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v7, "image/png"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    :goto_1
    :try_start_0
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 382
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 370
    :cond_3
    const-string v6, "%s/%s/"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const-string v8, "Screenshots"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, imageDirPath:Ljava/lang/String;
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v6, "FilePath"

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v6, "DirPath"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v7, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 377
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
