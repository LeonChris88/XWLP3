.class final Lcom/android/contacts/model/AccountType$1;
.super Ljava/lang/Object;
.source "AccountType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/DataKind;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/DataKind;)I
    .locals 2

    iget v0, p1, Lcom/android/contacts/model/DataKind;->weight:I

    iget v1, p2, Lcom/android/contacts/model/DataKind;->weight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/model/DataKind;

    check-cast p2, Lcom/android/contacts/model/DataKind;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/AccountType$1;->compare(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/DataKind;)I

    move-result v0

    return v0
.end method
