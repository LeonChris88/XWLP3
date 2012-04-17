.class Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->clear()V

    const/4 v3, -0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    invoke-direct {v0, v2, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;)Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
