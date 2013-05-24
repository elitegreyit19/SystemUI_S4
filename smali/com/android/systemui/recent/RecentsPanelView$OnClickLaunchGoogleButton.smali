.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchGoogleButton"
.end annotation


# instance fields
.field final CLASS_NAME:Ljava/lang/String;

.field final PACKAGE_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .parameter

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    const-string v0, "com.sec.android.app.controlpanel"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->PACKAGE_NAME:Ljava/lang/String;

    .line 1155
    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1160
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1161
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1163
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 1165
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1166
    const v2, 0x10004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1168
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
