.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HorizontalLineSpan"
.end annotation


# instance fields
.field mDrawable:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;


# direct methods
.method public constructor <init>(IILandroid/text/Spannable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;-><init>(IILandroid/text/Spannable;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->mDrawable:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->mDrawable:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;

    return-object v0
.end method

.method public resetWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->mDrawable:Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineDrawable;->renewBounds(I)V

    return-void
.end method
