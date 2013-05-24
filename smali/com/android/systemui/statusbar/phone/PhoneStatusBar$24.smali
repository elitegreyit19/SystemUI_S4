.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;
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
    .line 3111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 3113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasSettingsPanel:Z

    if-eqz v1, :cond_1

    .line 3115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3117
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3125
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    return-void

    .line 3120
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandSettingsPanel()V

    goto :goto_0

    .line 3122
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0
.end method
