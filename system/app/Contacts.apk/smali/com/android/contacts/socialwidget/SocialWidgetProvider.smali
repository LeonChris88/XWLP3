.class public Lcom/android/contacts/socialwidget/SocialWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SocialWidgetProvider.java"


# static fields
.field private static sLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/ContactLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method private static bindRemoteViews(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-string v0, "SocialWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for widget with id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0400c1

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v2

    invoke-static {p0, v8, v8, v2, v3}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZJ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v0, v7

    invoke-static {v7, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1420

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "mode"

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v0, 0x7f0d0201

    invoke-virtual {v1, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v2

    invoke-static {p0, v8, v8, v2, v3}, Lcom/android/contacts/util/ContactBadgeUtil;->loadDefaultAvatarPhoto(Landroid/content/Context;ZZJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .locals 8

    const v5, 0x7f0d0095

    const/4 v3, 0x0

    sget-object v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/ContactLoader;

    if-eqz v7, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {v7}, Lcom/android/contacts/ContactLoader;->startLoading()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/contacts/ContactLoader;->reset()V

    :cond_2
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0400c1

    invoke-direct {v6, v1, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0a01b4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0d0203

    const/16 v4, 0x8

    invoke-virtual {v6, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, p2, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getContactUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/contacts/ContactLoader;

    const/4 v4, 0x1

    move-object v1, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    new-instance v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/contacts/socialwidget/SocialWidgetProvider$1;-><init>(Landroid/content/Context;ILandroid/appwidget/AppWidgetManager;)V

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/ContactLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->startLoading()V

    sget-object v1, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static setDisplayNameAndSnippet(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/app/PendingIntent;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/util/StreamItemEntry;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v4, p2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x7f0a00fc

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const v11, 0x7f0a01b1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object p3, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080023

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v6, v11}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v5, v6, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v11, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v5, v9, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    const v11, 0x7f0d0095

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v11, 0x7f0d0095

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v11, 0x7f0d0203

    const/16 v12, 0x8

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p5, :cond_3

    const v11, 0x7f0d01ff

    move-object/from16 v0, p5

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/16 v12, 0x30

    if-gt v11, v12, :cond_5

    const-string v11, "\n"

    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v11, 0x7f0d0203

    invoke-virtual {p1, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v11, 0x7f0d0095

    const/16 v12, 0x8

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v11, 0x7f0d0203

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getAccountType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getDataSet()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    sget-object v11, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v2, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v11, v1, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->getViewStreamItemActivity()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v11, 0x7f0d0202

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v2, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_5
    const-string v11, "  "

    invoke-virtual {v5, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private static setPhoto(Landroid/widget/RemoteViews;Landroid/graphics/Bitmap;)V
    .locals 1

    const v0, 0x7f0d0200

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 8

    move-object v1, p2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ContactLoader;

    if-eqz v4, :cond_0

    const-string v5, "SocialWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping loader for widget with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader;->stopLoading()V

    sget-object v5, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->sLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->getInstance()Lcom/android/contacts/socialwidget/SocialWidgetSettings;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/contacts/socialwidget/SocialWidgetSettings;->remove(Landroid/content/Context;[I)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 7

    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    const-string v4, "SocialWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate called for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p3

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    const/4 v4, 0x0

    invoke-static {p1, p2, v0, v4}, Lcom/android/contacts/socialwidget/SocialWidgetProvider;->loadWidgetData(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
