.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RSSIState"
.end annotation


# instance fields
.field dataContentDescription:Ljava/lang/String;

.field dataTypeIconId:I

.field signalContentDescription:Ljava/lang/String;

.field signalIconId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    return-void
.end method
