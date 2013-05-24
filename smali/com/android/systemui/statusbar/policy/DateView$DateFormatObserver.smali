.class Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 166
    const-string v1, "DateView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateFormatObserver.onChange() - DATE_FORMAT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/DateView;->access$000(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/DateView;->access$000(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 180
    return-void

    .line 176
    :cond_2
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    #getter for: Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/DateView;->access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
