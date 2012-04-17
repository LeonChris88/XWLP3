.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/RegularImmutableList;
.source "ImmutableSortedAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient set:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;IILcom/google/common/collect/ImmutableSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->array()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->offset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->offset()I

    move-result v4

    add-int/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedAsList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->set:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method
