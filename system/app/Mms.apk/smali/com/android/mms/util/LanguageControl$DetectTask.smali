.class Lcom/android/mms/util/LanguageControl$DetectTask;
.super Landroid/os/AsyncTask;
.source "LanguageControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/LanguageControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/util/LanguageControl;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/LanguageControl;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->this$0:Lcom/android/mms/util/LanguageControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    const-string v3, "https://www.googleapis.com/language/translate/v2"

    const-string v2, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    const-string v5, "/detect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&q="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "https://www.googleapis.com/language/translate/v2"

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v13, 0x7d0

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v13, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    :try_start_0
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v13, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/mms/util/LanguageControl;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/mms/util/LanguageControl;->mClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v13, "detectResult"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "error_type"

    const/4 v14, -0x2

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    invoke-virtual {v7, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v13, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private tryAcquireHttpResponseString()Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->this$0:Lcom/android/mms/util/LanguageControl;

    iget-object v4, v4, Lcom/android/mms/util/LanguageControl;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    iget-object v2, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->this$0:Lcom/android/mms/util/LanguageControl;

    iget-object v2, v2, Lcom/android/mms/util/LanguageControl;->mClient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->this$0:Lcom/android/mms/util/LanguageControl;

    iget-object v3, v3, Lcom/android/mms/util/LanguageControl;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error acquiring http response string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, -0x2

    const/4 v11, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v10, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/mms/util/LanguageControl$DetectTask;->tryAcquireHttpResponseString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v10, "detectResult"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "error_type"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "data"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v10, "detections"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "language"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/util/LanguageControl;->access$100()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "success to DETECT - detected Language = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "zh"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v2, "zh-CN"

    :cond_1
    const-string v10, "detectResult"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "error_type"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v10, "detectResult"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "error_type"

    const/4 v11, -0x2

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_0
    move-exception v10

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v11, p0, Lcom/android/mms/util/LanguageControl$DetectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v10
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/mms/util/LanguageControl$DetectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mms/util/LanguageControl$DetectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
