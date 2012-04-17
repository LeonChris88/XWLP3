.class public Lcom/android/contacts/list/JoinContactListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/JoinContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllContactsListShown:Z

.field private mDisplayName:Ljava/lang/String;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAllContactsListShown:Z

    new-instance v0, Lcom/android/contacts/list/JoinContactListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/JoinContactListFragment$1;-><init>(Lcom/android/contacts/list/JoinContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setSweepActionEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/JoinContactListFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/JoinContactListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->showTargetContactName(Ljava/lang/String;)V

    return-void
.end method

.method private showTargetContactName(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f0d01ab

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0032

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAllContactsListShown:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->setAllContactsListShown(Z)V

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListAdapter;->setTargetContactId(J)V

    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setVerticalTwIndexScrollbarPosition(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->showTwIndexScrollbar()V

    invoke-virtual {p0, v2, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->hideTwIndexScrollbar()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/JoinContactActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/JoinContactActivity;->showContactsUnavailableFragment()V

    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAllContactsListShown:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onResume()V

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/list/JoinContactListFragment;->showTargetContactName(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "allContactsShown"

    iget-boolean v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAllContactsListShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "displayName"

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "allContactsShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mAllContactsListShown:Z

    const-string v0, "displayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mDisplayName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    return-void
.end method

.method public setTargetContactId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-void
.end method

.method protected startLoading()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
