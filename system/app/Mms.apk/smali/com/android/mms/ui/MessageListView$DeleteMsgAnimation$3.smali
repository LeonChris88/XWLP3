.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startAlphaDelAnim([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 25

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    if-gt v2, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearAnimation()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v8

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v7, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v24

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v1

    if-gt v2, v1, :cond_f

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v1, v1, v16

    if-ne v2, v1, :cond_4

    const/4 v13, 0x1

    :cond_2
    if-eqz v13, :cond_5

    const/4 v15, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v17

    if-lt v0, v2, :cond_6

    if-ge v2, v7, :cond_8

    :cond_6
    const/4 v14, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v18

    const/4 v9, 0x0

    const/16 v20, 0x0

    if-ge v2, v7, :cond_a

    if-eqz v18, :cond_7

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v3

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v11, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v11

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    move/from16 v0, v24

    if-gt v10, v0, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :cond_7
    :goto_5
    add-int/lit8 v17, v17, 0x1

    :cond_8
    :goto_6
    const/4 v15, 0x0

    goto :goto_4

    :cond_9
    move/from16 v10, v24

    goto :goto_5

    :cond_a
    if-eqz v18, :cond_b

    if-eqz v15, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v12, v10, v1

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v3

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v11, v3, v1

    move/from16 v19, v12

    move/from16 v0, v24

    if-gt v10, v0, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v11

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    goto :goto_5

    :cond_c
    move/from16 v10, v24

    goto :goto_7

    :cond_d
    move/from16 v12, v19

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v3

    move-object/from16 v1, v18

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v11, v3, v1

    move/from16 v0, v24

    if-gt v10, v0, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :goto_8
    goto :goto_7

    :cond_e
    move/from16 v10, v24

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v12, v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v21

    int-to-float v3, v0

    int-to-float v4, v11

    move/from16 v0, v22

    int-to-float v5, v0

    int-to-float v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v24

    if-gt v10, v0, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v10, v1

    :goto_9
    goto/16 :goto_6

    :cond_10
    move/from16 v10, v24

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    :cond_12
    :goto_a
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget v3, v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    goto :goto_a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onBeginDeleteMsgAnimation()V

    :cond_0
    return-void
.end method
