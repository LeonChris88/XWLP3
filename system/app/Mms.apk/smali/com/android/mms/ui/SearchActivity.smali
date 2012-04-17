.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;

.field private static final SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;


# instance fields
.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mHighlightString:Ljava/lang/String;

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "messages/bystring"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mHighlightString:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    new-instance v0, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity;->mHighlightString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    return-void
.end method

.method private getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "user_query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "pattern"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method private getTrimedOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startQuery(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/android/mms/ui/SearchActivity;->SEARCH_MESSAGES_BY_STRING_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "pattern"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    sget-object v4, Lcom/android/mms/ui/SearchActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "thread_id<>?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const-string v3, "Mms/SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(), intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030028

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mms/SearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search parameter len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v3, 0x7f0200a2

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelector(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    new-instance v3, Lcom/android/mms/ui/SearchListAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SearchListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SearchListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mSearchListAdapter:Lcom/android/mms/ui/SearchListAdapter;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    new-instance v3, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    const-string v3, "Mms/SearchActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const-string v1, "thread_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "thread_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "highlight"

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity;->mHighlightString:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "select_id"

    invoke-virtual {v2, v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent(),intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SearchActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SearchActivity;->getSearchStringOrEmpty(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search parameter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SearchActivity;->startQuery(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v1, "Mms/SearchActivity"

    const-string v2, "onNewIntent()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method
