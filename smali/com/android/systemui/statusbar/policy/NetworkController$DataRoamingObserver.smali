.class Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .parameter

    .prologue
    .line 4396
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 4397
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4398
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 4401
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 4403
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataRoaming Changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    if-eqz v0, :cond_0

    .line 4405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->updateRomaingNotification()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 4407
    :cond_0
    return-void

    .line 4401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
