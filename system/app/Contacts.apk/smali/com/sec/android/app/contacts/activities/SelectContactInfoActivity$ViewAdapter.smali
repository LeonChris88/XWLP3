.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSeparators:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    return-void
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    const v10, 0x7f0d0180

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v10, "persist.sys.country"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x1

    const-string v10, "TNZ"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "VNZ"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "VNX"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "NZC"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "PH"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "NO"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "SE"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    iget-boolean v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isFirst:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    const-string v10, "vnd.android.cursor.item/phone_v2"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v11, 0x7f0a0048

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const-string v10, "vnd.android.cursor.item/im"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v5, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v4, :cond_a

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_3
    const-string v10, "vnd.android.cursor.item/email_v2"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v11, 0x7f0a014a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v10, "vnd.android.cursor.item/im"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v11, 0x7f0a004a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    const-string v10, "vnd.android.cursor.item/sip_address"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v11, 0x7f0a0043

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, -0x1

    const-string v10, "vnd.android.cursor.item/organization"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v3, 0x1

    :goto_3
    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$800(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I

    move-result v10

    if-ne v10, v3, :cond_8

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v11, 0x7f0a004c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v5, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v4, :cond_10

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mContext:Landroid/content/Context;

    check-cast v10, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v10, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$900(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)I

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)C

    move-result v10

    packed-switch v10, :pswitch_data_0

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_0
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :pswitch_1
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :pswitch_2
    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_11
    const-string v10, "vnd.android.cursor.item/note"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v5, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    const/16 v11, 0xd

    const/16 v12, 0x20

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    const-string v10, "vnd.android.cursor.item/postal-address_v2"

    iget-object v11, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v5, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    if-eqz v7, :cond_13

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    if-eqz v4, :cond_14

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_6
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_14
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_15
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    iget-object v5, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLabelLines:I

    invoke-direct {p0, v5, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->mimetype:Ljava/lang/String;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-eqz v4, :cond_18

    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    iget v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->maxLines:I

    invoke-direct {p0, v0, v10}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    :cond_17
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, v9, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_18
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_19
    iget-object v10, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final countEntries(Ljava/util/ArrayList;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->countEntries(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public final getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;>;IZ)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz p3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_1

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    :goto_2
    return-object v4

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, p1, v5}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->getEntry(Ljava/util/ArrayList;IZ)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    move-result-object v0

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-object v0, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->entry:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$700(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->bindView(Landroid/view/View;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b4

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;-><init>()V

    const v3, 0x7f0d01f1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->label:Landroid/widget/TextView;

    const v3, 0x7f0d01f2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->data:Landroid/widget/TextView;

    const v3, 0x7f0d01f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->noteData:Landroid/widget/TextView;

    const v3, 0x7f0d01f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->titleBar:Landroid/widget/TextView;

    const v3, 0x7f0d00df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    const v3, 0x7f0d01f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->header:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final setSections(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSections:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->mSeparators:Z

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
