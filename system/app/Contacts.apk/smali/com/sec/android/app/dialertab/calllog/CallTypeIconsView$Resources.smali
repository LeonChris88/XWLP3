.class Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public final autoRejected:Landroid/graphics/drawable/Drawable;

.field public final iconMargin:I

.field public final incoming:Landroid/graphics/drawable/Drawable;

.field public final missed:Landroid/graphics/drawable/Drawable;

.field public final outgoing:Landroid/graphics/drawable/Drawable;

.field public final rejected:Landroid/graphics/drawable/Drawable;

.field public final voicemail:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->voicemail:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->rejected:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->autoRejected:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView$Resources;->iconMargin:I

    return-void
.end method
