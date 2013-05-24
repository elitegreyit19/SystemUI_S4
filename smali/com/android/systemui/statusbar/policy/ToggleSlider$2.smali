.class Lcom/android/systemui/statusbar/policy/ToggleSlider$2;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x42

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 167
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_0

    .line 172
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
