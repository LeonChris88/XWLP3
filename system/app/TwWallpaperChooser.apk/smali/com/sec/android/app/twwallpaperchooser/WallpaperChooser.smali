.class public Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;,
        Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

.field private mGallery:Landroid/widget/Gallery;

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWallpaperSet:Z

.field private mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

.field private mSetLockscreen:Z

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mlist:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 8

    const/16 v6, 0x18

    const/4 v5, 0x0

    const v7, 0x7f040001

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v5

    const-string v5, "drawable"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    iget-object v5, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImages:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mThumbs:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->addCustomerWallpaper(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    invoke-direct {p0, v3, v1, v7}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    const/high16 v4, 0x7f04

    invoke-direct {p0, v3, v1, v4}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    return-void
.end method

.method private selectWallpaper(I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v11, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getCustomerCount()I

    move-result v1

    if-lez v1, :cond_3

    if-ge p1, v1, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mCustomer:Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    invoke-virtual {v8, p1, v11}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getImageCustomerWallpaper(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "file://"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v7, "image/jpeg"

    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ATTACH_DATA"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mSetLockscreen:Z

    if-eqz v8, :cond_4

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v10, "com.cooliris.media.LockScreenPhotographs"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    sub-int v9, p1, v1

    aget-object v2, v8, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_1

    iget-object v8, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    aget-object v2, v8, p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.resource://com.sec.android.app.twwallpaperchooser/drawable/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.cooliris.media"

    const-string v10, "com.cooliris.media.Photographs"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->selectWallpaper(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->requestWindowFeature(I)Z

    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findWallpapers()V

    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->setContentView(I)V

    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;

    invoke-direct {v2, p0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$ImageAdapter;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v3}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v1, 0x7f06

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mlist:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mSetLockscreen:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->cancel()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;-><init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mLoader:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->mIsWallpaperSet:Z

    return-void
.end method
