.class public Lcom/sec/android/app/dialertab/calllog/GroupCount;
.super Ljava/lang/Object;
.source "GroupCount.java"


# instance fields
.field private groupCount:I

.field private groupIDs:[I

.field private headerID:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    return-void
.end method

.method constructor <init>(I[II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getHeaderID()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupCount:I

    return v0
.end method

.method public getGroupIDs()[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->groupIDs:[I

    return-object v0
.end method

.method public getHeaderID()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/GroupCount;->headerID:I

    return v0
.end method
