.class public Lcom/android/mms/TimeChecker;
.super Ljava/lang/Object;
.source "TimeChecker.java"


# instance fields
.field startT:J

.field strElapsed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/mms/TimeChecker;->startT:J

    sub-long v0, v2, v4

    const-string v2, "Elapsed time : %.3f ms"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v5, v0

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    return-void
.end method

.method public getElapsed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/TimeChecker;->strElapsed:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/TimeChecker;->startT:J

    return-void
.end method
