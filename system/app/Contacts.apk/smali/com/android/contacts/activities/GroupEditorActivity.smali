.class public Lcom/android/contacts/activities/GroupEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/GroupEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupEditorActivity$3;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V

    return-void
.end method

.method private adjustActionBar(Ljava/lang/String;)V
    .locals 8

    const/4 v7, -0x2

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0d009e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/contacts/activities/GroupEditorActivity$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/GroupEditorActivity$1;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/android/contacts/activities/GroupEditorActivity$2;

    invoke-direct {v5, p0}, Lcom/android/contacts/activities/GroupEditorActivity$2;-><init>(Lcom/android/contacts/activities/GroupEditorActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0a0019

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v5, 0x7f0a0018

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private finishWithHidingIME()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finish()V

    return-void
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v0, v1, v1}, Lcom/android/contacts/group/GroupEditorFragment;->save(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "DTM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MAX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "groupId"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v9, "systemId"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "saveCompleted"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GroupInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    goto :goto_0

    :cond_3
    const v1, 0x7f04007a

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupEditorActivity;->setContentView(I)V

    invoke-direct {p0, v7}, Lcom/android/contacts/activities/GroupEditorActivity;->adjustActionBar(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0185

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupEditorFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragmentListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v1, v7, v0, v8}, Lcom/android/contacts/group/GroupEditorFragment;->load(Ljava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;I)V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GroupEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "editGroup"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "saveCompleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/activities/GroupEditorActivity;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupEditorActivity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupEditorActivity;->finishWithHidingIME()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
