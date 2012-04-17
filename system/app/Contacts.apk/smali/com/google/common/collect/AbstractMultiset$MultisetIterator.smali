.class Lcom/google/common/collect/AbstractMultiset$MultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private currentEntry:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private laterCount:I

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultiset;

.field private totalCount:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultiset;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->this$0:Lcom/google/common/collect/AbstractMultiset;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->entryIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->laterCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->laterCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->laterCount:I

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->totalCount:I

    :cond_1
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->laterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->laterCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->totalCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_0
    iget v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->totalCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->totalCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->canRemove:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->this$0:Lcom/google/common/collect/AbstractMultiset;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;->currentEntry:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
