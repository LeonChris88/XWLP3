.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.super Landroid/app/ListFragment;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
    }
.end annotation


# static fields
.field public static SELECT_MAX_COUNT:I

.field private static bDBChanged:Z


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field private mEmailCursor:Landroid/database/Cursor;

.field private mFromEmail:Z

.field private mIntent:Landroid/content/Intent;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mViewBy:I

.field statecheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    return p0
.end method

.method private setObserver()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAllCheckState()V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    :goto_0
    if-ge v4, v1, :cond_2

    or-int v7, v3, v2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    :goto_2
    return-void

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v7}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_2
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate>>>>>>>>>>> mIntent == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v1, "additional"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email-multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "InteractionRecentFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040099

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    if-lez v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    aget-boolean v4, v0, v1

    if-ne v4, v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v4}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v4}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setObserver()V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_3
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v0, v2, [Z

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->statecheck:Z

    return-void
.end method

.method public sendNum()V
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5583;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "result"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRecentListAction(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    return-void
.end method
