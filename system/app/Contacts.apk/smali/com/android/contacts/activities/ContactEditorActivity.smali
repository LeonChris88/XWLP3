.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private mFinishActivityOnSaveCompleted:Z

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mTabHost:Landroid/widget/TabHost;

.field private saveMenuItem:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public onAccountAdded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const v5, 0x7f0a0119

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v6, -0x1

    if-eq p2, v6, :cond_0

    const-string v6, "ContactEditorActivity"

    const-string v7, "onActivityResult : resultCode fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v6, "rawContactId"

    const-wide/16 v7, -0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "selectedGroupId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const-string v6, "selectedGroupTitle"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, "ContactEditorActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult : edit rawContactId ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/editor/RawContactEditorView;

    invoke-virtual {v6, v4, v5}, Lcom/android/contacts/editor/RawContactEditorView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onAttachFragment(Landroid/app/Fragment;)V

    instance-of v0, p1, Lcom/android/contacts/editor/ContactEditorFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_0
    sget-object v1, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->getlistpopupwindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v14, "ContactEditorActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "action = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mAction:Ljava/lang/String;

    const-string v14, "finishActivityOnSaveCompleted"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    const-string v14, "joinCompleted"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v14, "saveCompleted"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v11

    const-string v14, "android.intent.action.INSERT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v11}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v14, "vnd.sec.contact.sim"

    iget-object v15, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "ContactEditorActivity"

    const-string v15, "ACTION_INSERT : isSimFull!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v14, 0x7f0a0085

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v14, "vnd.sec.contact.phone"

    iget-object v15, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v11, v1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v14, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    const v14, 0x7f04002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v14, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v14, 0x7f040018

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v14, 0x7f0d009e

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->saveMenuItem:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->saveMenuItem:Landroid/view/View;

    new-instance v15, Lcom/android/contacts/activities/ContactEditorActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x7f0d009f

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    new-instance v14, Lcom/android/contacts/activities/ContactEditorActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-virtual {v5, v14, v15}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const-string v14, "android.intent.action.INSERT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const v14, 0x7f0a0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    new-instance v14, Landroid/app/ActionBar$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x15

    invoke-direct/range {v14 .. v17}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v14}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_4
    const v14, 0x7f0d00cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v14}, Landroid/widget/TabHost;->setup()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v14

    const v15, 0x7f0d00ce

    invoke-virtual {v14, v15}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v14, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    const-string v14, "android.intent.action.EDIT"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v14, v4, v13, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    const v14, 0x7f0a0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/activities/ContactEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ContactEditorActivity"

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
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v1, "saveCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v2, 0x1

    const-string v3, "saveMode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "saveSucceeded"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    :cond_3
    const-string v1, "joinCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;)V

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
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->changeView(I)V

    const-string v0, "ContactEditorActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabHost.getCurrentTab() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAllTab()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    return-void
.end method

.method public setSaveBtnVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->saveMenuItem:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public tabVisibity(Z)V
    .locals 2

    const v1, 0x7f0d00cc

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
