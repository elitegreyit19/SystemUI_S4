.class Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;
.super Landroid/database/ContentObserver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KidsModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 234
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_mode_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeActivated:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$KidsModeObserver;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    #setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mKidsModeActivated:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z

    goto :goto_0
.end method
