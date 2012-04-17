.class Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastOutgoingCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;
    .locals 7

    array-length v2, p1

    const-string v5, ""

    move-object v1, p1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    iget-object v6, v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-static {v0}, Lcom/android/phone/CallLogAsync;->access$200(Lcom/android/phone/CallLogAsync;)V

    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-interface {v0, p1}, Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;->lastOutgoingCall(Ljava/lang/String;)V

    return-void
.end method
