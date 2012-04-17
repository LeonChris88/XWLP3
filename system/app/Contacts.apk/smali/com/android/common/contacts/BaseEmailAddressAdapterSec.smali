.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapterSec.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    }
.end annotation


# static fields
.field private static BackupOfSearchedString:Ljava/lang/String;

.field public static ExpandResultMaxAndShowMoreMode:Z

.field public static final RIC_URI:Landroid/net/Uri;

.field public static isEnableGroupSearch:Z


# instance fields
.field private Acc_Id:Ljava/lang/Long;

.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputText:Ljava/lang/String;

.field private mPreferredMaxResultCount:I

.field protected final mSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "content://com.android.exchange.directory.provider/recipientInformation cache/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mInputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I
    .locals 1

    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addShowMoreButtonAtlastPatition()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : partition is none"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v8, v11, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v11, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    if-eqz v9, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ltz v12, :cond_1

    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : cursor is not null. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v12, v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : showmore does not need. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v6, :cond_6

    const/4 v12, -0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    const-string v12, "gal_search_show_more"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_4
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_5
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v10, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-1"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0, v8, v7}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_7
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : showmore does not need."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAllPartitionEmpty()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAllPartitionLoadFinished()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 15

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v12

    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_3

    move/from16 v0, p2

    if-eq v11, v0, :cond_2

    invoke-direct {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v13, -0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v11, :cond_1

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v4, 0x0

    if-ltz v7, :cond_1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v8, 0x1

    const/4 v10, 0x1

    if-eqz v11, :cond_5

    :cond_2
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7

    :cond_3
    if-eqz v6, :cond_4

    const/4 v13, 0x0

    invoke-virtual {p0, v13, v9}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    :cond_4
    return v8

    :cond_5
    if-nez v11, :cond_0

    if-eqz v10, :cond_6

    if-nez v4, :cond_6

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object p3, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method private isLoading(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13

    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iput-boolean v8, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    if-nez p2, :cond_0

    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : cursor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v7, v12, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : this partition has no duplication."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_3

    if-ge v0, v12, :cond_6

    :cond_3
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const-string v7, "gal_search_show_more"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v9, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    goto :goto_1

    :cond_4
    if-eq v4, v10, :cond_5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-direct {p0, v3, p1, v6}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v6, v7, v11

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v5

    goto :goto_0
.end method

.method public static setBackupOfSearchedString(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9

    if-nez p3, :cond_0

    const-string v7, ""

    :goto_0
    const/4 v8, 0x0

    :try_start_0
    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    return-object v8

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v8, 0x0

    goto :goto_1
.end method

.method public getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "account_type"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "system_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(title like \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6

    :cond_0
    const-string v7, ""

    goto :goto_0
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 23

    if-eqz p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v17, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_0

    new-instance v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    invoke-direct/range {v16 .. v16}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;-><init>()V

    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v15, :cond_1

    if-eqz v18, :cond_1

    :try_start_0
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v17, v16

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    if-eqz v17, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v4

    const/4 v12, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v20

    if-lez v20, :cond_6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    :cond_6
    if-nez p3, :cond_9

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    move/from16 v20, v0

    sub-int v12, v20, v5

    const/4 v8, 0x1

    :goto_4
    if-ge v8, v4, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    if-gtz v12, :cond_7

    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_a

    :cond_7
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_3

    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    throw v20

    :cond_b
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    const/4 v8, 0x1

    :goto_6
    if-ge v8, v4, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    new-instance v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    :cond_c
    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_e

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    :goto_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_10
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setBackupOfSearchedString(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addShowMoreButtonAtlastPatition()V

    :cond_1
    monitor-exit v2

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    :cond_0
    return-void
.end method
