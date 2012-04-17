.class Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewCache"
.end annotation


# instance fields
.field public final companyView:Landroid/widget/TextView;

.field public final displayNameView:Landroid/widget/TextView;

.field public final layoutResourceId:I

.field public final photoView:Landroid/widget/ImageView;

.field public final starredView:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    const v0, 0x7f0d0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    const v0, 0x7f0d0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    const v0, 0x7f0d0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/CheckBox;

    iput p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    return-void
.end method
