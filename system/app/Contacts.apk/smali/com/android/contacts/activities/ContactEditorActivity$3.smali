.class Lcom/android/contacts/activities/ContactEditorActivity$3;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    const/high16 v3, 0x280

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x280

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "addToDefaultDirectory"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void
.end method

.method public onReverted()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$200(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$3;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
