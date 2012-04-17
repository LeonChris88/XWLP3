.class Lcom/google/common/collect/MapMaker$WeakValueReference;
.super Lcom/google/common/base/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableWeakReference",
        "<TV;>;",
        "Lcom/google/common/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    iput-object p2, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMaker$WeakValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$WeakValueReference;->entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->valueReclaimed()V

    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
