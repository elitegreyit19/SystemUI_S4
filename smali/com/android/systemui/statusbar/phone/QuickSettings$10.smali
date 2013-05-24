.class Lcom/android/systemui/statusbar/phone/QuickSettings$10;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$10;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 7
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 405
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 406
    .local v1, wifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;
    const v2, 0x7f09003f

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    .local v0, tv:Landroid/widget/TextView;
    iget v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 408
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$10;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00e5

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 413
    return-void

    .line 409
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
