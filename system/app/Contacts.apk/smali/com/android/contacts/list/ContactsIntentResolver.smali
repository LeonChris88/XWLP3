.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 10

    const/16 v9, 0x64

    const/16 v8, 0x5a

    const/16 v7, 0xf

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v1}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ContactsIntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called with action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_0
    :goto_0
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v1

    :cond_2
    const-string v2, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_3
    const-string v2, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_4
    const-string v2, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_5
    const-string v2, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_6
    const-string v2, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    :cond_7
    const-string v2, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v0, "com.android.contacts.extra.GROUP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setGroupName(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "ContactsIntentResolver"

    const-string v2, "Intent missing a required extra: com.android.contacts.extra.GROUP"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto :goto_0

    :cond_9
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    :cond_a
    :goto_1
    const-string v0, "phone-need-call"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x3c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    :cond_c
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    :cond_d
    const-string v2, "vnd.android.cursor.dir/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    :cond_e
    const-string v2, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    :cond_f
    const-string v2, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    :cond_10
    const-string v2, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v0, 0x69

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    :cond_11
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto :goto_1

    :cond_12
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "alias.DialShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v0, 0x78

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "alias.MessageShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x82

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_16
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_18
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_19
    const-string v2, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1a
    const-string v2, "vnd.android.cursor.item/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    :cond_1b
    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "hidecreatelabel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    :goto_2
    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_2

    :cond_1d
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "call"

    const-string v2, "action_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1e
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_1f
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v0, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x8c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_22
    const-string v2, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v2, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    const-string v2, "originalRequest"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    if-eqz v0, :cond_23

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    :cond_23
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    :cond_24
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "call"

    const-string v3, "action_msg"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/android/contacts/CallContactActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_26
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_27
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "phone"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_28
    const-string v2, "intent.action.INTERACTION_TAB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "intent.action.INTERACTION_TOPMENU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_29
    const-string v0, "email-phone-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    :cond_2a
    const-string v0, "email-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    :cond_2b
    const-string v0, "phone-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0xaa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    :cond_2c
    const-string v0, "vcard-multi"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0xf0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    :cond_2d
    const-string v0, "phone"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0xaa

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    :cond_2e
    const-string v0, "email-phone"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_2f
    const-string v0, "namecard"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_30
    const-string v0, "group-phone-email"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_31
    const-string v0, "group-email"

    const-string v2, "additional"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    :cond_32
    const-string v2, "intent.action.INTERACTION_LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v0, 0x104

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_33
    const-string v2, "intent.action.EXPORT_SIM_CONTACT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v0, 0x12c

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_34
    const-string v2, "intent.action.IMPORT_SIM_CONTACT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v0, 0x136

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v0, "account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v0, "account_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const-string v2, "android.intent.action.SIM_IMPORT_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v0, 0x136

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    const-string v0, "vnd.sec.contact.phone"

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    const-string v2, "com.sec.android.app.contacts.action.CONTACT_SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/16 v0, 0x14a

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_37
    const-string v2, "com.sec.android.app.contacts.action.MULTI_DELETE_CONTACTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v0, 0x154

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_38
    const-string v2, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v0, 0x15e

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    :cond_39
    const-string v2, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15f

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0
.end method
