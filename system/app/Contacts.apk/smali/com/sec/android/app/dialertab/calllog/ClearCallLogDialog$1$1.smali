.class Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;
.super Landroid/os/AsyncTask;
.source "ClearCallLogDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->this$1:Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1;->val$resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/ClearCallLogDialog$1$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
