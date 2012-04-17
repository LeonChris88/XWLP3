.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    }
.end annotation


# static fields
.field private static PAYPHONE_NUMBER:Ljava/lang/String;

.field private static PRIVATE_NUMBER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static UNKNOWN_NUMBER:Ljava/lang/String;

.field private static mIsDeleteMode:Z


# instance fields
.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSmsView:Z

.field private mLoading:Z

.field private mMsgId:J

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdfNow:Ljava/text/SimpleDateFormat;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ContactHistoryListAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    const-string v0, "-2"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    const-string v0, "-3"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setViewResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V

    return-void
.end method

.method private calcSection(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_0
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0263

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clearCache()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;-><init>()V

    iput-object p1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->number:Ljava/lang/String;

    iput-object p2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->name:Ljava/lang/String;

    iput p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->logType:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findThreadId(Landroid/content/Context;)J
    .locals 13

    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-gtz v0, :cond_0

    move-wide v2, v8

    :goto_0
    return-wide v2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v0, :cond_1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_2

    move-wide v2, v8

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "m_type"

    aput-object v0, v3, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFormatDuration(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    :cond_1
    move-wide v5, p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0a0264

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :sswitch_1
    if-eqz p3, :cond_1

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    if-eqz p2, :cond_2

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDateFormat()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p3, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_0

    const/16 v0, 0x320

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getFormatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const v3, 0x7f0d0114

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_3
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method

.method private setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object p2, p3

    goto :goto_0
.end method

.method private setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    if-eqz p3, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x258

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    if-nez v0, :cond_1

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "info null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    if-eq v0, v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    iget-object p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private verifyEmail(J)V
    .locals 11

    const/4 v2, 0x0

    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v9, "_id"

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "com.android.email.MessageView_message_id"

    const-string v7, "com.android.email.LogProvider"

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v10, v7, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0265

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private verifySmsMms(IJ)V
    .locals 8

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    const/16 v4, 0x12c

    if-ne p1, v4, :cond_1

    cmp-long v4, p2, v5

    if-lez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "thread_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_2

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_1
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    cmp-long v4, p2, v5

    if-lez v4, :cond_0

    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v4, :cond_3

    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "message_type"

    const-string v5, "sms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "message_type"

    const-string v5, "mms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v1, "= bindView() ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v1, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    invoke-direct {p0, v2, v11}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    invoke-direct {p0, v2, v10}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V

    invoke-direct {p0, v2, v7, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V

    invoke-direct {p0, v2, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v5, v9, v6, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v1, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->clearCache()V

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->move(I)Z

    const-string v0, ""

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "date"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->calcSection(J)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= getView() ="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'t move to cursor position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object v1

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= newView() ="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;)V

    const v2, 0x7f0d00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const v2, 0x7f0d00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v2, 0x7f0d00d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    const v2, 0x7f0d00da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const v2, 0x7f0d00db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    const v2, 0x7f0d00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    const v2, 0x7f0d00dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v2, 0x7f0d00d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    return-void
.end method

.method public setMode(Z)V
    .locals 0

    sput-boolean p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return-void
.end method
