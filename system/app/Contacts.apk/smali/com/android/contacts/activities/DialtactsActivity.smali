.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Landroid/app/Activity;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field public static VT_ENABLE:Z


# instance fields
.field private mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mCallLogCustomTabView:Landroid/view/View;

.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mDialCustomTabView:Landroid/view/View;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

.field private mFavoCustomTabView:Landroid/view/View;

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field private mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$12;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$13;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/contacts/widget/ContactsViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private enterSearchUi()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v3

    invoke-direct {p0, v3, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setVisibility(I)V

    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.phone.action.RECENT_CALLS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareSearchView()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0a01ac

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0d0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v0

    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v4, v3, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    if-eq v0, v3, :cond_2

    invoke-direct {p0, v0, v6}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v4, v3}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    iput v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    goto :goto_1
.end method

.method private setupCallLog()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method private setupDialer()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201c5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method private setupFavorites()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201c9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFavoCustomTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DialtactsActivity"

    const-string v2, "Failed to show soft input method."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentDialtactsPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "contactListFilter"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v0

    :goto_0
    instance-of v1, p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadListener:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setListener(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$Listener;)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onVisibilityChanged(Z)V

    goto :goto_1

    :cond_3
    instance-of v1, p1, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v2, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->clearDigits()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    new-instance v1, Lcom/android/contacts/list/ContactListFilterController;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    const v1, 0x7f0d00aa

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    new-instance v2, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iput v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    return-void

    :cond_2
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const v8, 0x7f0d025a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v8, 0x7f0d025c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v8, 0x7f0d025d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v8, 0x7f0d025b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v8, 0x7f0d023d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v8, 0x7f0d023e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v8, :cond_1

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    return v12

    :cond_0
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mAddFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_2
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v6, :cond_3

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->onStart(Z)V

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
