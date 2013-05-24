.class public Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-DoNotDisturbQuickSettingButton"


# instance fields
.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 35
    const/4 v2, 0x0

    const v3, 0x7f0c0127

    const v4, 0x7f02019f

    const v5, 0x7f02019e

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 43
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 72
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 60
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    const-string v1, "STATUSBAR-DoNotDisturbQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mDoNotDisturb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 60
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 76
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v3, :cond_1

    .line 77
    const-string v2, "STATUSBAR-DoNotDisturbQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v3, "STATUSBAR-DoNotDisturbQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DND onClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_2

    move v1, v2

    .line 85
    .local v1, newVal:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v1, v3, :cond_0

    .line 87
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 90
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "do_not_disturb"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 84
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #newVal:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 97
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #newVal:Z
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v1, "do_not_disturb"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    .local v0, val:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_0

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 53
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 54
    return-void
.end method
