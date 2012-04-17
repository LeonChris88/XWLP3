.class public Lcom/android/contacts/list/ShortcutIntentBuilder;
.super Ljava/lang/Object;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$LoadingAsyncTask;,
        Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;
    }
.end annotation


# static fields
.field private static final CONTACT_COLUMNS:[Ljava/lang/String;

.field private static final PHONE_COLUMNS:[Ljava/lang/String;

.field private static final PHOTO_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mBorderColor:I

.field private final mBorderWidth:I

.field private final mContext:Landroid/content/Context;

.field private final mIconDensity:I

.field private mIconSize:I

.field private final mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ShortcutIntentBuilder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->PHONE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1420

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v4, "mode"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "exclude_mimes"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v2}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    return-void
.end method

.method private createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p3}, Lcom/android/contacts/list/ShortcutIntentBuilder;->getPhotoBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "tel"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const v4, 0x7f02000b

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mListener:Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;

    invoke-interface {v4, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;->onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v4, "smsto"

    invoke-static {v4, p4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const v4, 0x7f02000c

    invoke-direct {p0, v0, p5, p6, v4}, Lcom/android/contacts/list/ShortcutIntentBuilder;->generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private generatePhoneNumberIcon(Landroid/graphics/Bitmap;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v10, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v19, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v3, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v9, Landroid/text/TextPaint;

    const/16 v5, 0x101

    invoke-direct {v9, v5}, Landroid/text/TextPaint;-><init>(I)V

    const v5, 0x7f080027

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v5, 0x7f07

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v5, 0x4080

    const/4 v6, 0x0

    const/high16 v7, 0x4000

    const v8, 0x7f070001

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderColor:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v5, 0x7f080028

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    iget v5, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v12, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v21, 0x2

    add-int v20, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    add-int/lit8 v5, v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sub-int v6, v6, v20

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, v23

    invoke-virtual {v3, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v5, v5

    const/high16 v6, 0x4000

    mul-float v6, v6, v18

    sub-float/2addr v5, v6

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v9, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v22

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    int-to-float v7, v7

    sub-float v7, v7, v22

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v0, v12, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v24, v0

    sub-int v8, v8, v24

    sub-int v8, v8, v21

    int-to-float v8, v8

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    const/high16 v5, 0x41a0

    mul-float/2addr v5, v10

    float-to-int v5, v5

    sub-int v5, v14, v5

    const/4 v6, -0x1

    const/high16 v7, 0x4198

    mul-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v11, v5, v6, v14, v7}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    neg-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mBorderWidth:I

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v15, v0, v11, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v13
.end method

.method private generateQuickContactIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    iget v7, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconSize:I

    invoke-direct {v1, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->drawBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080484

    iget v8, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getPhotoBitmap([B)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018b

    iget v3, p0, Lcom/android/contacts/list/ShortcutIntentBuilder;->mIconDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createContactShortcutIntent(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;-><init>(Lcom/android/contacts/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder$PhoneNumberLoadingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
