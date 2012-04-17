.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 18

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    const-string v14, "LogsDeleteActivity"

    const-string v15, "[PerformScan] Call Log delete start ....."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/ListView;->getCount()I

    move-result v12

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    div-int/lit8 v16, v12, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v14, 0x12c

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :goto_0
    const-string v14, "LogsDeleteActivity"

    const-string v15, "[PerformScan] Call Log delete end ....."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    return-object v14

    :cond_0
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/Cursor;

    invoke-static {v15, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$602(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    const-string v15, "_id"

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v4, v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;-><init>(I)V

    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupCount()I

    move-result v5

    sget-object v14, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->groupCountList:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/dialertab/calllog/GroupCount;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/GroupCount;->getGroupIDs()[I

    move-result-object v1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v5, :cond_3

    aget v7, v1, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "LogsDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataId= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_1

    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    rem-int/lit8 v14, v6, 0x64

    if-nez v14, :cond_4

    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v14, "_id in ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const/16 v14, 0x29

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string v14, "LogsDeleteActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Logs DB remained data deleted Count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    :cond_6
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const v3, 0x7f0a02bb

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setResult(I)V

    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->isWhichOp:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;

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

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
