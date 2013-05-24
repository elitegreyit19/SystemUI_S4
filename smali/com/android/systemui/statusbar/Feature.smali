.class public Lcom/android/systemui/statusbar/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ATT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CHN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CHN_OPEN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CMCC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CRI:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CTC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final CU:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DCM:Z = false

#the value of this static final field might be set in the static constructor
.field private static final EUR_OPEN:Z = false

#the value of this static final field might be set in the static constructor
.field private static final J_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KOR:Z = false

#the value of this static final field might be set in the static constructor
.field private static final KTT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LGT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SKT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SPR:Z = false

#the value of this static final field might be set in the static constructor
.field private static final TMO:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USA:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USCC:Z = false

#the value of this static final field might be set in the static constructor
.field private static final U_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final VZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mDataIconForCHN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mDataIconForJPN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mHideNaviBarSearchButton:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mHideWifiInAndOut:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mJumpToAir1depthForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mMobileDataStringForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mPLMNIconDisplay:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mPanelExpandedTickerStop:Z = false

.field public static final mProductName:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final mRoamingIconDisplay:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mRoamingOngoingForVZW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSetDefaultOrientationLandscapeMode:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSetDefaultSSID:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowCarrierWifiIcon:Z = false

.field public static final mShowDataStrength:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowGPSlicensPopup:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowLgtLabelType:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowMenuKeyAlways:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowOperatorLogoIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowRecentGoogleNowButton:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mShowRecentOnlyStringForVZW:Z = false

.field public static final mShowRecentRemoveAllButton:Z = true

#the value of this static final field might be set in the static constructor
.field public static final mShowRoamingToastForLGT:Z = false

.field public static final mShowSimCheckPopup:Z = true

#the value of this static final field might be set in the static constructor
.field public static final mShowWorldClock:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSimIconForCHN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mSoundProfile:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseATTBatteryIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAnimatedBrightnessIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAttNfcIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseAutoBrightnessDetail:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseCHNFontType:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseKorRSSIAlgorithm:Z = false

.field public static final mUseRedBatteryIcon:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseSVoiceDrivingmodeSetting:Z = false

#the value of this static final field might be set in the static constructor
.field public static final mUseServiceStateForAirplane:Z = false

.field public static final mUseStatusBarMarquee:Z = true

.field public static final mUseTouchWizGUI:Z = true

.field public static final mUseVzwBatteryIcon:Z

.field public static final mUseVzwSimIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    .line 42
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    .line 43
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    .line 46
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    .line 47
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    .line 49
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "dcm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    .line 53
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    .line 54
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->EUR_OPEN:Z

    .line 55
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-eqz v0, :cond_d

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    .line 56
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_e

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    .line 57
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN_OPEN:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-eqz v0, :cond_f

    :cond_4
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "ja"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "jf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "SC-04E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_5
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/Feature;->mProductName:Ljava/lang/String;

    const-string v3, "u0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    .line 67
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowMenuKeyAlways:Z

    .line 68
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultOrientationLandscapeMode:Z

    .line 69
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->U_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideNaviBarSearchButton:Z

    .line 70
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    .line 71
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    .line 72
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_11

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    .line 73
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    .line 74
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_12

    :cond_6
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    .line 75
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    .line 79
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v0, :cond_13

    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentGoogleNowButton:Z

    .line 80
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRecentOnlyStringForVZW:Z

    .line 82
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CRI:Z

    if-eqz v0, :cond_14

    :cond_7
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseATTBatteryIcon:Z

    .line 84
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mMobileDataStringForVZW:Z

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    .line 86
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USA:Z

    if-nez v0, :cond_8

    :cond_8
    sput-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    .line 87
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    .line 88
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    .line 89
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseVzwBatteryIcon:Z

    .line 91
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    .line 92
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_15

    :cond_9
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    .line 94
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    .line 95
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    .line 96
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KOR:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPanelExpandedTickerStop:Z

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_16

    :cond_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    .line 99
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    .line 100
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    .line 101
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    .line 102
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowRoamingToastForLGT:Z

    .line 104
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mJumpToAir1depthForVZW:Z

    .line 105
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CTC:Z

    if-nez v0, :cond_17

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseServiceStateForAirplane:Z

    .line 107
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowGPSlicensPopup:Z

    .line 108
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->J_PROJECT:Z

    if-eqz v0, :cond_18

    :goto_d
    sput-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseSVoiceDrivingmodeSetting:Z

    .line 110
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSetDefaultSSID:Z

    return-void

    :cond_b
    move v0, v1

    .line 41
    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 49
    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 55
    goto/16 :goto_2

    :cond_e
    move v0, v1

    .line 56
    goto/16 :goto_3

    :cond_f
    move v0, v1

    .line 57
    goto/16 :goto_4

    :cond_10
    move v0, v1

    .line 58
    goto/16 :goto_5

    :cond_11
    move v0, v1

    .line 72
    goto/16 :goto_6

    :cond_12
    move v0, v1

    .line 74
    goto/16 :goto_7

    :cond_13
    move v0, v1

    .line 79
    goto/16 :goto_8

    :cond_14
    move v0, v1

    .line 82
    goto/16 :goto_9

    :cond_15
    move v0, v1

    .line 92
    goto :goto_a

    :cond_16
    move v0, v1

    .line 98
    goto :goto_b

    :cond_17
    move v0, v1

    .line 105
    goto :goto_c

    :cond_18
    move v2, v1

    .line 108
    goto :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMaxLevelOfSignalStrengthIndicator()I
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x6

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->USCC:Z

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 119
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static final getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->ATT:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "ATT"

    .line 143
    :goto_0
    return-object v0

    .line 126
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->TMO:Z

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "TMO"

    goto :goto_0

    .line 128
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->VZW:Z

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "VZW"

    goto :goto_0

    .line 130
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SPR:Z

    if-eqz v0, :cond_3

    .line 131
    const-string v0, "SPR"

    goto :goto_0

    .line 132
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CMCC:Z

    if-eqz v0, :cond_4

    .line 133
    const-string v0, "CMCC"

    goto :goto_0

    .line 134
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_5

    .line 135
    const-string v0, "LGT"

    goto :goto_0

    .line 136
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->DCM:Z

    if-eqz v0, :cond_6

    .line 137
    const-string v0, "DCM"

    goto :goto_0

    .line 138
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_7

    .line 139
    const-string v0, "SKT"

    goto :goto_0

    .line 140
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CU:Z

    if-eqz v0, :cond_8

    .line 141
    const-string v0, "CU"

    goto :goto_0

    .line 143
    :cond_8
    const-string v0, "OPEN"

    goto :goto_0
.end method

.method public static final getOperatorSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->SKT:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "45005"

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KTT:Z

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "45008"

    goto :goto_0

    .line 152
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->LGT:Z

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "45006"

    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "OPEN"

    goto :goto_0
.end method
