.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 3654
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 3655
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3656
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 3660
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3664
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrightnessEnableObserver.onChange() - DB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BrightnessEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3667
    return-void

    .line 3662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
