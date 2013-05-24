.class Lcom/android/systemui/PickUpTutorial$3;
.super Ljava/lang/Object;
.source "PickUpTutorial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/PickUpTutorial;->putDownDialog()V
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
    .line 356
    iput-object p1, p0, Lcom/android/systemui/PickUpTutorial$3;->this$0:Lcom/android/systemui/PickUpTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial$3;->this$0:Lcom/android/systemui/PickUpTutorial;

    #getter for: Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpTutorial;->access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/PickUpTutorial$3;->this$0:Lcom/android/systemui/PickUpTutorial;

    #getter for: Lcom/android/systemui/PickUpTutorial;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/PickUpTutorial;->access$800(Lcom/android/systemui/PickUpTutorial;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/PickUpTutorial$3;->this$0:Lcom/android/systemui/PickUpTutorial;

    iget-object v1, v1, Lcom/android/systemui/PickUpTutorial;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    return-void
.end method
