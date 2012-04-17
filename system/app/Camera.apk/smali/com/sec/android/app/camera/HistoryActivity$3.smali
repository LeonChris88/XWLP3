.class Lcom/sec/android/app/camera/HistoryActivity$3;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/HistoryActivity;->createThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/dmc/ux/db/ProcessInfo;

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getStrFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x60

    invoke-static {v1, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/HistoryActivity;->access$202(Lcom/sec/android/app/camera/HistoryActivity;Z)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/HistoryActivity$3;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v3, v3, Lcom/sec/android/app/camera/HistoryActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
