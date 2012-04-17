.class public Lcom/android/mms/model/LayoutModel;
.super Lcom/android/mms/model/Model;
.source "LayoutModel.java"


# instance fields
.field private mImageRegion:Lcom/android/mms/model/RegionModel;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

.field private mLayoutType:I

.field private mNonStdRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Lcom/android/mms/model/RegionModel;

.field private mTextRegion:Lcom/android/mms/model/RegionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/RegionModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/RegionModel;

    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v5, "Text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v5}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ge v4, v1, :cond_3

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    return-void
.end method

.method private createDefaultImageRegion()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-void
.end method

.method private createDefaultRootLayout()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    return-void
.end method

.method private createDefaultTextRegion()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-void
.end method

.method private validateLayouts()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    :cond_2
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    :cond_1
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-eq v0, p1, :cond_2

    packed-switch p1, :pswitch_data_0

    const-string v0, "Mms/slideshow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layout type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;
    .locals 3

    const-string v2, "Image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "Text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRegions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_2
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    :cond_2
    return-void
.end method
