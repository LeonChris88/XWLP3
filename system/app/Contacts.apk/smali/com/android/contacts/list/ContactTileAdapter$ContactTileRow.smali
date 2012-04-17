.class Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    invoke-static {p1, v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZ)V
    .locals 9

    const v8, 0x7f08001a

    const/4 v7, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    if-gt v3, p2, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/ContactPhotoManager;)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView$Listener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactTileView;->setListener(Lcom/android/contacts/list/ContactTileView$Listener;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileView;->loadFromContact(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;)V

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileView;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt p2, v3, :cond_1

    move v5, v4

    :goto_2
    if-eqz p3, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v4, v4, v5, v3}, Lcom/android/contacts/list/ContactTileView;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    move v5, v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v3

    goto :goto_3

    :pswitch_2
    if-eqz p3, :cond_3

    const/16 v4, 0x8

    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLayoutForTiles(IIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    sub-int v5, p3, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v6, 0x0

    add-int v7, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMeasureForTiles(II)V
    .locals 13

    const/high16 v12, 0x4000

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v8, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v9}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$500(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    mul-int v7, v9, v11

    sub-int v9, v8, v7

    iget-object v11, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v11}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v11

    div-int v5, v9, v11

    iget-object v9, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v9}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v9

    mul-int/2addr v9, v5

    sub-int v9, v8, v9

    sub-int v6, v9, v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int v11, v5, v9

    if-ge v4, v6, :cond_1

    const/4 v9, 0x1

    :goto_2
    add-int v3, v11, v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int v2, v5, v9

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v9, v11}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {p0, v8, v9}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    iget v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;

    move-object v2, v3

    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/list/ContactTileAdapter$ContactEntry;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {v3}, Lcom/android/contacts/list/ContactTileAdapter;->access$200(Lcom/android/contacts/list/ContactTileAdapter;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
