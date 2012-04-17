.class Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionButton:Landroid/widget/ImageView;

.field public final actionsViewContainer:Landroid/view/View;

.field public final blacklistIndicator:Landroid/view/View;

.field public final connectionIcon:Landroid/widget/LinearLayout;

.field public final data:Landroid/widget/TextView;

.field public final footer:Landroid/widget/TextView;

.field public final presenceIcon:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final primaryIndicator:Landroid/view/View;

.field public final secondaryActionButton:Landroid/widget/ImageView;

.field public final secondaryActionDivider:Landroid/view/View;

.field public final secondaryActionViewContainer:Landroid/view/View;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0d00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const/high16 v0, 0x7f0d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    const v0, 0x7f0d00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    const v0, 0x7f0d00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    const v0, 0x7f0d00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blacklistIndicator:Landroid/view/View;

    const v0, 0x7f0d00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    const v0, 0x7f0d00b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionButton:Landroid/widget/ImageView;

    const v0, 0x7f0d00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    const v0, 0x7f0d00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    return-void
.end method
