.class final Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;,
        Lcom/google/common/collect/CustomConcurrentHashMap$SimpleStrategy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method private static rehash(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method
