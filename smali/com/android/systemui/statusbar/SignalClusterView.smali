.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SignalClusterView"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SignalClusterView"


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mBtTetherState:Z

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetActivity:Landroid/widget/ImageView;

.field private mEthernetActivityId:I

.field private mEthernetConnected:Z

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetStateId:I

.field private mEthernetVisible:Z

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDataState:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingId:I

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSeparateMobileGroup:Landroid/view/ViewGroup;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 58
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetConnected:Z

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetStateId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    .line 77
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 78
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 96
    return-void
.end method

.method private apply()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 223
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    .line 315
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v4, :cond_3

    .line 226
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 260
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v4, :cond_4

    .line 261
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 270
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 272
    .local v1, roamingAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    .end local v1           #roamingAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 280
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 282
    .local v0, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    .end local v0           #frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_5

    .line 292
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :goto_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v4, :cond_6

    .line 299
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    if-eqz v5, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 234
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 288
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 295
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 301
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 283
    :catch_0
    move-exception v4

    goto :goto_3

    .line 273
    :catch_1
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 107
    const v0, 0x7f090041

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 108
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 112
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 116
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 120
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 125
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 126
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 132
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 137
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 138
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 140
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    .line 141
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 142
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    .line 144
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 145
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 146
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 148
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:Landroid/view/View;

    .line 149
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 152
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSeparateMobileGroup:Landroid/view/ViewGroup;

    .line 153
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoaming:Landroid/widget/ImageView;

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 158
    return-void
.end method

.method public setBtTetherState(Z)V
    .locals 0
    .parameter "btState"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherState:Z

    .line 330
    return-void
.end method

.method public setDataState(I)V
    .locals 0
    .parameter "dataState"

    .prologue
    .line 323
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataState:I

    .line 324
    return-void
.end method

.method public setEthernetIndicators(ZZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "connected"
    .parameter "stateIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    .line 176
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetConnected:Z

    .line 177
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetStateId:I

    .line 178
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    .line 179
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 182
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 201
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 204
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:Z

    .line 189
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:I

    .line 190
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:I

    .line 191
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:I

    .line 192
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 193
    iput-object p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 196
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 101
    return-void
.end method

.method public setRoamingIcon(I)V
    .locals 0
    .parameter "roamingIconId"

    .prologue
    .line 319
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileRoamingId:I

    .line 320
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 164
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 165
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 166
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 169
    return-void
.end method
