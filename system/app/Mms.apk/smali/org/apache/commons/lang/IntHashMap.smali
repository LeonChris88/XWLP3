.class Lorg/apache/commons/lang/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private final loadFactor:F

.field private transient table:[Lorg/apache/commons/lang/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput p2, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    new-array v0, p1, [Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    return-void
.end method


# virtual methods
.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const v7, 0x7fffffff

    iget-object v4, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    move v1, p1

    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    aget-object v0, v4, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v5, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    iget-object v3, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    :goto_1
    return-object v3

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    iget v6, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/IntHashMap;->rehash()V

    iget-object v4, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    and-int v5, v1, v7

    array-length v6, v4

    rem-int v2, v5, v6

    :cond_2
    new-instance v0, Lorg/apache/commons/lang/IntHashMap$Entry;

    aget-object v5, v4, v2

    invoke-direct {v0, v1, p1, p2, v5}, Lorg/apache/commons/lang/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V

    aput-object v0, v4, v2

    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected rehash()V
    .locals 11

    iget-object v9, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    array-length v7, v9

    iget-object v8, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    mul-int/lit8 v9, v7, 0x2

    add-int/lit8 v4, v9, 0x1

    new-array v5, v4, [Lorg/apache/commons/lang/IntHashMap$Entry;

    int-to-float v9, v4

    iget v10, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    iput-object v5, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    move v1, v7

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_1

    aget-object v6, v8, v1

    :goto_1
    if-eqz v6, :cond_0

    move-object v0, v6

    iget-object v6, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    iget v9, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    aget-object v9, v5, v3

    iput-object v9, v0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    aput-object v0, v5, v3

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method
