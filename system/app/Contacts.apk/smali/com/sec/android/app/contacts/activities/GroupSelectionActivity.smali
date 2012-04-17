.class public Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupSelectionActivity.java"


# static fields
.field public static mSaveMenuItem:Landroid/view/View;


# instance fields
.field private mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

.field private mRawContactId:J

.field private mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    return-wide v0
.end method

.method public static onUpdateSaveMenuItem(Z)V
    .locals 3

    sget-object v1, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x1e

    const/4 v7, -0x2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f040083

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    sget-object v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mSaveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0245

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.RAWCONTACT_ID"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mRawContactId:J

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    const-string v5, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0d019a

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    const-string v6, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mTitles:Ljava/util/ArrayList;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->mFragment:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->loadData(Landroid/os/Bundle;)V

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
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    return-void
.end method
