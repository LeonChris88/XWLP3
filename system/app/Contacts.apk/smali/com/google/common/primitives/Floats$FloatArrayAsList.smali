.class Lcom/google/common/primitives/Floats$FloatArrayAsList;
.super Ljava/util/AbstractList;
.source "Floats.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Floats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[F

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([FII)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iput p2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iput p3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats;->access$000([FFII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v5, p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v6, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v7, v2, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v7, v0

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->get(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v3

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats;->access$000([FFII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats;->access$100([FFII)I

    move-result v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 4

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([FII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
