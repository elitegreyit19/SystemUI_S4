.class Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;
.super Ljava/lang/Object;
.source "AnimatedBrightnessIconView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuintEaseOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;->this$0:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView$QuintEaseOut;-><init>(Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    const/high16 v1, 0x3f80

    .line 92
    div-float v0, p1, v1

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method
