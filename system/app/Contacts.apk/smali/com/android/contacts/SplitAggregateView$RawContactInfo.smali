.class Lcom/android/contacts/SplitAggregateView$RawContactInfo;
.super Ljava/lang/Object;
.source "SplitAggregateView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawContactInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/SplitAggregateView$RawContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nickname:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field final rawContactId:J


# virtual methods
.method public compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->accountType:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    invoke-virtual {p0, p1}, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->compareTo(Lcom/android/contacts/SplitAggregateView$RawContactInfo;)I

    move-result v0

    return v0
.end method

.method public getAdditionalData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->nickname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->email:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->phone:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
