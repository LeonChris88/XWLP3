.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# static fields
.field private static mGroupListCount:I


# instance fields
.field private mCustomActionBarView:Landroid/view/View;

.field private mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field private final mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsAutoAdd:Z

.field private mIsEditable:Z

.field private mMode:I

.field private mShowGroupSourceInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupListCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/GroupDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/contacts/activities/GroupDetailActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mMode:I

    return p1
.end method

.method private adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040070

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private finishWithHidingIME()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    return-void
.end method

.method private updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    const v2, 0x7f0d0114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    const-string v8, "ModifiedIds"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v2

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iget v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mMode:I

    invoke-static {p0, v8, v2, v9}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JI)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_1
    if-ne p2, v8, :cond_0

    const-string v8, "result"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    const-string v8, ""

    aput-object v8, v4, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    const-string v9, "mailto:"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v8, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    if-ne p2, v8, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "result"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v8, "smsto"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v8, "sendto"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    if-ne p2, v8, :cond_0

    const-string v8, "GroupInfo"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    iget-object v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GroupInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "isEditable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsEditable:Z

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const-string v1, "AutoAdd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    const v1, 0x7f040078

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0181

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-boolean v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsEditable:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setIsEditableGroup(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mShowGroupSourceInActionBar:Z

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finishWithHidingIME()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "AutoAdd"

    iget-boolean v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v2, v4, :cond_0

    iput v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mMode:I

    const-string v2, "EditMode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iput v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mMode:I

    const-string v2, "EditMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v2, v4, :cond_1

    const-string v2, "EditMode"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0, v1, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v2, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "actionCode"

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SelectMode"

    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "actionCode"

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "SelectMode"

    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0238 -> :sswitch_4
        0x7f0d0239 -> :sswitch_3
        0x7f0d0276 -> :sswitch_1
        0x7f0d0277 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const v8, 0x7f0d0238

    const v7, 0x7f0d0239

    const v6, 0x7f0d0276

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isLoading()Z

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0d0277

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsEditable:Z

    if-nez v4, :cond_0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v4, 0x7f0d0277

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-boolean v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    if-eqz v4, :cond_2

    const-string v4, "com.google"

    iget-object v5, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    sget v4, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupListCount:I

    if-nez v4, :cond_3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method
