.class public Lorg/apache/commons/lang/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# static fields
.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x2ct 0x0t
        0x22t 0x0t
        0xdt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unescapeHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    invoke-static {v1, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unescapeHtml(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang/Entities;->unescape(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0
.end method
