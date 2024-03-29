.class Lcom/android/contacts/detail/ContactLoaderFragment$1;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
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
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onContactNotFound()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$1;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/ContactLoaderFragment$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
