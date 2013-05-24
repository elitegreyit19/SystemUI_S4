.class Lcom/android/systemui/statusbar/phone/PanelView$2;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #getter for: Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$202(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    #setter for: Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z

    .line 110
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "mStopAnimator"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void
.end method
