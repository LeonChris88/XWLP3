.class final Lcom/android/contacts/list/CustomContactListFilterActivity$3;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
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
        "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
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
.method public compare(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)I
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    move v2, v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;->compare(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)I

    move-result v0

    return v0
.end method
