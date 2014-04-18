.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v1, "PhoneStatusBarView"

    const-string v2, "BroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "coverOpen"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v7, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 111
    const-string v1, "PhoneStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear cover opened : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->setBlackBg(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/16 v2, 0x33

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I

    .line 124
    const-string v1, "PhoneStatusBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear cover closed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClockByClearCover(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->setBlackBg(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    goto :goto_0
.end method
