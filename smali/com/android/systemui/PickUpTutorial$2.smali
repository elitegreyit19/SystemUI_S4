.class Lcom/android/systemui/PickUpTutorial$2;
.super Ljava/lang/Object;
.source "PickUpTutorial.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PickUpTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/PickUpTutorial;


# direct methods
.method constructor <init>(Lcom/android/systemui/PickUpTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/systemui/PickUpTutorial$2;->this$0:Lcom/android/systemui/PickUpTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 2
    .parameter "motionEvent"

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial$2;->this$0:Lcom/android/systemui/PickUpTutorial;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/PickUpTutorial;->mReadyToShowPutDownDialog:Z
    invoke-static {v0, v1}, Lcom/android/systemui/PickUpTutorial;->access$902(Lcom/android/systemui/PickUpTutorial;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial$2;->this$0:Lcom/android/systemui/PickUpTutorial;

    #getter for: Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpTutorial;->access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial$2;->this$0:Lcom/android/systemui/PickUpTutorial;

    #getter for: Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpTutorial;->access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "STATUSBAR-PickUpTutorial"

    const-string v1, "mMotionListener - MREvent.FLAT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method
