.class public Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ScreenshotEditResolveActivity.java"


# static fields
.field private static final FLASH_ANNOTATE_CLASS_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate.FlashAnnotateActivity"

.field private static final FLASH_ANNOTATE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate"

.field private static final PAPER_ARTIST_CLASS_NAME:Ljava/lang/String; = "com.dama.paperartist.PaperArtistActivity"

.field private static final PAPER_ARTIST_PACKAGE_NAME:Ljava/lang/String; = "com.dama.paperartist"

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final PSTOUCH_CLASS_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1.AppEntry"

.field private static final PSTOUCH_PACKAGE_NAME:Ljava/lang/String; = "air.com.adobe.pstouch.oem1"

.field private static final SAVED_FILE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final SCREENCAPTURE_NAME:Ljava/lang/String; = ".screenshotEdits"

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x315

.field private static final TAG:Ljava/lang/String; = "ScreenshotEditResolveActivity"

.field private static final mMimeType:Ljava/lang/String; = "image/png"


# instance fields
.field private mEditFile:Ljava/io/File;

.field private mFileUri:Landroid/net/Uri;

.field private mImageDirPath:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    return-void
.end method

.method private addFlashAnnotateIntent(Ljava/util/List;Landroid/content/Intent;)Z
    .locals 13
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, currentResolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v9, 0x0

    .line 247
    const-string v10, "com.sec.spen.flashannotate"

    invoke-direct {p0, v10}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".screenshotEdits"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v10, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 253
    .local v4, fis:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 255
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 256
    .local v1, data:I
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 257
    .local v0, buffer:[B
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v4, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    .line 258
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v0           #buffer:[B
    .end local v1           #data:I
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 263
    .local v2, e:Ljava/io/IOException;
    const-string v10, "ScreenshotEditResolveActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail : file operation error// File in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "File out : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 282
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #outFileName:Ljava/lang/String;
    :cond_0
    :goto_1
    return v9

    .line 260
    .restart local v0       #buffer:[B
    .restart local v1       #data:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #outFileName:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 261
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v3, editIntent:Landroid/content/Intent;
    const/high16 v10, 0x3401

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    const-string v10, "com.sec.spen.flashannotate"

    const-string v11, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v10, "orientation"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getCurrentOrientation()I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v10, "savepath"

    invoke-virtual {p2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 276
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 277
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    const-string v9, "ScreenshotEditResolveActivity"

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 15
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v12, "com.dama.paperartist"

    invoke-direct {p0, v12}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".screenshotEdits"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 128
    .local v7, fis:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 130
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 131
    .local v2, data:I
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 132
    .local v1, buffer:[B
    :goto_0
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    .line 133
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Ljava/io/IOException;
    const-string v12, "ScreenshotEditResolveActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail : file operation error// File in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "File out : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 141
    const/4 v12, 0x0

    .line 167
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #outFileName:Ljava/lang/String;
    :goto_1
    return v12

    .line 135
    .restart local v1       #buffer:[B
    .restart local v2       #data:I
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #outFileName:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 136
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    const-string v12, "ScreenshotEditResolveActivity"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v5, editIntent:Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, editFile:Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 151
    .local v6, fileUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.dama.paperartist"

    const-string v14, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    const-string v12, "android.intent.action.SEND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v12, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    const/high16 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 161
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 162
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    const-string v12, "ScreenshotEditResolveActivity"

    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v12, 0x1

    goto :goto_1

    .line 167
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #editFile:Ljava/io/File;
    .end local v5           #editIntent:Landroid/content/Intent;
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #outFileName:Ljava/lang/String;
    .end local v10           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 15
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-string v12, "com.sec.android.mimage.photoretouching"

    invoke-direct {p0, v12}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".screenshotEdits"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 177
    .local v9, outFileName:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v7, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 178
    .local v7, fis:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 180
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 181
    .local v2, data:I
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 182
    .local v1, buffer:[B
    :goto_0
    const/4 v12, 0x0

    const/16 v13, 0x400

    invoke-virtual {v7, v1, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    .line 183
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 188
    .local v3, e:Ljava/io/IOException;
    const-string v12, "ScreenshotEditResolveActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail : file operation error// File in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "File out : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 191
    const/4 v12, 0x0

    .line 217
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #outFileName:Ljava/lang/String;
    :goto_1
    return v12

    .line 185
    .restart local v1       #buffer:[B
    .restart local v2       #data:I
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #outFileName:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 186
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    const-string v12, "ScreenshotEditResolveActivity"

    invoke-static {v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v5, editIntent:Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v4, editFile:Ljava/io/File;
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 201
    .local v6, fileUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ComponentName;

    const-string v13, "com.sec.android.mimage.photoretouching"

    const-string v14, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 203
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    const-string v12, "android.intent.action.SEND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v12, "image/png"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    const/high16 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string v12, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 211
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 212
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    const-string v12, "ScreenshotEditResolveActivity"

    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const/4 v12, 0x1

    goto :goto_1

    .line 217
    .end local v1           #buffer:[B
    .end local v2           #data:I
    .end local v4           #editFile:Ljava/io/File;
    .end local v5           #editIntent:Landroid/content/Intent;
    .end local v6           #fileUri:Landroid/net/Uri;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #outFileName:Ljava/lang/String;
    .end local v10           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z
    .locals 10
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 222
    const-string v7, "air.com.adobe.pstouch.oem1"

    invoke-direct {p0, v7}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 223
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, editIntent:Landroid/content/Intent;
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, editFile:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 227
    .local v2, fileUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "air.com.adobe.pstouch.oem1"

    const-string v9, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v7, "image/png"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const/high16 v7, 0x1

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 237
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 238
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    const-string v6, "ScreenshotEditResolveActivity"

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v0           #editFile:Ljava/io/File;
    .end local v1           #editIntent:Landroid/content/Intent;
    .end local v2           #fileUri:Landroid/net/Uri;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private getCurrentOrientation()I
    .locals 5

    .prologue
    .line 305
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 306
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 308
    .local v1, display:Landroid/view/Display;
    const/4 v2, 0x1

    .line 309
    .local v2, orientation:I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v0, v4

    .line 311
    .local v0, degree:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-nez v4, :cond_0

    .line 312
    const/4 v2, 0x0

    .line 319
    :goto_0
    return v2

    .line 313
    :cond_0
    const/high16 v4, 0x4040

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 314
    const/16 v2, 0x8

    goto :goto_0

    .line 316
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPackageVaild(Ljava/lang/String;)Z
    .locals 6
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v3, "ScreenshotEditResolveActivity"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 290
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 291
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v2, 0x1

    .line 300
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 295
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ScreenshotEditResolveActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.dama.paperartist is not vaild"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 95
    .local v7, notificationManager:Landroid/app/NotificationManager;
    const/16 v0, 0x315

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 99
    .local v3, title:Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v5, currentResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 102
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const-string v0, "FilePath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mEditFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0178

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 117
    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 118
    return-void

    .line 109
    :cond_0
    const-string v0, "DirPath"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mImageDirPath:Ljava/lang/String;

    .line 111
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPaperArtistIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 113
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPhotoEditorIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    .line 114
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPsTouchIntent(Ljava/util/ArrayList;Landroid/content/Intent;)Z

    goto :goto_0
.end method
