.class Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;
.super Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankDefaultImageProvider"
.end annotation


# static fields
.field private static sDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactPhotoManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;ZZJ)V
    .locals 4

    sget-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v1, Lcom/android/contacts/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
