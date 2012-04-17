.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;
.super Ljava/lang/Object;
.source "GroupSelectionFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/group/AggreGroupMetaDataLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
