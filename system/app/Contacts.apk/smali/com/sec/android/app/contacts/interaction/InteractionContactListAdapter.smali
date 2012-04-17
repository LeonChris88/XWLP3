.class public Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "InteractionContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private mActionCode:I

.field private mGroupFilter:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mSelectedContactHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 7

    const/16 v6, 0xaa

    const/16 v5, 0xa0

    const/16 v4, 0x96

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    const/16 v3, 0xfa

    if-ne v2, v3, :cond_5

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "(link_type1!=\'com.sec.android.app.snsaccountfacebook.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountme2day.account_type\' AND link_type1!=\'com.sec.android.app.snsaccounttwitter.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountmyspace.account_type\' AND link_type1!=\'com.sec.android.app.snsaccountlinkedin.account_type\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v5, :cond_6

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_7

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    const-string v2, "(has_email>0 OR has_phone_number>0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v5, :cond_8

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_9

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_2

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    const-string v2, "_id IN (SELECT DISTINCT contact_id FROM raw_contacts WHERE account_type=?   AND account_name=?)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v5, :cond_b

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v6, :cond_c

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    if-ne v2, v4, :cond_a

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_phone_email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0 OR has_phone_number>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : contact_email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_8
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "has_email>0 and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_9
    const-string v2, "InteractionContactListAdapter"

    const-string v3, "configureSelection : favorite_phone_email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "(has_email>0 or has_phone_number>0) and starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setSimFeatureSelection(Ljava/lang/StringBuilder;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    return-void
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6

    iget v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mDisplayNameColumnIndex:I

    iget v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mAlternativeDisplayNameColumnIndex:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;IIZI)V

    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p3, v5, p2}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v0, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6

    const-string v4, "InteractionContactListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const-string v3, "sort_key"

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    :cond_4
    const-string v3, "sort_key_alt"

    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 7

    const-wide/16 v5, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupFilter:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.sec.contact.agg.account_type"

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/title/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    :goto_0
    cmp-long v2, p2, v5

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz p4, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/groups/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    const-string v2, "content://com.android.contacts/groups/not_assigned/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mActionCode:I

    return-void
.end method

.method public setGroupExtra(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method public setGroupFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mGroupFilter:Z

    return-void
.end method

.method public setSelctedContactHashMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactListAdapter;->mSelectedContactHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public setTopDividerEnabled(Z)V
    .locals 0

    return-void
.end method
