.class Lcom/android/systemui/statusbar/phone/QuickSettings$19;
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
    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$19;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 9
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    .line 552
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 553
    .local v0, bluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    const v4, 0x7f090033

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 554
    .local v3, tv:Landroid/widget/TextView;
    iget v4, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v3, v8, v4, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 556
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$19;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 557
    .local v2, r:Landroid/content/res/Resources;
    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 571
    .local v1, label:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$19;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c00e9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    return-void
.end method
