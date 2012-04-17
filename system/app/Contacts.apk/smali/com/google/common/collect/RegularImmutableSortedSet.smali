.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;

.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    array-length v0, p1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    return-void
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .locals 5

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-gt v1, v3, :cond_1

    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v2, v1, v4

    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, p1, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    neg-int v4, v1

    add-int/lit8 v2, v4, -0x1

    :cond_2
    return v2
.end method

.method private createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    if-ge p1, p2, :cond_0

    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_0
.end method

.method private findSubsetIndex(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-gt v6, v5, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    :cond_3
    :goto_1
    iget v6, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-lez v0, :cond_3

    goto :goto_0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>([Ljava/lang/Object;IILcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    instance-of v7, p1, Ljava/util/Set;

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v4, v7}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :try_start_0
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_1
    iget v7, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v7, v7, v1

    invoke-virtual {p0, v7, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v5, v6

    goto :goto_0

    :catch_1
    move-exception v0

    move v5, v6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_0
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 4

    const/4 v2, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int v2, v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p1

    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
