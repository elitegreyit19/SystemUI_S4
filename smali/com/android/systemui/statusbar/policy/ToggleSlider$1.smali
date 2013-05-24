.class Lcom/android/systemui/statusbar/policy/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 148
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return v3

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v2, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
