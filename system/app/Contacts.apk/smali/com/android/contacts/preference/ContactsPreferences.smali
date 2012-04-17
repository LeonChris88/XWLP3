.class public final Lcom/android/contacts/preference/ContactsPreferences;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    iput v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/preference/ContactsPreferences;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/preference/ContactsPreferences;)Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-object v0
.end method


# virtual methods
.method public getDefaultDisplayOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_1
.end method

.method public getOnlyPhones()Z
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "only_phones"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSendContactType()I
    .locals 4

    iget-object v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "send_contact_type"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSortOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_1
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/preference/ContactsPreferences;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    iput v2, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mDisplayOrder:I

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setOnlyPhones(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "only_phones"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSendContactType(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "send_contact_type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/preference/ContactsPreferences;->mSortOrder:I

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/preference/ContactsPreferences;->mListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    :cond_0
    return-void
.end method
