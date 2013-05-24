.class Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$11;
.super Ljava/lang/Object;
.source "WiFiHotspotQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->showAttentionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$11;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton$11;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WiFiHotspotQuickSettingButton;->setActivateStatus(I)V

    .line 509
    return-void
.end method
