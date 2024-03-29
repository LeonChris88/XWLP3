.class public Lcom/sec/android/app/contacts/activities/ServiceNumbers;
.super Lcom/android/contacts/ContactsActivity;
.source "ServiceNumbers.java"


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public displayProgress(Z)V
    .locals 4

    const/4 v3, 0x5

    const-string v0, "[ServiceNumber]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    const v1, 0x7f0a0232

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->setTitle(I)V

    const v1, 0x7f0400b9

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->setContentView(I)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->mFragment:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public showContactsUnavailableFragment()V
    .locals 3

    new-instance v0, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setNoContactType(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00e6

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
