.class Lcom/sec/android/app/camera/CropImage$7$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CropImage$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage$7;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/CropImage$7;->access$900(Lcom/sec/android/app/camera/CropImage$7;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    const v4, 0x7f0900ac

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v3, v3, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage$7;->access$1000(Lcom/sec/android/app/camera/CropImage$7;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CropImageView;->invalidate()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v4, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v3}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v5, v5, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CropImage;->getBlinkRectCnt()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/HighlightView;

    iput-object v3, v4, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/HighlightView;->setFocus(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage$7$1;->this$1:Lcom/sec/android/app/camera/CropImage$7;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-object v3, v3, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->invalidate()V

    :cond_3
    return-void
.end method
