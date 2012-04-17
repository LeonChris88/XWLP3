.class Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewEntryDimensions"
.end annotation


# instance fields
.field private final mAccountIconSize:I

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mWidePaddingLeft:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f08001a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    const v0, 0x7f08001b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    const v1, 0x7f080019

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f08001d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mWidePaddingLeft:I

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingLeft:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingRight:I

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingTop:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mPaddingBottom:I

    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mAccountIconSize:I

    return-void
.end method


# virtual methods
.method public getAccountIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->mAccountIconSize:I

    return v0
.end method
