.class Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    invoke-static {p1}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5

    add-int v1, p1, p2

    add-int/lit8 v2, p1, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    aget v3, p0, v0

    if-ge v3, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    :cond_2
    :goto_1
    return v1

    :cond_3
    aget v3, p0, v1

    if-eq v3, p3, :cond_2

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 7

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v5, v0

    sget-object v6, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    if-eq v0, v3, :cond_0

    aget v6, v1, v0

    aput v6, v1, v3

    aput-object v4, v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    iput v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return-void
.end method

.method static idealByteArraySize(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    :cond_0
    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static idealIntArraySize(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iput-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    return-void
.end method

.method public delete(I)V
    .locals 4

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p2, v1, v0

    goto :goto_0
.end method

.method public keyAt(I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget v5, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/support/v4/app/HCSparseArray;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    :cond_2
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Landroid/support/v4/app/HCSparseArray;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iput-object v3, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    :cond_3
    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    iget v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/HCSparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
