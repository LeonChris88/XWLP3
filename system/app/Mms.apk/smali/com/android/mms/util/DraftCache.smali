.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field static final DRAFT_PROJECTION:[Ljava/lang/String;

.field public static isInvalidDraft:Z

.field private static final sDraftObserverMms:Landroid/database/ContentObserver;

.field private static final sDraftObserverSms:Landroid/database/ContentObserver;

.field private static sInstance:Lcom/android/mms/util/DraftCache;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    new-instance v0, Lcom/android/mms/util/DraftCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/mms/util/DraftCache$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    const-string v0, "Mms/DraftCache"

    const-string v1, "DraftCache()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .locals 1

    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Mms/DraftCache"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private declared-synchronized rebuildCache()V
    .locals 21

    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/android/mms/TimeChecker;

    invoke-direct {v10}, Lcom/android/mms/TimeChecker;-><init>()V

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    move-object/from16 v16, v0

    new-instance v15, Ljava/util/HashSet;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    sget-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    :cond_0
    if-nez v11, :cond_2

    const-string v2, "Mms/DraftCache"

    const-string v3, "cursor is null!!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "Mms/DraftCache"

    const-string v3, "rebuildCache: add tid="

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v11, :cond_3

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    if-eqz v11, :cond_5

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->dump()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->end()V

    const-string v2, "Mms/DraftCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "done rebuild draft cache, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,start notifying..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/4 v2, 0x1

    move-wide/from16 v0, v19

    invoke-interface {v14, v0, v1, v2}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_1

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/4 v2, 0x0

    move-wide/from16 v0, v19

    invoke-interface {v14, v0, v1, v2}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public declared-synchronized hasDraft(J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refresh()V
    .locals 2

    const-string v0, "Mms/DraftCache"

    const-string v1, "refresh()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DraftCache$3;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DraftCache$3;-><init>(Lcom/android/mms/util/DraftCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZ)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/DraftCache;->setDraftState(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v3, "Mms/DraftCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDraftState(),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",hasDraft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->dump()V

    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "Mms/DraftCache"

    const-string v4, "notify draft changed"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method
