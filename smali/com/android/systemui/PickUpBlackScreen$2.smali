.class Lcom/android/systemui/PickUpBlackScreen$2;
.super Landroid/os/Handler;
.source "PickUpBlackScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PickUpBlackScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/PickUpBlackScreen;


# direct methods
.method constructor <init>(Lcom/android/systemui/PickUpBlackScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x3

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :pswitch_1
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "mHandler  -   VIBRATE_RUN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$400(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->ivt:[B
    invoke-static {v1}, Lcom/android/systemui/PickUpBlackScreen;->access$300(Lcom/android/systemui/PickUpBlackScreen;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/systemui/PickUpBlackScreen;->access$400(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$100(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "mHandler  -   MESSAGE_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #calls: Lcom/android/systemui/PickUpBlackScreen;->sound()V
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$500(Lcom/android/systemui/PickUpBlackScreen;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$100(Lcom/android/systemui/PickUpBlackScreen;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/PickUpBlackScreen;->mPickupEvent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/PickUpBlackScreen;->access$002(Lcom/android/systemui/PickUpBlackScreen;Z)Z

    goto :goto_0

    .line 118
    :pswitch_4
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "Screen 0n~ "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    invoke-virtual {v0, v3}, Lcom/android/systemui/PickUpBlackScreen;->setResult(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    invoke-virtual {v0}, Lcom/android/systemui/PickUpBlackScreen;->finish()V

    goto :goto_0

    .line 123
    :pswitch_5
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "dismiss popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$200(Lcom/android/systemui/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    #getter for: Lcom/android/systemui/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpBlackScreen;->access$200(Lcom/android/systemui/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 129
    :pswitch_6
    const-string v0, "STATUSBAR-PickUpBlackScreen"

    const-string v1, "CHECK_USER_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    invoke-virtual {v0, v2}, Lcom/android/systemui/PickUpBlackScreen;->setResult(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/PickUpBlackScreen$2;->this$0:Lcom/android/systemui/PickUpBlackScreen;

    invoke-virtual {v0}, Lcom/android/systemui/PickUpBlackScreen;->finish()V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
