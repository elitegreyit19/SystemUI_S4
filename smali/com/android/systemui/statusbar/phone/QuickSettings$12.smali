.class Lcom/android/systemui/statusbar/phone/QuickSettings$12;
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
    .line 432
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$12;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 9
    .parameter "view"
    .parameter "state"

    .prologue
    .line 435
    move-object v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 436
    .local v2, rssiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;
    const v4, 0x7f090038

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 437
    .local v1, iv:Landroid/widget/ImageView;
    const v4, 0x7f090039

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 438
    .local v0, iov:Landroid/widget/ImageView;
    const v4, 0x7f09003a

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 439
    .local v3, tv:Landroid/widget/TextView;
    iget v4, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalIconId:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    iget v4, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataTypeIconId:I

    if-lez v4, :cond_0

    .line 442
    iget v4, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataTypeIconId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    :goto_0
    iget-object v4, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$12;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00e6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalContentDescription:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataContentDescription:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 451
    return-void

    .line 444
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
