.class Lcom/android/systemui/statusbar/phone/QuickSettings$17;
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
    .line 522
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 6
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 525
    const v2, 0x7f09002f

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    .local v1, tv:Landroid/widget/TextView;
    iget v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 528
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0c00c5

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, airplaneState:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$17;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void

    .line 528
    .end local v0           #airplaneState:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c00c6

    goto :goto_0
.end method
