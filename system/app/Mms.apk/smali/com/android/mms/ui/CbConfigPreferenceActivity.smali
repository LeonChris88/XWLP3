.class public Lcom/android/mms/ui/CbConfigPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CbConfigPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mChannelContainer:Landroid/preference/PreferenceGroup;

.field private mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "channel_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesForMyChannel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private addPreferencesAddMyChannel()V
    .locals 2

    const-string v1, "add_my_channel"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "add_my_channel"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private addPreferencesForMyChannel()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private createChannelPreference(Landroid/database/Cursor;)Landroid/preference/CheckBoxPreference;
    .locals 1

    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V

    return-object v0
.end method

.method private refreshMyChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->startQuery()V

    return-void
.end method

.method private startQuery()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/CbConfigPreferenceActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    iget v1, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    invoke-static {p0, v4}, Lcom/android/mms/ui/ChannelUtils;->getIdbyChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    goto :goto_0

    :pswitch_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v8, v0, -0x2

    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;

    invoke-direct {v0, p0, v8}, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;I)V

    const v1, 0x7f090096

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesFromResource(I)V

    const-string v1, "pref_key_cb_my_channels"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$QueryHandler;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/content/ContentResolver;Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    iput-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity$6;-><init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    const v1, 0x7f090095

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_cb_my_channel_enabled_count"

    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelSetListener:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/EditChannelDialog;->show()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "add_my_channel"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09012e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v2, "pref_key_cb_channel_selection"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelSelectionListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "pref_key_cb_channel_selection"

    const-string v4, "All channels"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "My channel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f090132

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setPreferenceAttr(Landroid/preference/CheckBoxPreference;Landroid/database/Cursor;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "channel_name"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "channel_id"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v8, "is_checked"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-ne v1, v6, :cond_2

    :goto_1
    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mMyChannelCheckListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method
