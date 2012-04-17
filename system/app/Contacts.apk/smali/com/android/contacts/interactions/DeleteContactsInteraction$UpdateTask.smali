.class public Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "DeleteContactsInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/interactions/DeleteContactsInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->initPowerWaekLock(Landroid/app/Activity;)V

    return-void
.end method

.method private deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private initPowerWaekLock(Landroid/app/Activity;)V
    .locals 4

    move-object v0, p1

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x20000006

    const-string v3, "UpdateTask"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/app/Activity;

    check-cast p2, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/util/ArrayList;)Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v7, 0x32

    const/4 v6, 0x0

    aget-object v2, p2, v6

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$100()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v7, v6, :cond_1

    move v1, v7

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_3

    if-nez v5, :cond_2

    const-string v6, " ( "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {p0, p1, v6}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->deleteProfile(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v3

    goto :goto_1

    :cond_2
    const-string v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v6, " ) "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact_id in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v3, v3, 0x32

    goto/16 :goto_0

    :cond_5
    return-object v11
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "deleteContacts"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$202(Z)Z

    invoke-static {v3}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$302(Z)Z

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0, v3}, Lcom/android/contacts/activities/PeopleActivity;->onDeleteRequested(Z)V

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "deleteContacts"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$000()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "deleteContacts"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const v2, 0x7f0a02c0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/contacts/interactions/DeleteContactsInteraction;->access$002(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/DeleteContactsInteraction$UpdateTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
