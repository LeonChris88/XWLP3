.class Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;
.super Landroid/os/AsyncTask;
.source "AddToRejectListInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/AddToRejectListInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryForAddToRejectTask"
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

    iput-object p1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;-><init>(Lcom/android/contacts/interactions/AddToRejectListInteraction;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;
    .locals 9

    const/4 v6, 0x0

    aget-object v5, p1, v6

    iget-object v0, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->contactUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$500(Lcom/android/contacts/interactions/AddToRejectListInteraction;)I

    move-result v1

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v6}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$600(Lcom/android/contacts/interactions/AddToRejectListInteraction;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$700(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$800(Lcom/android/contacts/interactions/AddToRejectListInteraction;J)Ljava/lang/String;

    move-result-object v2

    iput v1, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->countOfTotalBlackList:I

    iput-object v3, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->exactlyMatchblackListHashMap:Ljava/util/HashMap;

    iput-object v4, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->phoneNumbers:Ljava/util/ArrayList;

    iput-object v2, v5, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;->displayName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v6, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$900(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    iget-object v6, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v6, v5}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1000(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->doInBackground([Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1100(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-virtual {v1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1, v0}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1200(Lcom/android/contacts/interactions/AddToRejectListInteraction;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->this$0:Lcom/android/contacts/interactions/AddToRejectListInteraction;

    invoke-static {v1, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->access$1300(Lcom/android/contacts/interactions/AddToRejectListInteraction;Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTask;->onPostExecute(Lcom/android/contacts/interactions/AddToRejectListInteraction$QueryForAddToRejectTaskResult;)V

    return-void
.end method
