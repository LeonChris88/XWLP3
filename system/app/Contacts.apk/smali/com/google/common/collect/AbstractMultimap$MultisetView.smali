.class Lcom/google/common/collect/AbstractMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v6

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-lez p2, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :try_start_0
    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p2, v1, :cond_3

    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5, p1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v6

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5, p2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    move v6, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
