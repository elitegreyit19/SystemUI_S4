.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkOverLimitActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 1
    .parameter "template"

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    const v0, 0x7f0c00ee

    :goto_0
    return v0

    .line 103
    :pswitch_0
    const v0, 0x7f0c00eb

    goto :goto_0

    .line 105
    :pswitch_1
    const v0, 0x7f0c00ec

    goto :goto_0

    .line 107
    :pswitch_2
    const v0, 0x7f0c00ed

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 4
    .parameter "template"

    .prologue
    .line 91
    const-string v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    .line 94
    .local v1, policyService:Landroid/net/INetworkPolicyManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NetworkOverLimitActivity"

    const-string v3, "problem snoozing network policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 61
    .local v2, template:Landroid/net/NetworkTemplate;
    const/4 v3, 0x0

    .line 62
    .local v3, theme:I
    invoke-direct {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const/4 v3, 0x5

    .line 65
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 68
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    const v4, 0x7f0c00ef

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 71
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const v4, 0x7f0c00f0

    new-instance v5, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 80
    .local v1, dialog:Landroid/app/Dialog;
    new-instance v4, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 87
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 88
    return-void
.end method
