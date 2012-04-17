.class Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private snapshot()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v4, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {v4, v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v3}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->this$0:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
