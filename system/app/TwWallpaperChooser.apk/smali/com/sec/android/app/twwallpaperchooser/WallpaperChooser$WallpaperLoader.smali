.class Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;
.super Landroid/os/AsyncTask;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$100(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-virtual {v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$200(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/android/app/twwallpaperchooser/LauncherCustomer;->getBitmapCustomerWallpaper(Landroid/content/res/Resources;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-boolean v2, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$300(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$300(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v2}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$400(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    invoke-static {v2, p1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$302(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->postInvalidate()V

    iget-object v2, p0, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->this$0:Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;->access$502(Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser;Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;)Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twwallpaperchooser/WallpaperChooser$WallpaperLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
