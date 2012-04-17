.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->updateData([Landroid/net/Uri;)V
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
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    new-array v0, v3, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v4, "CallDetail"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 28

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mCallDetailIsRunning:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    aget-object v16, p1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$702(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v19

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    :goto_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    if-eqz v10, :cond_8

    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0a01e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    const-string v3, "-4"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    new-instance v15, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0a0020

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v23

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v5, 0x7f0a01e9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v15, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    :cond_5
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "videocall"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0a01e9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setSecondaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "sms"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v4, 0x7f0a01ea

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->setTertiaryAction(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2, v15}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v19, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    :goto_6
    invoke-static {v3, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1402(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v9, 0x7f0d0024

    invoke-virtual {v6, v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/contacts/BackScrollManager;->bind(Lcom/android/contacts/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    int-to-long v3, v3

    move-object/from16 v0, v24

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Landroid/net/Uri;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0022

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    aget-object v12, p1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-static {v2, v12, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v21, 0x0

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz v19, :cond_a

    const/16 v21, 0x0

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0a01e7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    :cond_b
    const/16 v21, 0x0

    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v14

    const-string v2, "CallDetail"

    const-string v3, " caught excepion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002b

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d002d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003c

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003f

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0040

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v14

    const-string v2, "CallDetail"

    const-string v3, " caught excepion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0030

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0031

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v3, 0x7f0d0031

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_14
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_7
.end method
