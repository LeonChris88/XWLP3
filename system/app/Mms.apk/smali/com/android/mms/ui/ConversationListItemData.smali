.class public Lcom/android/mms/ui/ConversationListItemData;
.super Landroid/widget/LinearLayout;
.source "ConversationListItemData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COUNT_ONLY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDate:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHasDraft:Z

.field private mHasError:Z

.field private mIsRead:Z

.field private mMessageCount:I

.field private mPresenceResId:I

.field private mRecipientString:Ljava/lang/String;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSubject:Ljava/lang/String;

.field private mThreadId:J

.field private mThreadIdArg:[Ljava/lang/String;

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " count(*) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mPresenceResId:I

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasUnreadMessages()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mIsRead:Z

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mMessageCount:I

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->hasAttachment()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasAttachment:Z

    return-void
.end method

.method private getMmsCount()I
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v4, "(thread_id= ?)"

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadArg()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSmsCount()I
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ConversationListItemData;->COUNT_ONLY_PROJECTION:[Ljava/lang/String;

    const-string v4, "(thread_id= ?)"

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadArg()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getThreadArg()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadIdArg:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContacts()Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsMmsCount()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getMmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b7

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSmsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mThreadId:J

    return-wide v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mUnreadMessageCount:I

    return v0
.end method

.method public hasDraft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasDraft:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mHasError:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ConversationListItemData from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItemData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRecipients()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipients:Lcom/android/mms/data/ContactList;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItemData;->mRecipientString:Ljava/lang/String;

    return-void
.end method
