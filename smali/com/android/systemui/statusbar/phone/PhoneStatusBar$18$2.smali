.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$2;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;)V
    .locals 0
    .parameter

    .prologue
    .line 2430
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideCling()V

    .line 2434
    return-void
.end method
