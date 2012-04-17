.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static ONLINE_LOCKER:Ljava/lang/String;

.field public static isInvalid:Z

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static final sContactsObserver:Landroid/database/ContentObserver;


# instance fields
.field private mAvatarData:[B

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "700"

    sput-object v0, Lcom/android/mms/data/Contact;->ONLINE_LOCKER:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Long;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static IsPresentInContact(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    sget-object v2, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method static synthetic access$100(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/data/Contact;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/mms/data/Contact;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/mms/data/Contact;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/data/Contact;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/data/Contact;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/data/Contact;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method private static extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x3b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static extractId(Ljava/lang/String;)J
    .locals 3

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p1

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 2

    const/4 v0, 0x0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v1, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/ContactList;"
        }
    .end annotation

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get(number list)"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactList"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->isValidContactData(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : invalid contactData"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractId(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v6, v4

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x15cf

    cmp-long v6, v6, v4

    if-nez v6, :cond_6

    :cond_4
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 1"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 2"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v6, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Mms/Contact"

    const-string v7, "ContactList get : 3"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v1}, Lcom/android/mms/data/Contact;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_1
.end method

.method public static getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static getTemp()Lcom/android/mms/data/Contact;
    .locals 2

    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "Mms/Contact"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static invalidateCache()V
    .locals 3

    const-string v0, "Mms/Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateCache(),isInvalid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/data/Contact;->isInvalid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Contact;->isInvalid:Z

    goto :goto_0
.end method

.method public static isNumberInContacts(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    return v1
.end method

.method private static isValidContactData(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x3b

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v4, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-void
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string v1, "+00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFormattedName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceResId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAvatarData()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isEmail()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNumberModified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized isOnlineAlbum()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isOnlineLocker()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isPhoneNumber()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reload()V
    .locals 3

    const-string v0, "Mms/Contact"

    const-string v1, "reload()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    return-object v0
.end method
