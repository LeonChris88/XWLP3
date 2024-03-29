.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "SIMContactSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

.field private mSelectedContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

.field private mode:I

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

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mode:I

    invoke-static {p2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    const-string v0, "[ReFResh]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMport doInBackground mSelectedContactIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v0, "[ReFResh]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMport doInBackground id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDiskFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->this$0:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->access$700(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->copyToPhone(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->doInBackground(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;[Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mode:I

    if-nez v0, :cond_0

    const v0, 0x7f0a0282

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mTarget:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->mode:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->onPostExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V
    .locals 7

    const/4 v3, 0x1

    const v0, 0x7f0a0057

    invoke-virtual {p1, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    new-instance v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask$1;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    move-object v0, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->progress:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->progress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;->onPreExecute(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    return-void
.end method
