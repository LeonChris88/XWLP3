.class public Lcom/sec/android/app/contacts/util/ContactsUtil;
.super Ljava/lang/Object;
.source "ContactsUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ContactsUtil"

    sput-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdnEditable(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "adn_editable"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getDialable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSimDBReady(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "sim_db_ready"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getSystemTitleRes(Ljava/lang/String;)I
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v1, "getSystemTitleRes : title is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Friends"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0249

    :goto_0
    return v0

    :cond_1
    const-string v0, "Family"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a024a

    goto :goto_0

    :cond_2
    const-string v0, "Coworkers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a024b

    goto :goto_0

    :cond_3
    const-string v0, "Contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a024c

    goto :goto_0

    :cond_4
    const-string v0, "Not Assigned"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a021e

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemTitleRes : title is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a007e

    goto :goto_0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "videocall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbx://schedule?attendees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDiskFull()Z
    .locals 7

    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v3, v0, v5

    const-wide/32 v5, 0x100000

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isTwLauncherAlive(Landroid/content/Context;)Z
    .locals 5

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v3, "com.sec.android.app.twlauncher"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v4, "TW Launcher is alive"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/sec/android/app/contacts/util/ContactsUtil;->TAG:Ljava/lang/String;

    const-string v4, "TW Launcher is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;)I
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const-string v1, "vnd.sec.contact.agg.account_type"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static parseLinkColumnString(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v0, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
