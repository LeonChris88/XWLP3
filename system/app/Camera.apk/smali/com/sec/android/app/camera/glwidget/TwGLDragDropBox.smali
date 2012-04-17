.class public Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDragDropBox.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
    }
.end annotation


# instance fields
.field private lastDragCoord:[F

.field private mDroppable:Z

.field private mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

.field protected mView:Lcom/sec/android/glview/TwGLView;

.field protected mViewToDrag:Lcom/sec/android/glview/TwGLView;

.field transformedScreenCoordinate:[F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->transformedScreenCoordinate:[F

    return-void
.end method

.method private static final findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;
    .locals 4

    instance-of v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    :goto_0
    return-object p0

    :cond_0
    instance-of v3, p0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLViewGroup;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p1, p0}, Lcom/sec/android/glview/TwGLView;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method protected cancelDrag()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDroppability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return v0
.end method

.method public getView()Lcom/sec/android/glview/TwGLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(FFFF)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v1, v3, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v2, v3, v7

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v3, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v4, v4, v6

    sub-float/2addr v4, v1

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    aget v5, v5, v7

    sub-float/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(FFFF)V

    :cond_3
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->findDragDropBox(Lcom/sec/android/glview/TwGLView;FF)Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getDroppability()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(FF)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onTouchOver(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->cancelDrag()V

    goto :goto_0
.end method

.method public onDragStart(FF)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x3f99999a

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mapPointReverse([FFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mViewToDrag:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(FF)V

    :cond_0
    return-void
.end method

.method protected onDrop(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;->onDrop(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    return-void
.end method

.method public onTouchOver(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    return-void
.end method

.method public removeView()Lcom/sec/android/glview/TwGLView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setEmpty()V

    return-object v0
.end method

.method public setDroppability(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mDroppable:Z

    return-void
.end method

.method protected setEmpty()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mView:Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    return-void
.end method

.method public setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;

    return-void
.end method

.method public setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->mOnDropListener:Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;

    return-void
.end method
