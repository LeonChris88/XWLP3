.class public Lcom/android/mms/ui/RecipientsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecipientsAdapter.java"


# static fields
.field private static final EMAIL_FILTER_URI:Landroid/net/Uri;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mPatternString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v0, "content://com.android.contacts/data/phone_emails/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f030025

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    const/4 v9, 0x4

    const/4 v10, 0x0

    const v8, 0x7f080091

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f080095

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v8, 0x7f080096

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x0

    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_4

    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_1

    const-string v4, ""

    if-eqz v6, :cond_1

    move-object v4, v6

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v9}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 14

    const/4 v10, 0x3

    const/16 v13, 0x21

    const/4 v12, 0x0

    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v5, ""

    :goto_0
    const-string v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    :goto_2
    return-object v5

    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    const-string v4, ""

    :goto_3
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_4
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "person_id"

    invoke-direct {v9, v10, v7}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "label"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/Annotation;

    const-string v10, "number"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    goto :goto_2

    :cond_4
    const-string v9, ", "

    const-string v10, " "

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-instance v9, Landroid/text/Annotation;

    const-string v10, "name"

    invoke-direct {v9, v10, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v12, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 14

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v11, 0x0

    :cond_1
    :goto_0
    return-object v11

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v0, "*"

    const-string v2, ".*"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "?"

    const-string v2, ".?"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "+"

    const-string v2, "\\+"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "("

    const-string v2, "\\("

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, ")"

    const-string v2, "\\)"

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "["

    const-string v2, "\\["

    invoke-virtual {v10, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/RecipientsAdapter;->mPatternString:Ljava/lang/String;

    const-string v8, ""

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0x1f4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    const/4 v0, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-direct {p0, v7}, Lcom/android/mms/ui/RecipientsAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v8, ""

    :cond_3
    :goto_2
    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientsAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC,sort_key,data2"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x7

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v0

    const/4 v0, 0x1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v0

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v8, v12, v0

    const/4 v0, 0x4

    const-string v2, "\u00a0"

    aput-object v2, v12, v0

    const/4 v0, 0x5

    aput-object v7, v12, v0

    const/4 v0, 0x6

    aput-object v9, v12, v0

    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/mms/ui/RecipientsAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v13, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v13, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v11, v0

    goto/16 :goto_0

    :cond_4
    move-object v7, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_6
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    goto/16 :goto_0
.end method
