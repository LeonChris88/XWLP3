.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v2, v3

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    new-array v4, v2, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iput-object v4, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "CallDetailDeleteActivity"

    const-string v4, "invalid URI starting call details"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 19

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0a0094

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    aget-object v10, p1, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1002(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v2, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1102(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    iget-object v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v11

    iget-object v1, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v15, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    :goto_1
    if-eqz v9, :cond_4

    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v14, v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0a01e8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v18, v0

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v3, v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setAllItemChecked(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startCheckProcessing()V

    goto/16 :goto_0

    :cond_3
    iget-object v15, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_4
    if-eqz v12, :cond_5

    const/4 v14, 0x0

    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_6

    const/4 v14, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_6
    if-eqz v6, :cond_7

    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v2, 0x7f0a01e7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_7
    const/4 v14, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2
.end method
