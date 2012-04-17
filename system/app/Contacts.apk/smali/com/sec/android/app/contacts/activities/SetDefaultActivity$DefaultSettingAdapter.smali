.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultSettingAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-boolean v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    if-eqz v2, :cond_5

    iget v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v2, :pswitch_data_0

    :goto_4
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_5
    return-void

    :cond_0
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    goto :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    goto :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    goto :goto_4

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    if-eqz p2, :cond_0

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->bindDetailView(ILandroid/view/View;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400bd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    const v3, 0x7f0d0114

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040096

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
