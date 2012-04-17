.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-static {v11}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_2

    move-object/from16 v7, p2

    :goto_0
    const v11, 0x1020014

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v11, 0x1020015

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0d00b4

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v11, 0x7f0d00be

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v11, 0x7f0d00bd

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v11, v11, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v11, v11, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_5

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_6

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a01ed

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a01ec

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_1

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_4
    return-object v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v11}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const v11, 0x7f0400a6

    :goto_5
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v11, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    goto/16 :goto_0

    :cond_3
    const v11, 0x7f0400a5

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0x8

    goto/16 :goto_2

    :cond_6
    const/16 v11, 0x8

    goto/16 :goto_3

    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
