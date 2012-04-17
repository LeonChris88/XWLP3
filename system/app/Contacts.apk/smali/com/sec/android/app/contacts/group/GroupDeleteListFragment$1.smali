.class Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;
.super Ljava/lang/Object;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    const-string v1, "system_id is null"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;->setSelection(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
