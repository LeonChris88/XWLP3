.class Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntryIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$ValueIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeyIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$HashIterator;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation
.end field

.field final strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Strategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Builder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->getConcurrencyLevel()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->getInitialCapacity()I

    move-result v2

    const/high16 v7, 0x1

    if-le v0, v7, :cond_0

    const/high16 v0, 0x1

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    rsub-int/lit8 v7, v5, 0x20

    iput v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    add-int/lit8 v7, v4, -0x1

    iput v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    invoke-virtual {p0, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    const/high16 v7, 0x4000

    if-le v2, v7, :cond_2

    const/high16 v2, 0x4000

    :cond_2
    div-int v3, v2, v4

    mul-int v7, v3, v4

    if-ge v7, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    const/4 v6, 0x1

    :goto_1
    if-ge v6, v3, :cond_4

    shl-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v7, v7

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v8, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v8, p0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    new-instance v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v7, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setInternals(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    const/high16 v11, 0x1

    if-le v0, v11, :cond_0

    const/high16 v0, 0x1

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    rsub-int/lit8 v12, v7, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    add-int/lit8 v12, v6, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/high16 v11, 0x4000

    if-le v3, v11, :cond_2

    const/high16 v3, 0x4000

    :cond_2
    div-int v5, v3, v6

    mul-int v11, v5, v6

    if-ge v11, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    const/4 v8, 0x1

    :goto_1
    if-ge v8, v5, :cond_4

    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v11, v11

    if-ge v2, v11, :cond_5

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v12, p0, v8}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v12, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    sget-object v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    invoke-virtual {v11, p0, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v4, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v11
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14

    if-nez p1, :cond_0

    new-instance v12, Ljava/lang/NullPointerException;

    const-string v13, "value"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v12, v11

    new-array v8, v12, [I

    const/4 v6, 0x0

    :goto_0
    const/4 v12, 0x2

    if-ge v6, v12, :cond_7

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v12, v11

    if-ge v4, v12, :cond_3

    aget-object v12, v11, v4

    iget v1, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    aget-object v12, v11, v4

    iget v12, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v12, v8, v4

    add-int/2addr v9, v12

    aget-object v12, v11, v4

    invoke-virtual {v12, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_2
    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-eqz v9, :cond_4

    const/4 v4, 0x0

    :goto_3
    array-length v12, v11

    if-ge v4, v12, :cond_4

    aget-object v12, v11, v4

    iget v1, v12, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    aget v12, v8, v4

    aget-object v13, v11, v4

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v12, v13, :cond_5

    const/4 v2, 0x0

    :cond_4
    if-eqz v2, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_8

    aget-object v10, v0, v5

    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    move-object v0, v11

    :try_start_0
    array-length v7, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v7, :cond_9

    aget-object v10, v0, v5

    invoke-virtual {v10, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-eqz v12, :cond_a

    const/4 v3, 0x1

    :cond_9
    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_1

    aget-object v10, v0, v5

    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catchall_0
    move-exception v12

    move-object v0, v11

    array-length v7, v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_b

    aget-object v10, v0, v5

    invoke-virtual {v10}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    throw v12
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$EntrySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->hashKey(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->access$000(I)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v5, v3

    new-array v1, v5, [I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$KeySet;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "oldValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "newValue"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
            "<TK;TV;TE;>.Segment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 15

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    const-wide/16 v11, 0x0

    const-wide/16 v1, 0x0

    array-length v13, v10

    new-array v7, v13, [I

    const/4 v5, 0x0

    :goto_0
    const/4 v13, 0x2

    if-ge v5, v13, :cond_2

    const-wide/16 v1, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v13, v10

    if-ge v3, v13, :cond_0

    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v13, v7, v3

    add-int/2addr v8, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_1

    const/4 v3, 0x0

    :goto_2
    array-length v13, v10

    if-ge v3, v13, :cond_1

    aget-object v13, v10, v3

    iget v13, v13, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v1, v13

    aget v13, v7, v3

    aget-object v14, v10, v3

    iget v14, v14, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v13, v14, :cond_3

    const-wide/16 v1, -0x1

    :cond_1
    cmp-long v13, v1, v11

    if-nez v13, :cond_4

    :cond_2
    cmp-long v13, v1, v11

    if-eqz v13, :cond_7

    const-wide/16 v11, 0x0

    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_5

    aget-object v9, v0, v4

    invoke-virtual {v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    aget-object v9, v0, v4

    iget v13, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_7

    aget-object v9, v0, v4

    invoke-virtual {v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    const-wide/32 v13, 0x7fffffff

    cmp-long v13, v11, v13

    if-lez v13, :cond_8

    const v13, 0x7fffffff

    :goto_6
    return v13

    :cond_8
    long-to-int v13, v11

    goto :goto_6
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Values;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_0
.end method
