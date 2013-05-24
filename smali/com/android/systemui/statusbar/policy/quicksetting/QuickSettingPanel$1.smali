.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 305
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 303
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 312
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 313
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #i:I
    :cond_1
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 317
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 319
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 317
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 322
    :catch_3
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 324
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 325
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 326
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 331
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v2           #i:I
    :cond_3
    return-void
.end method
