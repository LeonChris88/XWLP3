.class public final Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;
.super Landroid/preference/CheckBoxPreference;
.source "OnlyContactsWithPhonesPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    return-void
.end method


# virtual methods
.method protected persistBoolean(Z)Z
    .locals 2

    move v0, p1

    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setOnlyPhones(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/preference/OnlyContactsWithPhonesPreference;->notifyChanged()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
