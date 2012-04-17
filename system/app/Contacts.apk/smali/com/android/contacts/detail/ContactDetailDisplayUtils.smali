.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v5, 0x0

    const v4, 0x7f0d0221

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0d0222

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0d0223

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3, v5}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getComments()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3, v5}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    return-object p2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 21

    const v4, 0x7f0400c9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    const v4, 0x7f0d021d

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1

    const v4, 0x7f0400cc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-object v13

    :cond_1
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/util/StreamItemPhotoEntry;

    add-int/lit8 v4, v16, 0x1

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v4, 0x7f0400cd

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0d0220

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    const v11, 0x7f0d0224

    move-object v7, v3

    move-object/from16 v8, p2

    move-object v10, v6

    move-object/from16 v12, p4

    invoke-static/range {v7 .. v12}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v16, v16, 0x2

    goto :goto_1

    :cond_2
    const v4, 0x7f0400cb

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0d0220

    move-object/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const v4, 0x7f0400cc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080013

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    :goto_0
    const v3, 0x7f0a019b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 13

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v10

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    iget-object v4, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "data1"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "data4"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    :goto_2
    return-object v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object v0, v9

    goto :goto_1

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :goto_3
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    move-object v0, v9

    goto :goto_1

    :cond_7
    const v10, 0x7f0a01ab

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v3, v1

    :goto_0
    return-object v3

    :cond_0
    move-object v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f0d021f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0d0200

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p5, :cond_0

    invoke-virtual {v9, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    return-void

    :cond_0
    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 1

    if-eqz p0, :cond_0

    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoadingPhoto()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    invoke-static {v3, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v5

    invoke-static {p0, v4, v7, v5, v6}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZJ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 12

    const/4 v4, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-virtual {v9}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :cond_1
    invoke-static {v11, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    if-eqz v10, :cond_2

    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
