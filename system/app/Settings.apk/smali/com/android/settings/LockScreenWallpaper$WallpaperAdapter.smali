.class public Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/settings/LockScreenWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090082

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/LockScreenWallpaper$ViewHolder;-><init>()V

    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move v0, p1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const-string v4, "com.cooliris.media"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "com.sec.android.app.twwallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    goto/16 :goto_0

    :cond_4
    return-object p2
.end method
