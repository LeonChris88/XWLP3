.class Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->key:Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->hash:I

    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;->next:Lcom/google/common/collect/CustomConcurrentHashMap$SimpleInternalEntry;

    return-void
.end method
