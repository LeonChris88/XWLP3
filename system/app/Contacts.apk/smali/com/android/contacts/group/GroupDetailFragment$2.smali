.class Lcom/android/contacts/group/GroupDetailFragment$2;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3

    new-instance v0, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$100(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, -0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, p2}, Lcom/android/contacts/group/GroupDetailFragment;->access$300(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$400(Lcom/android/contacts/group/GroupDetailFragment;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$500(Lcom/android/contacts/group/GroupDetailFragment;I)V

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$600(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
