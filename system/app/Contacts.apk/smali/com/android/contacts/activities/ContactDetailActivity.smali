.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreDefaultUpBehavior:Z

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$4;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setupTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setupTitle()V
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {p0, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "ContactDetailActivity"

    const-string v2, "Uri is not valid."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2680

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ignoreDefaultUpBehavior"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIgnoreDefaultUpBehavior:Z

    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f0d00a9

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "ContactDetailActivity"

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a023b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a023e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/activities/ContactDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "joinFail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIgnoreDefaultUpBehavior:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const v5, 0x7f0d026d

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04006e

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v5, 0x7f0d0125

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/contacts/activities/ContactDetailActivity$1;

    invoke-direct {v5, p0, v4}, Lcom/android/contacts/activities/ContactDetailActivity$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v5, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_0
    const v5, 0x7f0d026c

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040001

    invoke-virtual {v5, v6, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/contacts/activities/ContactDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/ContactDetailActivity$2;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :goto_1
    const/4 v5, 0x1

    return v5

    :cond_1
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
