.class Lcom/android/contacts/group/GroupDetailFragment$3;
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

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4

    new-instance v0, Lcom/android/contacts/GroupMemberLoader;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$100(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailFragment;->access$700(Lcom/android/contacts/group/GroupDetailFragment;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/GroupMemberLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->access$500(Lcom/android/contacts/group/GroupDetailFragment;I)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$3;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$800(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
