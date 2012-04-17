.class public Lcom/android/mms/ui/SearchListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    const v7, 0x7f08004a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v4, v7

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f080099

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v3, v7

    check-cast v3, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    const-string v7, "address"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "transport_type"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "wpm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f09019f

    invoke-virtual {p2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    move-object v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "text"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v7, "recipient_ids"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v7, ", "

    invoke-virtual {v2, v7}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/SearchListAdapter"

    const-string v1, "SearchListAdapter.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V

    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    return-void
.end method
