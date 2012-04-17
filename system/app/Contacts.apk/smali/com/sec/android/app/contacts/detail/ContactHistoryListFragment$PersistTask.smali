.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private targetFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->targetFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    check-cast p2, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    aget-object v2, p2, v6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    :cond_0
    const-string v6, "ContactHistoryListFragment"

    const-string v7, "deleteStrings == null || deleteStrings.size() <= 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v10

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v6, v0, 0x28

    if-nez v6, :cond_4

    div-int/lit8 v1, v0, 0x28

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_2
    const/16 v6, 0x28

    if-ge v3, v6, :cond_5

    mul-int/lit8 v6, v5, 0x28

    add-int/2addr v6, v3

    if-ge v6, v0, :cond_5

    const-string v7, "ContactHistoryListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current checked String : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v6, v5, 0x28

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_3

    const-string v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    mul-int/lit8 v6, v5, 0x28

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    div-int/lit8 v6, v0, 0x28

    add-int/lit8 v1, v6, 0x1

    goto :goto_0

    :cond_5
    const-string v6, "ContactHistoryListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current delete state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->targetFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->progress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->targetFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onFinishedDeletion(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0a0271

    invoke-virtual {p1, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-boolean v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    return-void
.end method
