.class public Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.super Landroid/app/ListFragment;
.source "JoinedContactFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;,
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_PROJECTION:[Ljava/lang/String;

.field private static mLinkedContactsCount:I

.field private static mSelectedContactUri:Landroid/net/Uri;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

.field private mJustCreated:Z

.field private mList:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mLinkedContactsCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/net/Uri;J)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->doSplitContactAction(Landroid/net/Uri;J)Z

    move-result v0

    return v0
.end method

.method private doSplitContactAction(Landroid/net/Uri;J)Z
    .locals 3

    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setContactId(JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method private startQuery()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "JoinedContact"

    const-string v3, "JoinedContact startQuery"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v4, "raw_contacts2"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->RAW_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mHandler:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mJustCreated:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mAdapter:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 0

    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    return-void
.end method

.method public onSplitCompleted(Landroid/net/Uri;)V
    .locals 0

    sput-object p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->startQuery()V

    return-void
.end method

.method public onSplitContactConfirmed(JJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v5, 0x1

    const-class v6, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    const-string v7, "splitCompleted"

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSplitContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
