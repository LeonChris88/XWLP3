.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$1;,
        Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;,
        Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;,
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;,
        Lcom/android/mms/ui/MessageListView$TransDelAnim;,
        Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
    }
.end annotation


# instance fields
.field private bLongPress:Z

.field protected mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

.field public mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field protected mIsAvailableUp:Z

.field protected mIsDeleteMsgAnimating:Z

.field private mKeyIsLongPressed:Z

.field protected mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private showContextPopup()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->showContextMenu()Z

    goto :goto_0
.end method


# virtual methods
.method protected initDelAnimListView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    new-instance v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    invoke-direct {p0}, Lcom/android/mms/ui/MessageListView;->showContextPopup()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x17

    if-eq p1, v2, :cond_1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    if-nez v2, :cond_3

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/MessageListItem;->setListView(Lcom/android/mms/ui/MessageListView;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    :cond_3
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->userRelease()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->userCancelAnimationEffectForDeleteItems()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    return-void
.end method

.method public startDeleteMsgAnimation([I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->readyDeleteMsgAnimation([I)V

    :cond_0
    return-void
.end method
