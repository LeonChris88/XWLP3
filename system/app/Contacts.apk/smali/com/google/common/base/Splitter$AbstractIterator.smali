.class abstract Lcom/google/common/base/Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/common/base/Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Splitter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/base/Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    sget-object v3, Lcom/google/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    sget-object v0, Lcom/google/common/base/Splitter$6;->$SwitchMap$com$google$common$base$Splitter$AbstractIterator$State:[I

    iget-object v3, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/base/Splitter$AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v2

    :goto_1
    :pswitch_0
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v2, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .locals 2

    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->FAILED:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->next:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/Splitter$AbstractIterator$State;->DONE:Lcom/google/common/base/Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/common/base/Splitter$AbstractIterator$State;->READY:Lcom/google/common/base/Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$AbstractIterator;->state:Lcom/google/common/base/Splitter$AbstractIterator$State;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
