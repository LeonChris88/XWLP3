.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Segment"
.end annotation


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v4, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p2, :cond_1

    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7

    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-interface {v4, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method expand()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-lt v12, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    shl-int/lit8 v18, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    div-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_6

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v4, v18, v8

    if-nez v11, :cond_2

    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object v6, v11

    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    move/from16 v17, v7

    move-object/from16 v16, v6

    :cond_3
    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v3

    :goto_3
    move-object/from16 v0, v16

    if-eq v2, v0, :cond_1

    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v15, v5, v2, v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_5
    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto/16 :goto_0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_1

    :cond_0
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v10, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v10, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    :cond_0
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v6, p2, v10

    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    if-ne v10, p2, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v8, p1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz p4, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return-object v4

    :cond_1
    :try_start_1
    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v8, p1, p2, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    :goto_1
    if-eq v7, v1, :cond_1

    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_0
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return-object v3

    :cond_2
    :try_start_1
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_0

    if-eqz p3, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v9, v3, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    :goto_1
    if-eq v7, v1, :cond_2

    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v11

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v9, -0x1

    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    :goto_1
    if-eq v5, v1, :cond_1

    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v7, v6, v5, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_0
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v9

    :cond_2
    :try_start_1
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v9
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p3, :cond_0

    if-eqz p3, :cond_3

    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_0
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    :goto_1
    if-eq v6, v1, :cond_2

    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v8, v7, v6, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_1
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_2
    return v10

    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    :goto_1
    return-object v2

    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_1
    return v4

    :cond_0
    :try_start_1
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method
