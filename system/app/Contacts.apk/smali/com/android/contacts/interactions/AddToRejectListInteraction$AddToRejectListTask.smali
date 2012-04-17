.class Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddToRejectListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;


# direct methods
.method private constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method

.method private addToRejectList(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;",
            ">;)V"
        }
    .end annotation

    const-string v8, "reject_number"

    const-string v6, "reject_checked"

    const-string v7, "reject_match"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v10, v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    if-nez v10, :cond_1

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget-object v10, v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget v10, v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->check:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "reject_match = 0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;

    iget-object v10, v10, Lcom/android/contacts/interactions/AddToRejectListInteraction$RejectValue;->number:Ljava/lang/String;

    aput-object v10, v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-virtual {v10}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.sec.android.app.callsetting.allcalls"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;
    .locals 9

    const/4 v8, 0x0

    aget-object v6, p1, v8

    iget-object v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->samePhoneNumContactsIdsArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v8, v0, v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v8, v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    :cond_3
    iget-object v8, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v8, v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x64

    iput v8, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->result:I

    :goto_1
    return-object v6

    :cond_4
    iget-object v5, v6, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->rejectValues:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->addToRejectList(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 4

    const/16 v3, 0x64

    iget v1, p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->result:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-virtual {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v2}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1400(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0298

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$300(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$AddToRejectListTask;->onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method
