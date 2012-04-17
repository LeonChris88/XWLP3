.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;,
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field private static sIsTwoPaneMode:Z


# instance fields
.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mAllDeleteCheckBox:Landroid/widget/CheckBox;

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

.field private mContactsUnavailableView:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mCreateButton:Landroid/widget/ImageButton;

.field private mCustomSearchBarLayout:Landroid/view/View;

.field private mCustomSearchMode:Z

.field private mCustomSearchQueryString:Ljava/lang/String;

.field private mCustomSearchView:Landroid/widget/SearchView;

.field private mDeleteContactsDialog:Landroid/app/AlertDialog;

.field private mDeleteHeaderView:Landroid/view/View;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mListContentFrame:Landroid/view/View;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mPaddingView:Landroid/view/View;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/TextView;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mSearchHeaderView:Landroid/view/View;

.field private mTotalContactsTextView:Landroid/widget/TextView;

.field private mTotalContactsView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    iput-boolean v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFakeQueryModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4

    const v3, 0x7f040051

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const v2, 0x7f0d0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f0400da

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f0d022f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v3, 0x7f0d022e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    const v2, 0x7f0400d9

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v4, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$8;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v2, 0x7f040025

    invoke-virtual {p1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private checkDeleteHeaderViewVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3

    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/high16 v2, 0x7f10

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$6;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    return-object v1
.end method

.method private getPhoneNumbers(J)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v7

    const-string v0, "data2"

    aput-object v0, v2, v1

    const-string v0, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v6
.end method

.method private isAllDeleteChecked()Z
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6, v5}, Lcom/android/contacts/list/ContactListAdapter;->getItemId(I)J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(J)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    return v7

    :cond_2
    if-nez v1, :cond_3

    move v6, v7

    :goto_2
    move v7, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private isBlackListContact(J)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryBlackList()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getPhoneNumbers(J)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_2

    :cond_0
    move v3, v4

    :goto_1
    return v3

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private onDeleteAllChecked(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_5

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getItemId(I)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    invoke-virtual {v0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    return-void
.end method

.method private queryBlackList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "reject_number"

    aput-object v0, v2, v8

    const-string v0, "reject_checked"

    aput-object v0, v2, v7

    const-string v0, "reject_match = 0"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "reject_match = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v7, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method private queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;
    .locals 12

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    invoke-direct {v11, p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mimetype"

    aput-object v4, v2, v10

    const-string v4, "data1"

    aput-object v4, v2, v6

    const-string v4, "account_type"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "com.google"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v6, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v10

    :goto_0
    iget-object v0, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-nez v1, :cond_3

    const-string v0, " ( _id = ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v0, " OR _id = ?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v0, " ) "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v6, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v6, v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_5
    iget-object v1, v11, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v11
.end method

.method private selectContactForDelete(IJ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateViews()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, p3, v4}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheck(JZ)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private setCreateButtonVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomMenuButtonVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCustomSearchMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->shouldShowSearchResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-super {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    :cond_0
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0d0231

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0230

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d0232

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0d023c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private showDeleteContactsDialog()V
    .locals 3

    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$9;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteContactsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "intentFrom"

    const-string v2, "mainlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_5

    iget-object v0, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0062

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string v2, "primary.sim.account_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0241

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearCustomSearchResult()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchMode(Z)V

    :cond_0
    return-void
.end method

.method public clearCustomSearchViewFocus()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V

    new-instance v1, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;Lcom/android/contacts/list/DefaultContactListAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Landroid/content/CursorLoader;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected createCustomSearchbar()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCreateButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$2;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$4;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$5;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 2

    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method public forceSetDeleteMode()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onRestoreSavedState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->forceSetDeleteMode()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->sIsTwoPaneMode:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "CONTACT_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mode"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "direct_launch"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->queryForAddToGroup(Landroid/net/Uri;)Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.extra.CONTACT_ID"

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v4, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mListGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v4, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mGroupTitles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    iget-boolean v2, v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$ContactInfoForAddToGroup;->mIsGoogleAccount:Z

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isBlackListContact"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v4, v2, v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_0

    :pswitch_7
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a020d

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "CONTACT_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "mode"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d024b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    check-cast p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    iget v1, p3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v3, v1, v2

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getContactLookupKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->isContactWritable(I)Z

    move-result v6

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->isSimContact(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->isUserProfile(I)Z

    move-result v8

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getUnknownNameText()Ljava/lang/CharSequence;

    move-result-object v2

    :cond_2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v9, 0x7f100004

    invoke-virtual {v2, v9, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v2, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v9, 0x7f0d024b

    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :goto_2
    if-nez v1, :cond_7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f0d024c

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :goto_3
    if-nez v8, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f0d024d

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v7, :cond_8

    const/4 v1, 0x1

    :goto_4
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_5
    if-eqz v6, :cond_a

    if-nez v8, :cond_a

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f0d024e

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :goto_6
    if-nez v8, :cond_d

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0d024f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->isContactStarred(I)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    :goto_7
    invoke-static {v2, v4, v1}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f0d024f

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v7, :cond_c

    const/4 v1, 0x1

    :goto_8
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_9
    if-nez v8, :cond_f

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v2, 0x7f0d0250

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v7, :cond_e

    const/4 v1, 0x1

    :goto_a
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_b
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListAdapter;->getHasPhoneNumber(I)Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v8, :cond_11

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isBlackListContact(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const v1, 0x7f0d0251

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a029b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "isBlackListContact"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x7f0d0251

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v7, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_d
    if-eqz v6, :cond_12

    if-nez v8, :cond_12

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a0103

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d0252

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :goto_e
    if-eqz v6, :cond_13

    if-nez v8, :cond_13

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x7f0d0253

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    const v2, 0x7f0d024b

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_7
    const v1, 0x7f0d024c

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_9
    const v1, 0x7f0d024d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_a
    const v1, 0x7f0d024e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_8

    :cond_d
    const v1, 0x7f0d024f

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_9

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_f
    const v1, 0x7f0d0250

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_11
    const v0, 0x7f0d0251

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_12
    const v0, 0x7f0d0252

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e

    :cond_13
    const v0, 0x7f0d0253

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0228

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d022f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0400b0

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0400d7

    invoke-virtual {p1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    const v3, 0x7f0d01ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f040051

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onDeleteAllChecked(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->selectContactForDelete(IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->unregisterForContextMenu(Landroid/view/View;)V

    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onPause()V

    return-void
.end method

.method public onRestoreSavedState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "deleteMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    const-string v0, "deleteIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    const-string v0, "deleteUris"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    const-string v0, "customSearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    const-string v0, "customSearchQueryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldShowCustomSearchResult()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomSearchMode(Z)V

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDeleteMode(Z)V

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAllDeleteChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "deleteUris"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "deleteIds"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "customSearchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "customSearchQueryString"

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestDeleteContacts()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showDeleteContactsDialog()V

    :cond_0
    return-void
.end method

.method public setContactsUnavailableViewVisible(ZZ)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableNoContactsHelpTextView:Landroid/view/View;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContactsUnavailableView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mListContentFrame:Landroid/view/View;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->hideTwIndexScrollbar()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showTwIndexScrollbar()V

    goto :goto_0
.end method

.method public setCustomSearchBarVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchBarLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setDeleteMode(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v1, v3, v3}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/contacts/list/ContactListAdapter;->setQuickContactEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setMultiSelectEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkDeleteHeaderViewVisibility()V

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAllDeleteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setCheckedIds(Ljava/util/HashMap;)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setMultiSelectEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSweepActionEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-direct {p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCreateButtonVisibility(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v1, :cond_7

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setCustomMenuButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->reloadData()V

    iget-boolean v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->clearParitionsForDeleteMode()V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v4, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    return-void
.end method

.method protected setProfileHeader()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setSearchMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    return-void
.end method

.method public shouldShowCustomSearchResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCustomSearchQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 15

    if-nez p2, :cond_2

    const-string v10, "DefaultContactBrowseListFragment"

    const-string v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v10

    if-nez v10, :cond_9

    if-eqz p2, :cond_9

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-boolean v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mUserProfileExists:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    sub-int/2addr v2, v10

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0009

    invoke-virtual {v10, v11, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-lez v2, :cond_3

    rem-int/lit8 v7, v2, 0xa

    int-to-char v10, v7

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v2, v2, 0xa

    goto :goto_3

    :cond_3
    const-string v10, "DefaultContactBrowseListFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ready to display : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v4

    if-eqz v4, :cond_6

    iget v5, v4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    :goto_4
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a005e

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    const/4 v5, -0x2

    goto :goto_4

    :pswitch_1
    iget-object v0, v4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const-string v10, "vnd.sec.contact.phone"

    iget-object v11, v4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0119

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_5
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a0061

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    const-string v10, "primary.sim.account_name"

    iget-object v11, v4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0241

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :pswitch_2
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a0061

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v4, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a005d

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a0060

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsTextView:Landroid/widget/TextView;

    const v11, 0x7f0a005f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    :cond_a
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_6
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mTotalContactsView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v11, 0x7f0d01ef

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v11, 0x7f0d00d3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteMode:Z

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mDeleteHeaderView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v10

    if-eqz v10, :cond_e

    const v10, 0x7f0a0185

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    :cond_e
    const v10, 0x7f0a0066

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected showEmptyUserProfile(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mPaddingView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6
.end method
