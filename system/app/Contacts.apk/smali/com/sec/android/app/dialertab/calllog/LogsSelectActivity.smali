.class public Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;
.super Landroid/app/ListActivity;
.source "LogsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;
    }
.end annotation


# static fields
.field private static bDBChanged:Z

.field private static mLogCnt:I


# instance fields
.field co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mCursor:Landroid/database/Cursor;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    sput v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mLogCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    return p0
.end method

.method private configureActionBar()V
    .locals 6

    const/16 v5, 0x1e

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f040018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const v3, 0x7f030004

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->finish()V

    return-void
.end method

.method private setObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040099

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setContentView(I)V

    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->configureActionBar()V

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->bDBChanged:Z

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mItemCursor:Landroid/database/Cursor;

    const-string v4, "number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->onHomeSelected()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity$CallObserver;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->setObserver()V

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsSelectActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
