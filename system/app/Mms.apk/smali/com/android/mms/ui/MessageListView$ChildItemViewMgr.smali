.class public Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v22

    move/from16 v16, v13

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v19

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v2, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    add-int v5, v14, v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v9, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v12, v2, :cond_3

    aget v2, p1, v12

    if-ne v4, v2, :cond_2

    const/4 v11, 0x1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v21, v21, v2

    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v17, -0x1

    if-ge v13, v2, :cond_0

    move-object/from16 v15, v23

    const/4 v10, 0x0

    add-int/lit8 v2, v17, -0x1

    sub-int v18, v2, v13

    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v4, v0, :cond_0

    add-int v7, v19, v4

    add-int/lit8 v2, v13, 0x1

    add-int v8, v2, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v7, v8, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    new-instance v5, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v9, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move-object v15, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v21, v21, v2

    goto :goto_3
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-le v0, p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method public isAlignLeft(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11

    const/4 v2, 0x0

    :goto_0
    array-length v6, p4

    if-ge v2, v6, :cond_1

    aget v6, p4, v2

    if-ne p3, v6, :cond_0

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v6, p3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    if-nez v4, :cond_3

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getListPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v7, -0x1

    invoke-static {v6, v5, v7, v4}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    :cond_0
    return-void
.end method
