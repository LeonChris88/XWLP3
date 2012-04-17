.class public Lcom/sec/android/provider/logsprovider/LogsProvider;
.super Landroid/content/ContentProvider;
.source "LogsProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

.field private static final SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final sDurationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSevenAccountType:[Ljava/lang/String;

.field private static final sSnsAccountType:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

.field private mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    const-string v0, "com.sec.android.app.provider.sns/message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    const-string v0, "com.sec.android.app.provider.sns/thread_message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/#"

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/filter"

    invoke-virtual {v0, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call"

    const/16 v5, 0x14

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "allcalls"

    const/16 v5, 0x16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/#"

    invoke-virtual {v0, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/frequent"

    const/16 v5, 0xf

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/del"

    const/16 v5, 0x1a

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/search_log"

    const/16 v5, 0x1f

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email"

    const/16 v5, 0xb

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email_seven"

    const/16 v5, 0x13

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "video_call"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "voip"

    const/16 v5, 0xe

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_voip"

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_vt"

    const/16 v5, 0x25

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sns"

    const/16 v5, 0x15

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "im"

    const/16 v5, 0x17

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sns_msg_receiver_map"

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "search_log"

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "msg/receiver/#/*"

    const/16 v5, 0x19

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "duration"

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "addcall"

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "messageid"

    const-string v4, "messageid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_pkey"

    const-string v4, "sns_pkey"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_receiver_count"

    const-string v4, "sns_receiver_count"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cnap_name"

    const-string v4, "cnap_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cdnip_number"

    const-string v4, "cdnip_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "service_type"

    const-string v4, "service_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "country_code"

    const-string v4, "country_code"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cityid"

    const-string v4, "cityid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "_data"

    const-string v4, "_data"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "has_content"

    const-string v4, "has_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "mime_type"

    const-string v4, "mime_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "source_data"

    const-string v4, "source_data"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "source_package"

    const-string v4, "source_package"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "state"

    const-string v4, "state"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "logs._id AS _id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "messageid"

    const-string v4, "logs.messageid AS messageid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_id"

    const-string v4, "receiver_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_name"

    const-string v4, "receiver_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voice"

    const-string v4, "last_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_video"

    const-string v4, "last_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voip"

    const-string v4, "last_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_voip"

    const-string v4, "last_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_vt"

    const-string v4, "last_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voice"

    const-string v4, "dial_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_video"

    const-string v4, "dial_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voip"

    const-string v4, "dial_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_voip"

    const-string v4, "dial_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_vt"

    const-string v4, "dial_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voice"

    const-string v4, "rece_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_video"

    const-string v4, "rece_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voip"

    const-string v4, "rece_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_voip"

    const-string v4, "rece_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_vt"

    const-string v4, "rece_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voice"

    const-string v4, "all_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_video"

    const-string v4, "all_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voip"

    const-string v4, "all_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_voip"

    const-string v4, "all_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_vt"

    const-string v4, "all_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "reset_date"

    const-string v4, "reset_date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v3, v0, v2

    const-string v3, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v3, v0, v1

    const-string v3, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v3, v0, v6

    const-string v3, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v3, v0, v7

    const-string v3, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v3, v0, v8

    const/4 v3, 0x5

    const-string v4, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "com.seven.Z7.msn"

    aput-object v3, v0, v2

    const-string v2, "com.seven.Z7.yahoo"

    aput-object v2, v0, v1

    const-string v1, "com.seven.Z7"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 14

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4

    if-eqz v6, :cond_5

    move-object v12, v6

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data4 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v12, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_4

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v11, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :cond_5
    if-eqz v9, :cond_6

    move-object v13, v9

    :goto_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data1 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v13, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_0

    :cond_6
    move-object/from16 v13, p2

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    const-string v0, "content://com.android.contacts/data/email_im/lookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v8, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v6, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "raw_contact_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    const-string v1, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_4
    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_5
    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_6
    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_9
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_a
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_b
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_c
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_e
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_f
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_11
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_12
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "contactid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "name"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "numberlabel"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "numbertype"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "raw_contact_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    return-object p1

    :catch_0
    move-exception v6

    const/4 v7, 0x0

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLogInfoWithNumber -> phonesCursor Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 21

    const/16 v19, 0x0

    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_0
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "numberlabel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "numbertype"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-object p1

    :catch_0
    move-exception v11

    const/16 v19, 0x0

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> phonesCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v12, 0x0

    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    const/4 v12, 0x0

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> emailCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_a
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11

    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, 0x0

    array-length v4, p2

    sparse-switch v3, :sswitch_data_0

    const/4 v7, -0x1

    :goto_0
    return v7

    :sswitch_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v5, 0x0

    :try_start_0
    array-length v7, p2

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_0

    const/16 v4, 0x1f4

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_d

    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_1
    const/16 v7, 0x64

    if-eq v2, v7, :cond_2

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_2

    const/16 v7, 0x190

    if-eq v2, v7, :cond_2

    const/16 v7, 0x258

    if-eq v2, v7, :cond_2

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_2

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_2

    const/16 v7, 0x2bc

    if-eq v2, v7, :cond_2

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_2

    const/16 v7, 0x320

    if-eq v2, v7, :cond_2

    const/16 v7, 0x384

    if-eq v2, v7, :cond_2

    const/16 v7, 0x3e8

    if-eq v2, v7, :cond_2

    :try_start_1
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, -0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    const/16 v7, 0x64

    if-eq v2, v7, :cond_3

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_3

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_3

    const/16 v7, 0x320

    if-eq v2, v7, :cond_3

    const/16 v7, 0x384

    if-eq v2, v7, :cond_3

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_6

    :cond_3
    :try_start_2
    aget-object v7, p2, v1

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'duration\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v7, -0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, p2, v1

    const-string v8, "new"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    aget-object v7, p2, v1

    const-string v8, "frequent"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    :goto_2
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x190

    if-eq v2, v7, :cond_7

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_7

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x258

    if-eq v2, v7, :cond_7

    const/16 v7, 0x2bc

    if-ne v2, v7, :cond_c

    :cond_7
    aget-object v7, p2, v1

    const-string v8, "messageid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'messageid\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, -0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    aget-object v7, p2, v1

    const-string v8, "sp_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "insert \'sp_type\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, -0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x190

    if-ne v2, v7, :cond_b

    :try_start_5
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    aget-object v7, p2, v1

    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    :cond_b
    :try_start_6
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    array-length v7, p2

    goto/16 :goto_0

    :sswitch_1
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_e

    const/16 v4, 0xbb8

    :cond_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v4, :cond_f

    :try_start_7
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    array-length v7, p2

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    :sswitch_2
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_10

    const/16 v4, 0xbb8

    :cond_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_11

    :try_start_8
    const-string v7, "sns_msg_receiver_map"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    array-length v7, p2

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x15 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15

    iget-object v12, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v12}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v2, " (logtype=500 OR logtype=800 OR logtype=100 OR logtype=110 OR logtype=900 OR logtype=1000 OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')) OR logtype=300)"

    sparse-switch v5, :sswitch_data_0

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot delete that URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :sswitch_0
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v12, "logs"

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    if-lez v3, :cond_0

    sparse-switch v5, :sswitch_data_1

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    :cond_0
    return v3

    :catchall_0
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p2, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 p2, v2

    goto :goto_2

    :catchall_1
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz p2, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object/from16 p2, v2

    goto :goto_3

    :catchall_2
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_3
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_4
    const-string v11, " (logtype=400)"

    if-eqz p2, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_4
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 p2, v11

    goto :goto_4

    :catchall_4
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_5
    const-string v11, " (logtype=410)"

    if-eqz p2, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_5
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 p2, v11

    goto :goto_5

    :catchall_5
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_6
    const-string v11, " (logtype=600)"

    if-eqz p2, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_6
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 p2, v11

    goto :goto_6

    :catchall_6
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_7
    const-string v12, "sns_msg_receiver_map"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_7
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_8
    const-string v10, " (logtype=700)"

    if-eqz p2, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_8
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_6
    move-object/from16 p2, v10

    goto :goto_7

    :catchall_8
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xb -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_1
        0x17 -> :sswitch_8
        0x1a -> :sswitch_2
        0x20 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0x9 -> :sswitch_9
        0x14 -> :sswitch_9
        0x16 -> :sswitch_9
        0x1a -> :sswitch_9
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v1, "vnd.android.cursor.item/calls"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v9, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v10, "logs"

    invoke-direct {v9, v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    :cond_0
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const-wide/16 v7, 0x0

    const-string v9, "type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'type\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_1
    sparse-switch v5, :sswitch_data_0

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong uri"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_0

    :sswitch_0
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string v9, "logtype"

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    sparse-switch v5, :sswitch_data_1

    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    invoke-interface {v9, v2}, Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v9, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v7

    const/4 v0, 0x0

    sparse-switch v5, :sswitch_data_2

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_35

    sget-boolean v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insert data - logtype : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " number : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "number"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contactid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "contactid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " messageid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "messageid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sparse-switch v5, :sswitch_data_3

    :goto_4
    invoke-static {p1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0

    :sswitch_1
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    const-string v9, "logtype"

    const/16 v10, 0x320

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    const-string v9, "logtype"

    const/16 v10, 0x384

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_c
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    const-string v9, "logtype"

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_f
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_10
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string v9, "logtype"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_13
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_14
    const-string v9, "logtype"

    const/16 v10, 0x12c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_15
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_16
    const-string v9, "logtype"

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_17
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_18
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_19
    const-string v9, "logtype"

    const/16 v10, 0x2bc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1a
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1b
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const-string v9, "logtype"

    const/16 v10, 0x190

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1d
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1e
    const-string v9, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'account_name\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_1f
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_20
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v9, "logtype"

    const/16 v10, 0x19a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_22
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_23
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_24
    const-string v9, "contactid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_25
    const-string v9, "logtype"

    const/16 v10, 0x258

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_26
    const/16 v9, 0x64

    if-eq v4, v9, :cond_27

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_27

    const/16 v9, 0x190

    if-eq v4, v9, :cond_27

    const/16 v9, 0x258

    if-eq v4, v9, :cond_27

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_27

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_27

    const/16 v9, 0x2bc

    if-eq v4, v9, :cond_27

    const/16 v9, 0x1f4

    if-eq v4, v9, :cond_27

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_27
    const/16 v9, 0x64

    if-eq v4, v9, :cond_28

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_28

    const/16 v9, 0x1f4

    if-ne v4, v9, :cond_2b

    :cond_28
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_29
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2a
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_2b
    const/16 v9, 0x190

    if-eq v4, v9, :cond_2c

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x258

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x2bc

    if-ne v4, v9, :cond_31

    :cond_2c
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2d
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_2e
    const/16 v9, 0x190

    if-ne v4, v9, :cond_30

    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_5
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_30
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_31
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_32
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33

    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_33
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_34

    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_34
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    :sswitch_e
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    :sswitch_f
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    const/4 v0, 0x0

    goto/16 :goto_3

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    const/4 v0, 0x1

    goto/16 :goto_3

    :sswitch_12
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=100 OR logtype=500 OR logtype=800 OR logtype=900 OR logtype=1000 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_13
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=300 OR logtype=200 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_14
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=700 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_15
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=400 OR logtype=410 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_16
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=600 ORDER BY date DESC limit -1 offset 3000)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_35
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert falled. check input data"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x7 -> :sswitch_6
        0x9 -> :sswitch_5
        0xb -> :sswitch_8
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x13 -> :sswitch_9
        0x14 -> :sswitch_4
        0x15 -> :sswitch_a
        0x17 -> :sswitch_7
        0x23 -> :sswitch_c
        0x24 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_e
        0x9 -> :sswitch_e
        0xb -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x17 -> :sswitch_f
        0x24 -> :sswitch_d
        0x25 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_10
        0x9 -> :sswitch_10
        0xd -> :sswitch_10
        0xe -> :sswitch_10
        0x14 -> :sswitch_11
        0x24 -> :sswitch_10
        0x25 -> :sswitch_10
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x7 -> :sswitch_13
        0x9 -> :sswitch_13
        0xb -> :sswitch_15
        0xd -> :sswitch_12
        0xe -> :sswitch_12
        0x13 -> :sswitch_15
        0x14 -> :sswitch_12
        0x15 -> :sswitch_16
        0x17 -> :sswitch_14
        0x23 -> :sswitch_12
        0x24 -> :sswitch_12
        0x25 -> :sswitch_12
    .end sparse-switch
.end method

.method protected notifyAllCallsChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method protected notifyCallChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method protected notifyChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 23

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v22, 0x0

    :goto_1
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v2, v10

    if-nez v2, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logtype=600"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND sp_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "logs"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccountsUpdated: Delete SNS log : spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :cond_3
    const/16 v22, 0x0

    :goto_2
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    if-eqz v11, :cond_4

    array-length v2, v11

    add-int/2addr v14, v2

    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/16 v17, 0x0

    const-string v2, "logs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "logtype"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "sp_type"

    aput-object v5, v3, v4

    const-string v4, "logtype=410 AND sp_type != 4 AND sp_type != 3 AND sp_type !=  0"

    const/4 v5, 0x0

    const-string v6, "account_name"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    const/4 v13, -0x1

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eq v13, v14, :cond_b

    if-lez v13, :cond_b

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_3
    add-int/lit8 v18, v19, 0x1

    move/from16 v0, v19

    if-ge v0, v13, :cond_b

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v19, v18

    goto :goto_3

    :cond_7
    const/16 v22, 0x0

    :goto_5
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_a

    if-nez v16, :cond_8

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    if-eqz v11, :cond_8

    array-length v2, v11

    if-lez v2, :cond_8

    const/16 v20, 0x0

    :goto_6
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    aget-object v2, v11, v20

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    aget-object v3, v11, v20

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v16, 0x1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is existed on AccountManager and sp_type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v4, v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_a
    if-nez v16, :cond_6

    const-string v2, "content://logs/email_seven"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/provider/logsprovider/LogsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete from Logs account_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->verifyAccounts()V

    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 2

    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LOWMEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26

    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    new-instance v23, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    packed-switch v21, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const/4 v9, 0x0

    const-string v2, "logs"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    packed-switch v21, :pswitch_data_1

    :pswitch_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    const-string v9, "number"

    :pswitch_4
    const-string v2, "logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\'))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :goto_0
    :pswitch_5
    const/16 v2, 0x21

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez p5, :cond_0

    const-string p5, "date DESC"

    :cond_0
    const/16 v19, 0x0

    const/16 v2, 0xf

    move/from16 v0, v21

    if-ne v0, v2, :cond_6

    const-string v5, "logs"

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "1 as _id"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "name"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "number"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const-string v7, "COUNT(number)AS count"

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const-string v7, "contactid"

    aput-object v7, v6, v2

    const-string v7, "type=2 AND frequent=1"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "count desc"

    const-string v12, "12"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    :goto_2
    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    :goto_3
    return-object v19

    :pswitch_6
    const-string v2, "logs left outer join sns_msg_receiver_map on logs.sns_pkey=sns_msg_receiver_map.message_id"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v9, "logs._id"

    goto :goto_0

    :pswitch_7
    const-string v2, "(logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " AND logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v9, "number"

    goto/16 :goto_0

    :pswitch_9
    const-string v2, "logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v2, "logs.logtype=200"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v2, "logs.logtype=400 OR logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v2, "logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_e
    const-string v2, "logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_f
    const-string v2, "logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v2, "logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v2, "logs.logtype=600"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_12
    const-string v2, "logs.logtype=700"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const-string v2, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v2, :cond_2

    const-string v2, ", 1)"

    :goto_4
    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, " and (logtype=100 OR logtype=500)"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, ", 0)"

    goto :goto_4

    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/receiver"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/4 v3, 0x0

    if-eqz v24, :cond_3

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3

    :cond_3
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_5

    :pswitch_15
    const-string v2, "logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_16
    const-string v2, "duration_table"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_2

    :cond_7
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v9

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
        :pswitch_13
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_2
        :pswitch_14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_16
        :pswitch_2
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    move-object v4, p3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    :try_start_0
    const-string v5, "duration_table"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    if-lez v1, :cond_0

    sparse-switch v3, :sswitch_data_1

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    :cond_0
    return v1

    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v5, "logs"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    const/4 v0, 0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_2
        0x9 -> :sswitch_2
        0xd -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method protected verifyAccounts()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->onAccountsUpdated([Landroid/accounts/Account;)V

    return-void
.end method
