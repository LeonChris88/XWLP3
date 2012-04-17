.class public Lcom/android/contacts/list/CustomContactListFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/ContactsActivity;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$3;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;-><init>()V

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object v0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private doSaveAction()V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 8

    const/4 v7, -0x2

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/list/CustomContactListFilterActivity$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$1;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/contacts/list/CustomContactListFilterActivity$2;

    invoke-direct {v5, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$2;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v5, 0x7f0a01a5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2

    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0118

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0113

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$5;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v3, p3, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setContentView(I)V

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setActionBar()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    instance-of v6, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, p3

    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v3

    iget-wide v6, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v6, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v6, v3, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 5

    const v3, 0x7f0a0114

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    iget-object v3, p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/list/CustomContactListFilterActivity$6;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$6;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 7

    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v0, 0x7f0a0113

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
