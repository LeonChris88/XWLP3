.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final ICC_URI:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mCursor:Landroid/database/Cursor;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field private final mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mState:I

.field private simstateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ManageSimMessages;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ManageSimMessages;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->copyAllToPhoneMemory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/ContextMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SimMessageListAdapter;)Lcom/android/mms/ui/SimMessageListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f09012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private copyAllToPhoneMemory()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :try_start_0
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyToPhoneMemory() total count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "current position : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1, v2, v3, v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-static {p0, v6}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move v0, v7

    goto :goto_0
.end method

.method private deleteAllFromSim()V
    .locals 5

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v4, "index_on_icc"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteFromSim(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Mms/ManageSimMessages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFromSim simUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 2

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->stopManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method private startQuery()V
    .locals 9

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "startQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 4

    const v3, 0x7f0900b7

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    packed-switch p1, :pswitch_data_0

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/ManageSimMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simstateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    new-instance v3, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const v4, 0x7f090093

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->closeOptionsMenu()V

    const-string v3, ""

    const v4, 0x7f0901da

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ManageSimMessages;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0, v3, v4, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    const v3, 0x7f090027

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    const v3, 0x7f0900be

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/widget/Toast;Landroid/widget/Toast;Landroid/app/ProgressDialog;)V

    const-string v5, "copy all"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v0, :cond_0

    const v0, 0x7f0900b5

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x202014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    const v1, 0x7f0900b4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
