.class Lcom/google/common/collect/AbstractBiMap$ValueSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;

.field final valuesDelegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$600(Lcom/google/common/collect/AbstractBiMap;)Lcom/google/common/collect/AbstractBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->valuesDelegate:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$ValueSet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->valuesDelegate:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$ValueSet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$ValueSet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$ValueSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$ValueSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
