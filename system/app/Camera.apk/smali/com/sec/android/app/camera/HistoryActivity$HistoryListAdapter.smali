.class Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryListAdapter"
.end annotation


# instance fields
.field private mName:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mdate:Landroid/widget/TextView;

.field private micon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/camera/HistoryActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;Lcom/sec/android/app/camera/HistoryActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;-><init>(Lcom/sec/android/app/camera/HistoryActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v1, 0x7f08003c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f080034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mName:Landroid/widget/TextView;

    const v1, 0x7f08003f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v1, 0x7f080040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mdate:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getStrOtherUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mdate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getCompleteTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/HistoryActivity;->access$200(Lcom/sec/android/app/camera/HistoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f02019a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTotalPercent()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f020189

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v1

    sget-object v2, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f020188

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v1

    sget-object v2, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
