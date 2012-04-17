.class public Lcom/sec/android/app/contacts/activities/JoinedContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "JoinedContactActivity.java"


# instance fields
.field private mLinkedContactsCount:I

.field private mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

.field private mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showJoinAggregateActivity()V

    return-void
.end method

.method private showJoinAggregateActivity()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "intentFrom"

    const-string v2, "joinedcontact"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v5, 0x4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    const v5, 0x7f040094

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "UNLINK_ONLY"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const v5, 0x7f0a002e

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    const v5, 0x7f0d01b6

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v5, 0x7f0d01b5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v4, :cond_1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v5, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/JoinedContactActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v5, :cond_2

    new-instance v5, Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-direct {v5}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f0d00e6

    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    return-void

    :cond_3
    const v5, 0x7f0a023b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setTitle(I)V

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

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splitCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onSplitCompleted(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "joinFail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mListFragment:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->onJoinCompleted(Landroid/net/Uri;)V

    goto :goto_0
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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setExplainText()V
    .locals 3

    const v1, 0x7f0d01b4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLinkedContactsCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->mLinkedContactsCount:I

    return-void
.end method
