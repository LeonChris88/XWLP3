.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24

    move-object/from16 v22, p2

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/LayoutInflater;

    const v1, 0x7f040055

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    :cond_0
    const v1, 0x7f0d0129

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getPhotoID()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, v17

    invoke-static {v1, v3, v4, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1400(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    if-eqz v18, :cond_1

    const v1, 0x7f0d0127

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-object v22

    :cond_1
    const v1, 0x7f0d0127

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020107

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0d0127

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f020107

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d0129

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v1, 0x7f0d012b

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012c

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012f

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0130

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0284

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0d0129

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "iw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v14, Landroid/text/SpannableString;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x12

    move/from16 v0, v16

    invoke-virtual {v14, v1, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v10

    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1600()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "mimetype"

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "is_super_primary"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "data1"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012f

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0130

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v16

    invoke-static {v1, v3, v7, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v8, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-lez v15, :cond_9

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v15, v1, 0x1

    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ltz v15, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v15, :cond_a

    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-ltz v15, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v15, v16

    if-lt v1, v3, :cond_b

    add-int v1, v15, v16

    if-gt v15, v1, :cond_b

    const v1, 0x7f0d012b

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    add-int v4, v15, v16

    invoke-virtual {v3, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    add-int v1, v15, v16

    if-ltz v1, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v15, v16

    if-lt v1, v3, :cond_4

    const v1, 0x7f0d012c

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    add-int v4, v15, v16

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_2
    const v1, 0x7f0d0129

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const v1, 0x7f0d012b

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012c

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ltz v20, :cond_d

    move/from16 v0, v20

    if-gt v0, v12, :cond_d

    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012f

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0130

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    add-int v3, v16, v20

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    const v1, 0x7f0d012a

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0284

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_d
    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    const v1, 0x7f0d0129

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ltz v20, :cond_e

    move/from16 v0, v20

    if-gt v0, v12, :cond_e

    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d012f

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d0130

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    add-int v3, v16, v20

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    const v1, 0x7f0d012e

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
