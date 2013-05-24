.class final Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnKeyLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1182
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismiss()V

    .line 1184
    const/4 v0, 0x1

    .line 1186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
