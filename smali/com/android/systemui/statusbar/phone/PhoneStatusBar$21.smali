.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2918
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 2920
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    monitor-enter v8

    .line 2922
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v2

    .line 2924
    .local v2, numChildren:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 2925
    .local v5, scrollTop:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int v4, v5, v7

    .line 2926
    .local v4, scrollBottom:I
    const/4 v3, 0x0

    .line 2928
    .local v3, plusNotificationArea:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2929
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v3, v7

    .line 2931
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_1

    .line 2932
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    add-int/2addr v7, v9

    add-int/2addr v3, v7

    .line 2934
    :cond_1
    if-eqz v2, :cond_2

    .line 2935
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 2938
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2939
    .local v6, snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2940
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2941
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v3

    if-le v7, v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    add-int/2addr v7, v3

    if-ge v7, v4, :cond_3

    .line 2943
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2939
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2946
    .end local v0           #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2947
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 2948
    monitor-exit v8

    .line 3007
    :goto_1
    return-void

    .line 2950
    :cond_5
    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;

    invoke-direct {v9, p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;Ljava/util/ArrayList;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3006
    monitor-exit v8

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #numChildren:I
    .end local v3           #plusNotificationArea:I
    .end local v4           #scrollBottom:I
    .end local v5           #scrollTop:I
    .end local v6           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
