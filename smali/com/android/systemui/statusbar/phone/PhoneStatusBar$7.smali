.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1055
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showSearchPanel()V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1059
    return-void
.end method
