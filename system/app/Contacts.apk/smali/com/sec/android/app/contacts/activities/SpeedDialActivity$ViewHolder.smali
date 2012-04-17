.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeleteCheckBox:Landroid/widget/CheckBox;

.field mItemBg:Landroid/view/ViewGroup;

.field mItemLayout:Landroid/view/ViewGroup;

.field mName:Landroid/widget/TextView;

.field mNumberAdd:Landroid/widget/ImageView;

.field mNumberPhoto:Landroid/widget/ImageView;

.field mPhoto:Landroid/widget/ImageView;

.field mReOrderImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0d020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemBg:Landroid/view/ViewGroup;

    const v0, 0x7f0d020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v0, 0x7f0d0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0d0207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x7f0d020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0d020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0d020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    return-void
.end method
