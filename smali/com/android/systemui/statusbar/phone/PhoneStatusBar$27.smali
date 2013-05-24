.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3159
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3163
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3164
    const/4 v4, 0x0

    .line 3165
    .local v4, flags:I
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3166
    const-string v8, "reason"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3167
    .local v6, reason:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v8, "recentapps"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3168
    or-int/lit8 v4, v4, 0x2

    .line 3171
    .end local v6           #reason:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3251
    .end local v4           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 3173
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3175
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 3176
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3180
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0

    .line 3184
    :cond_3
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3188
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3190
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 3191
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3192
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v9, -0x2710

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3193
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 3195
    :cond_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3197
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3198
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 3201
    sget-boolean v8, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_0

    .line 3204
    :cond_5
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3205
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v9, 0x7f09006a

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 3206
    .local v2, brightnessController:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3207
    const-string v8, "level"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x5

    if-gt v8, v9, :cond_7

    .line 3208
    const-string v8, "status"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3209
    .local v1, battStatus:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_6

    .line 3210
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3211
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3212
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 3215
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3216
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3217
    const-string v8, "STATUSBAR-PhoneStatusBar"

    const-string v9, "LOW_BATTERY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3220
    .end local v1           #battStatus:I
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3221
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebySettings:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3222
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3224
    :cond_8
    const-string v8, "STATUSBAR-PhoneStatusBar"

    const-string v9, "NORMAL_BATTERY"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3227
    .end local v2           #brightnessController:Landroid/view/View;
    :cond_9
    const-string v8, "com.sec.android.enterprisenotificationcenter.ENTERPRISE_MODE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3228
    const-string v8, "PhoneStatusBar"

    const-string v9, "onReceive mStartConferenceReceiver!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3231
    .local v5, knoxintent:Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3232
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 3233
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3234
    .local v3, currentHomePackage:Ljava/lang/String;
    const-string v8, "EnterpriseModeChangeReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentHomePackage="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    const-string v8, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v3, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_a

    .line 3236
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3237
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f0200a4

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3238
    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set security mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3240
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsKnoxStatusBar:Z
    invoke-static {v8, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3242
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsTransparentStatusBar:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3243
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f02020c

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 3248
    :goto_1
    const-string v8, "EnterpriseModeChangeReceiver"

    const-string v9, "set normal mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3245
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v9, 0x7f0201ff

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    goto :goto_1
.end method
