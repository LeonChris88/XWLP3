.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# static fields
.field public static mPopupMenu:Landroid/widget/PopupMenu;


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAutoAddToDefaultGroup:Z

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mGroupVisible:Z

.field private mHasPhone:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mRelationVisible:Z

.field private mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

.field private mRingtoneKind:Lcom/android/contacts/model/DataKind;

.field private mRingtoneVisible:Z

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v8, "data1"

    invoke-virtual {v3, v8, v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 11

    const/4 v10, 0x5

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_name"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "data_set"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 7

    const/16 v6, 0x8

    const v4, 0x7f0d0225

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0d0226

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0d01e1

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showAddInformationPopupWindow()V
    .locals 11

    const/4 v10, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-direct {v7, v8, v9}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v7, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    sget-object v7, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v7, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v7, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v4

    iget-boolean v7, v4, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    const-string v7, "#displayName"

    iget-object v8, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "#phoneticName"

    iget-object v8, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v7}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v10, v7, v10, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v8, Lcom/android/contacts/editor/RawContactEditorView$2;

    invoke-direct {v8, p0, v1}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    sget-object v7, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private updatePhoneticNameVisibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->requestFocus()Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public getRingtoneEditor()Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d01e4

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    const v0, 0x7f0d01e5

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setDeletable(Z)V

    const v0, 0x7f0d01e6

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const v0, 0x7f0d016f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d0171

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v0, 0x7f0d0172

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const v0, 0x7f0d01e7

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public setGroupVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    return-void
.end method

.method public setRelationVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setRingtone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRintoneVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/RawContactEditorView;->setId(I)V

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    const-string v2, "_id"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    if-eqz p4, :cond_8

    const-string v2, "account_name"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v5, 0x7f0a01f1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "vnd.sec.contact.sim"

    const-string v5, "account_type"

    invoke-virtual {v13, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/contacts/editor/RawContactEditorView;->setSIMLayout(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    :cond_3
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040089

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/DataKind;

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/DataKind;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    :cond_4
    const-string v2, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneKind:Lcom/android/contacts/model/DataKind;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setEnabled(Z)V

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/DataKind;

    iget-boolean v2, v3, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v2, :cond_6

    iget-object v11, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v5, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v5, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01f2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v7, v14

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const-string v2, "account_name"

    invoke-virtual {v13, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0119

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0243

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0244

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0119

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0170

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v7, v14

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a016f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v7, v14

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_f
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_3

    :cond_10
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupVisible:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/EntityDelta;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_11
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRelationVisible:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v12, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_12
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v12, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    invoke-virtual {v12}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v12}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_14
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v12, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    invoke-virtual {v12}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v12}, Lcom/android/contacts/editor/KindSectionView;->removeLabelSection()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_16
    const-string v2, "vnd.android.cursor.item/ringtone"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mHasPhone:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneVisible:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRingtoneEditorView:Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_17
    iget-object v2, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v12, v3, v0, v2, v1}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/GroupMembershipView;->updateSelectedGroup(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
