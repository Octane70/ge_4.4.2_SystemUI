.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "PhoneStatusBarView.java"


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBasePaddingBottom:I

.field private mBasePaddingLeft:I

.field private mBasePaddingRight:I

.field private mBasePaddingTop:I

.field private mClearCoverMargin:I

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z

.field mStatusBarContents:Landroid/view/ViewGroup;

.field mTicker:Landroid/view/ViewGroup;

.field private mTickerPaddingBottom:I

.field private mTickerPaddingLeft:I

.field private mTickerPaddingRight:I

.field private mTickerPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 52
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    .line 103
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 171
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f080005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    .line 172
    const v4, 0x7f0c003b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 174
    const v4, 0x7f0c003a

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    .line 179
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 180
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0

    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    move v2, v3

    .line 178
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .parameter "pv"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f070050

    if-ne v0, v1, :cond_1

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 210
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    .line 211
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f07003f

    if-ne v0, v1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object v0
.end method

.method public hasFullWidthNotifications()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    return v0
.end method

.method public marqueeStatusBar()V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mClearCoverMargin:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    goto :goto_0
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisibleSoon()V

    .line 288
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 289
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 290
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 197
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 199
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->init()V

    .line 200
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onFinishInflate()V

    .line 86
    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingLeft:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingTop:I

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingRight:I

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBasePaddingBottom:I

    .line 92
    const v1, 0x7f07002d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingLeft:I

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingRight:I

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingTop:I

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTicker:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTickerPaddingBottom:I

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "openPanel"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 299
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 302
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 304
    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 269
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 225
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 227
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 228
    const/4 v1, 0x1

    .line 230
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 311
    .local v0, barConsumedEvent:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 312
    const v4, 0x8caa

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 318
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    :cond_3
    move v1, v3

    .line 312
    goto :goto_0
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 18
    .parameter "panel"
    .parameter "frac"

    .prologue
    .line 328
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 334
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    if-eqz v6, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelExpandedFractionSum:F

    move/from16 p2, v0

    .line 338
    const v6, 0x3f99999a

    mul-float v6, v6, p2

    const v7, 0x3e4ccccd

    sub-float p2, v6, v7

    .line 339
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_3

    .line 340
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    .line 353
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    .line 354
    .local v1, H:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 355
    .local v5, ph:F
    const/high16 v2, 0x3f80

    .line 356
    .local v2, alpha:F
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 357
    int-to-float v6, v1

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    const/4 v2, 0x0

    .line 359
    :goto_1
    mul-float/2addr v2, v2

    .line 361
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_2

    .line 362
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 365
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mPanelExpandedFractionSum:F

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateHeadsUp(ZF)V

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 368
    return-void

    .line 343
    .end local v1           #H:I
    .end local v2           #alpha:F
    .end local v5           #ph:F
    :cond_3
    const-wide/high16 v6, 0x3ff0

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x3ff0

    const-wide v12, 0x400921fa00000000L

    const/high16 v14, 0x3f80

    sub-float v14, v14, p2

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 345
    .local v4, k:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mScrimColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .line 346
    .local v3, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 358
    .end local v3           #color:I
    .end local v4           #k:F
    .restart local v1       #H:I
    .restart local v2       #alpha:F
    .restart local v5       #ph:F
    :cond_4
    int-to-float v6, v1

    sub-float v6, v5, v6

    int-to-float v7, v1

    div-float v2, v6, v7

    goto :goto_1

    .line 365
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 8
    .parameter "touch"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 236
    .local v4, x:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->isLayoutRtl()Z

    move-result v0

    .line 238
    .local v0, isLayoutRtl:Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFullWidthNotifications:Z

    if-eqz v7, :cond_2

    .line 240
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v7

    add-float/2addr v5, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const/4 v5, 0x0

    .line 262
    :goto_1
    return-object v5

    .line 240
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 251
    .local v3, w:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v1, v3, v6

    .line 259
    .local v1, region:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 261
    :cond_3
    if-eqz v0, :cond_6

    cmpg-float v6, v4, v1

    if-gez v6, :cond_5

    .line 262
    .local v2, showSettings:Z
    :cond_4
    :goto_2
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1

    .end local v2           #showSettings:Z
    :cond_5
    move v2, v5

    .line 261
    goto :goto_2

    :cond_6
    sub-float v6, v3, v1

    cmpg-float v6, v6, v4

    if-ltz v6, :cond_4

    move v2, v5

    goto :goto_2

    .line 262
    .restart local v2       #showSettings:Z
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 188
    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mShouldFade:Z

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 281
    return-void

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
