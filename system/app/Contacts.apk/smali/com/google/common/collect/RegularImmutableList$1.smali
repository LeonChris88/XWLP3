.class Lcom/google/common/collect/RegularImmutableList$1;
.super Ljava/lang/Object;
.source "RegularImmutableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iput p2, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->val$start:I

    iput v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->access$000(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    invoke-virtual {v2, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    iget v3, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
