.class public Lcom/android/systemui/statusbar/policy/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;
    }
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final TAG:Ljava/lang/String; = "DateView"


# instance fields
.field private mAttachedToWindow:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/lang/String;

.field private mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field private mWindowVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$1;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;-><init>(Lcom/android/systemui/statusbar/policy/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/DateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/DateView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 126
    move-object v1, p0

    .line 128
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    .line 135
    :goto_1
    return v2

    .line 131
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 132
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 133
    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 142
    .local v1, update:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    if-eq v1, v2, :cond_0

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mUpdating:Z

    .line 144
    if-eqz v1, :cond_2

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 156
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_1
    return-void

    .line 141
    .end local v1           #update:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .restart local v1       #update:Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method


# virtual methods
.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 74
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    const-string v1, ""

    .line 79
    .local v1, dateformat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 90
    return-void

    .line 84
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, dateFormatSetting:Ljava/lang/String;
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MM-dd-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    .line 195
    return-void

    .line 190
    :cond_2
    const-string v1, "dd-MM-yyyy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mAttachedToWindow:Z

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormatObserver:Lcom/android/systemui/statusbar/policy/DateView$DateFormatObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 99
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 112
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mWindowVisible:Z

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DateView;->setUpdates()V

    .line 106
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateClock()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DateView;->mDateFormat:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
