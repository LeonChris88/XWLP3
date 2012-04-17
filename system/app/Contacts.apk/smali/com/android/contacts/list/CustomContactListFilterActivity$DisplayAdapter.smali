.class public Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

.field private mChildWithPhones:Z

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mChildWithPhones:Z

    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    if-ltz p2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildId(II)J
    .locals 4

    const-wide/high16 v2, -0x8000

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-nez p4, :cond_0

    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040049

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    :cond_0
    const v9, 0x1020014

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x1020015

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x1020001

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v9, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p4

    :cond_1
    iget-object v9, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v9, 0x7f0a0115

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v1, :cond_1

    :goto_1
    add-int/2addr v2, v4

    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    if-nez p3, :cond_0

    iget-object v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040048

    invoke-virtual {v5, v6, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    const v5, 0x1020014

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x1020015

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v6, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    const-string v5, "vnd.sec.contact.phone"

    iget-object v6, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0119

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    if-nez v5, :cond_1

    const/16 v4, 0x8

    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_2
    const-string v5, "primary.sim.account_name"

    iget-object v6, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0241

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->notifyDataSetChanged()V

    return-void
.end method
