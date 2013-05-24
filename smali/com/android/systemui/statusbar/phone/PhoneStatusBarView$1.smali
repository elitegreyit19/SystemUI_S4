.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "coverOpen"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v7, v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 127
    const-string v2, "PhoneStatusBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear cover opened : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBlackBGView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIndent1:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 140
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 141
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V

    const-wide/16 v3, 0xaa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
