.class Lcom/android/settings/DataUsageSummary$AppUsageItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppUsageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/DataUsageSummary$AppUsageItem;",
        ">;"
    }
.end annotation


# instance fields
.field public total:J

.field public uids:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    invoke-static {v1, p1}, Lcom/android/settings/DataUsageSummary;->access$2900([II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    array-length v0, v1

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->uids:[I

    aput p1, v1, v0

    goto :goto_0
.end method

.method public compareTo(Lcom/android/settings/DataUsageSummary$AppUsageItem;)I
    .locals 4

    iget-wide v0, p1, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/DataUsageSummary$AppUsageItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$AppUsageItem;->compareTo(Lcom/android/settings/DataUsageSummary$AppUsageItem;)I

    move-result v0

    return v0
.end method
