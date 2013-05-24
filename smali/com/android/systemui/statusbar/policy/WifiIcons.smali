.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

.field static final WIFI_SIGNAL_STRENGTH_LGT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 22
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 35
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    .line 48
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 62
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 22
    :array_0
    .array-data 0x4
        0x32t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x32t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x3et 0x1t 0x2t 0x7ft
    .end array-data

    .line 35
    :array_2
    .array-data 0x4
        0x33t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3ft 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x33t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3ft 0x1t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_4
    .array-data 0x4
        0x60t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x60t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x67t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
    .end array-data

    .line 62
    :array_6
    .array-data 0x4
        0x2dt 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x2ft 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x2dt 0x1t 0x2t 0x7ft
        0x2et 0x1t 0x2t 0x7ft
        0x2ft 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
