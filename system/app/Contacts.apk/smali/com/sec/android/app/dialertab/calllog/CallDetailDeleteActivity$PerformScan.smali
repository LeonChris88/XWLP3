.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "CallDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    const-string v8, "CallDetailDeleteActivity"

    const-string v9, "[PerformScan] Call Log delete start ....."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v6, v11

    const-string v8, "logtype"

    aput-object v8, v6, v12

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "_id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v8, v8, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v9, v0, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v8, "CallDetailDeleteActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Logs DB remained data deleted Count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v12, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    new-array v8, v12, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    return-object v13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->isWhichOp:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    const v1, 0x7f0a02bb

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
