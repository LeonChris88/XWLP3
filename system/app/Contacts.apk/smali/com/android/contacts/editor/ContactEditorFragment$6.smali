.class Lcom/android/contacts/editor/ContactEditorFragment$6;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
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

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1602(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 12
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

    const-wide/16 v10, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time needed for loading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v8}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No contact found. Closing activity"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactNotFound()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1902(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1702(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v6, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->setData(Lcom/android/contacts/ContactLoader$Result;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v9}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2200(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v6, v10, v11}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2002(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment$6;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_2
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time needed for setting UI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$6;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

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
