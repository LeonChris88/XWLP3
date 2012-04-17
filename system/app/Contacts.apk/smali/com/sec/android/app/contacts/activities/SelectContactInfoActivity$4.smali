.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;
.super Landroid/os/AsyncTask;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/Entity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$oldEntities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->val$cursor:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->val$oldEntities:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->val$cursor:Landroid/database/Cursor;

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    throw v3

    :cond_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->val$oldEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$402(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$502(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$600(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    goto :goto_0
.end method
