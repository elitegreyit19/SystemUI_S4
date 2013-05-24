.class Lcom/android/systemui/recent/RecentsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string v0, "RecentsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$100(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$200(Lcom/android/systemui/recent/RecentsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    const v1, 0x7f05000f

    const v2, 0x7f050010

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsActivity;->overridePendingTransition(II)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #setter for: Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z
    invoke-static {v0, v3}, Lcom/android/systemui/recent/RecentsActivity;->access$202(Lcom/android/systemui/recent/RecentsActivity;Z)Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string v0, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$1;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onWindowAnimationStart()V

    goto :goto_0
.end method
