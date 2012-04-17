.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeOrderTouchListener"
.end annotation


# instance fields
.field private final PANEL_HEIGHT:I

.field private final PANEL_WIDTH:I

.field private mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field private mLayoutHandler:Landroid/os/Handler;

.field private mOldIndex:I

.field private mPanelLeft:I

.field private mPanelTop:I

.field private mPrevPosX:F

.field private mPrevPosY:F

.field private mPrevStatus:I

.field private mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field private mTrashInAnim:Landroid/view/animation/Animation;

.field private mTrashOutAnim:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mLayoutHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    const v2, 0x7f0d0205

    invoke-virtual {p1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v2, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->setDragViewAnimation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    return-object v0
.end method

.method private cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2100()[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$800()[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeData(I)V
    .locals 12

    const-wide/16 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aput-wide v4, v6, v7

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aput-wide v2, v6, v7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aput-wide v10, v6, v0

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aget-wide v6, v6, v0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x4

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2100()[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setDragViewAnimation()V
    .locals 4

    const-wide/16 v2, 0xfa

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const v1, 0x10a003b

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashInAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const v1, 0x10a003c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashOutAnim:Landroid/view/animation/Animation;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const v1, 0x10a003a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashInAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const v1, 0x10a0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mTrashOutAnim:Landroid/view/animation/Animation;

    goto :goto_0
.end method


# virtual methods
.method public getIndexFromPosition(FF)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasPersonData()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    :cond_1
    const/4 v9, 0x3

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    :goto_1
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    iget v11, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->getIndexFromPosition(FF)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->setPressedItemLayout(Landroid/view/View;I)V

    goto :goto_1

    :pswitch_1
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F

    move-result v10

    sub-float v3, v9, v10

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    sub-float/2addr v9, v1

    float-to-int v5, v9

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    sub-float/2addr v9, v3

    float-to-int v7, v9

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v9, v9, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    sub-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    sub-int/2addr v11, v7

    iget v12, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    sub-int/2addr v12, v5

    iget v13, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    add-int/2addr v12, v13

    iget v13, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    sub-int/2addr v13, v7

    iget v14, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    add-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    :pswitch_2
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F

    move-result v10

    sub-float v4, v9, v10

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    sub-float/2addr v9, v2

    float-to-int v6, v9

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    sub-float/2addr v9, v4

    float-to-int v8, v9

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    sub-int/2addr v9, v6

    iget v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    sub-int/2addr v10, v8

    iget v11, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->getIndexFromPosition(FF)I

    move-result v0

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    if-eqz v0, :cond_3

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    if-eq v0, v9, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->changeData(I)V

    :cond_2
    :goto_2
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    goto/16 :goto_1

    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto :goto_2

    :cond_4
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPressedItemLayout(Landroid/view/View;I)V
    .locals 7

    const v4, 0x40aa8f5c

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->hasPersonData()Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    int-to-float v1, v1

    const v2, 0x409570a4

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mLayoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    goto :goto_0
.end method
