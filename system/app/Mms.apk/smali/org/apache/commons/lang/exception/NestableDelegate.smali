.class public Lorg/apache/commons/lang/exception/NestableDelegate;
.super Ljava/lang/Object;
.source "NestableDelegate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static matchSubclasses:Z = false

.field private static final serialVersionUID:J = 0x1L

.field public static topDown:Z

.field public static trimStackFrames:Z


# instance fields
.field private nestable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->matchSubclasses:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/exception/Nestable;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    instance-of v2, p1, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v2, :cond_0

    check-cast p1, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {p1, v0}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 9

    iget-object v7, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v8

    if-eqz v8, :cond_1

    instance-of v8, v7, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v8, p1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {p0, v7}, Lorg/apache/commons/lang/exception/NestableDelegate;->getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v4, "Caused by: "

    sget-boolean v8, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    if-nez v8, :cond_3

    const-string v4, "Rethrown as: "

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3
    sget-boolean v8, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0, v6}, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames(Ljava/util/List;)V

    :cond_4
    monitor-enter p1

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    const/4 v1, 0x0

    array-length v3, v5

    :goto_3
    if-ge v1, v3, :cond_6

    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected trimStackFrames(Ljava/util/List;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-lez v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v3, v7

    check-cast v3, [Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    array-length v7, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int v6, v7, v8

    if-lez v6, :cond_0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\t... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " more"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
