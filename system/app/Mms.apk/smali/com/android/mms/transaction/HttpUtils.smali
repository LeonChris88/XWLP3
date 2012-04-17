.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    goto :goto_0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v39, Ljava/lang/IllegalArgumentException;

    const-string v40, "URL must not be null."

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v39

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_1

    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: params list"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\ttoken\t\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\turl\t\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v40, "Mms:transaction"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tmethod\t\t= "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x1

    move/from16 v0, p5

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    const-string v39, "POST"

    :goto_0
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tisProxySet\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tproxyHost\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tproxyPort\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v8, 0x0

    :try_start_0
    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v34, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPort()I

    move-result v40

    const-string v41, "http"

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    const/16 v30, 0x0

    packed-switch p5, :pswitch_data_0

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unknown HTTP method: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ". Must be one of POST["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] or GET["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x2

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    const/4 v5, 0x0

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    const/16 v39, 0x2

    move/from16 v0, p5

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    const-string v39, "GET"

    goto/16 :goto_0

    :cond_4
    const-string v39, "UNKNOWN"

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    new-instance v13, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    const-string v39, "application/vnd.wap.mms-message"

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    new-instance v28, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v30, v28

    :goto_2
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v27

    if-eqz p6, :cond_5

    new-instance v39, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v39

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    :cond_5
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string v39, "Accept"

    const-string v40, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_6

    const-string v39, "Mms:transaction"

    const-string v40, "[HttpUtils] httpConn: xWapProfUrl=xxx"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    const-string v39, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v21

    const-string v39, "\\|"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v4, v25

    array-length v0, v4

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v26, v4, v19

    const-string v39, ":"

    const/16 v40, 0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_9

    const/16 v39, 0x0

    aget-object v39, v32, v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    const/16 v39, 0x1

    aget-object v39, v32, v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    if-eqz v21, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAuthMdn()Z

    move-result v39

    if-eqz v39, :cond_a

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "1"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    :cond_8
    :goto_4
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_9

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_9

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :pswitch_1
    new-instance v30, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    goto :goto_4

    :cond_b
    const-string v39, "Accept-Language"

    sget-object v40, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_d

    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "HTTP error: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    :catch_0
    move-exception v11

    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_c
    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_d
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_e

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[HttpUtils] http response "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v13

    const/4 v5, 0x0

    if-eqz v13, :cond_10

    :try_start_4
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v9

    if-eqz v9, :cond_f

    const/4 v12, 0x0

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: content encoding is: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-lez v39, :cond_12

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v39

    move-wide/from16 v0, v39

    long-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    new-array v5, v0, [B

    new-instance v10, Ljava/io/DataInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v10, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    if-eqz v13, :cond_10

    :try_start_7
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :cond_10
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    :try_start_8
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Error closing input stream: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v39

    if-eqz v13, :cond_11

    :try_start_9
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_11
    throw v39
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :catch_2
    move-exception v11

    :try_start_a
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    :catchall_1
    move-exception v39

    :try_start_b
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :goto_7
    :try_start_c
    throw v39

    :catch_3
    move-exception v11

    const-string v40, "Mms:transaction"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error closing input stream: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v39

    if-eqz v39, :cond_1a

    const v7, 0x4c400

    new-array v0, v7, [B

    move-object/from16 v35, v0

    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/DataInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v6, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x1

    :cond_13
    :try_start_d
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-result v6

    :try_start_e
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: read ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] bytes"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v6, :cond_14

    sub-int/2addr v7, v6

    add-int v24, v24, v6

    :cond_14
    if-lez v6, :cond_15

    if-gtz v7, :cond_13

    :cond_15
    :goto_8
    if-gez v6, :cond_19

    if-lez v24, :cond_19

    const/16 v39, 0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    move/from16 v0, v24

    new-array v5, v0, [B

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v24

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: Chunked response length ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    const-string v39, "/data/anr/automms.dump"

    move-object/from16 v0, v39

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v15, :cond_17

    const-string v39, "Mms:transaction"

    const-string v40, "Unable to open file"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_16
    :goto_9
    :try_start_f
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :goto_a
    :try_start_10
    const-string v39, "Mms:transaction"

    const-string v40, "Data input stream closed"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_6

    :catch_4
    move-exception v11

    const/16 v29, 0x0

    :try_start_11
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: error reading input stream"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v39

    :try_start_12
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :goto_b
    :try_start_13
    const-string v40, "Mms:transaction"

    const-string v41, "Data input stream closed"

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v39
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_17
    const/16 v16, 0x0

    :try_start_14
    new-instance v17, Ljava/io/FileOutputStream;

    const/16 v39, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    :try_start_15
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    if-eqz v17, :cond_16

    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_9

    :catch_5
    move-exception v11

    :goto_c
    :try_start_17
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: File operation exception"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    if-eqz v16, :cond_16

    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    :catchall_3
    move-exception v39

    :goto_d
    if-eqz v16, :cond_18

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_18
    throw v39

    :cond_19
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding. Response entity too large or empty. Bigger than 305 K"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_9

    :catch_6
    move-exception v11

    :try_start_19
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Error closing input stream: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_7
    move-exception v11

    const-string v40, "Mms:transaction"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error closing input stream: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: Error - No content length and no chunked transfer"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_6

    :catch_8
    move-exception v11

    :try_start_1a
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    :catch_9
    move-exception v11

    :try_start_1b
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    :catch_a
    move-exception v11

    :try_start_1c
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    :catchall_4
    move-exception v39

    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1b
    throw v39

    :catchall_5
    move-exception v39

    move-object/from16 v16, v17

    goto/16 :goto_d

    :catch_b
    move-exception v11

    move-object/from16 v16, v17

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
