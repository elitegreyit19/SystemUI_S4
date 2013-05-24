.class Lcom/android/systemui/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

.field final synthetic val$moreRequired:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 107
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v2, :cond_0

    .line 108
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->val$moreRequired:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui/statusbar/phone/IconMerger;

    #getter for: Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 114
    goto :goto_1
.end method
