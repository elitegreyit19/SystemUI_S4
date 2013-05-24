.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    const-string v0, "PhoneStatusBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear cover closed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 158
    :cond_0
    return-void
.end method
