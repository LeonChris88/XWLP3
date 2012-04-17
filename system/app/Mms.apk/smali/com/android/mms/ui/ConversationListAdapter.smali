.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSize:I

.field private mIsDeleteMode:Z

.field private mIsSplitMode:Z

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const/4 v9, 0x0

    instance-of v5, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v5, :cond_0

    const-string v5, "Mms/ConversationListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected bound view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, p1

    check-cast v3, Lcom/android/mms/ui/ConversationListItem;

    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    new-instance v0, Lcom/android/mms/ui/ConversationListItemData;

    invoke-direct {v0, p2, v2}, Lcom/android/mms/ui/ConversationListItemData;-><init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->updateRecipients()V

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationListItem;->setDeleteMode(Z)V

    const/4 v1, 0x0

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5, v9}, Lcom/android/mms/ui/ConversationComposer;->setConversationSelectAll(Z)V

    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    iget v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ConversationListItem;->setFontSize(I)V

    invoke-virtual {v3, p2, v0, p3}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->isSplitBarTouch()Z

    move-result v4

    iget-wide v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItemData;->getThreadId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    :goto_1
    const-string v5, "Mms/ConversationListAdapter"

    const-string v6, "bind() complete"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v9, v4}, Lcom/android/mms/ui/ConversationListItem;->setMessagePointer(ZZ)V

    goto :goto_1
.end method

.method public clearCheckedList()V
    .locals 1

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public getCheckedCount()I
    .locals 1

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    return-void
.end method

.method public reCalulateCheckedThreads()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    sput-object v2, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFontSize:I

    return-void
.end method

.method public setChecked(J)V
    .locals 2

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3

    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
