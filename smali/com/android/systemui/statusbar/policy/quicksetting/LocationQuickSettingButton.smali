.class public Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "LocationQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationQuickSettingButton"


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mGpsActivated:Z

.field private mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrefChecked:Z

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 111
    const/4 v2, 0x0

    const v3, 0x7f0c011f

    const v4, 0x7f020193

    const v5, 0x7f020192

    const v6, 0x7f020191

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    return-void
.end method

.method private setGpsMode(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 302
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 304
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method private showConfirmPopup(Z)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, -0x100

    .line 213
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 215
    .local v1, mGpsAlertLayoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040041

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 218
    .local v2, mGpsAlertView:Landroid/view/View;
    const v9, 0x7f0900f3

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 221
    .local v3, mGpsCheckBox:Landroid/widget/CheckBox;
    const v9, 0x7f0900ef

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 222
    .local v7, mVzwText:Landroid/widget/TextView;
    const v9, 0x7f0900f0

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 223
    .local v6, mUsccTitle:Landroid/widget/TextView;
    const v9, 0x7f0900f1

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 224
    .local v4, mUsccBody:Landroid/widget/TextView;
    const v9, 0x7f0900f2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 226
    .local v5, mUsccBottom:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIsPrefChecked:Z

    .line 228
    new-instance v9, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v9, :cond_0

    .line 239
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 247
    .local v8, value:Z
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v10, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_1

    const v9, 0x7f0c0191

    :goto_0
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0c0185

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;

    invoke-direct {v11, p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;Z)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x104

    new-instance v11, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 271
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 279
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v9, :cond_2

    .line 280
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    const/high16 v9, 0x4160

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->statusBarCollapse()V

    .line 291
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 292
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 293
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 297
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 298
    return-void

    .line 247
    .end local v0           #kgm:Landroid/app/KeyguardManager;
    :cond_1
    const v9, 0x7f0c0183

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 295
    .restart local v0       #kgm:Landroid/app/KeyguardManager;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    goto :goto_2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton$GpsObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setActivateStatus(I)V

    .line 135
    const-string v1, "STATUSBAR-LocationQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mGpsActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Processing..."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mGpsActivated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Location state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v1

    .line 161
    .local v1, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v1, :cond_3

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    const-string v3, "onClick(): Location provider is blocked"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    if-eqz v2, :cond_5

    .line 184
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "gps_alert_pref"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 185
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setActivateStatus(I)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->showConfirmPopup(Z)V

    goto :goto_0

    .line 188
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->setGpsMode(Z)V

    goto :goto_0

    .line 192
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->mGpsActivated:Z

    if-eq p1, v2, :cond_0

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    const-string v2, "STATUSBAR-LocationQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/LocationQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method
