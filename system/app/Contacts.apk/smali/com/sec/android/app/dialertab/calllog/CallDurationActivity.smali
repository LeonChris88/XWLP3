.class public Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;
.super Landroid/app/Activity;
.source "CallDurationActivity.java"


# instance fields
.field private final DURATION_PROJ:[Ljava/lang/String;

.field private FMC_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "last_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dial_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    :cond_1
    move-wide v5, p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onHomeSelected()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->finish()V

    return-void
.end method

.method private resetDurationTable()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setClearTime()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0d0052

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d0055

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0058

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d005a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d005d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0060

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d0062

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d0065

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0068

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0d006a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d006d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0d0070

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setContentView(I)V

    const v0, 0x7f0a02a9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->configureActionBar()V

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/duration"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "Duration"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v7, 0x0

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v0, "last_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_4

    :goto_1
    const-string v0, "last_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_5

    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const-string v0, "last_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v0, "dial_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0d005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_6

    :goto_3
    const-string v0, "dial_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0d0060

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const-string v0, "dial_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const-string v0, "rece_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_7

    :goto_4
    const-string v0, "rece_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const-string v0, "rece_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v0, 0x7f0d006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v0, 0x7f0d006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v0, 0x7f0d006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v0, 0x7f0d0070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VT_ENABLE:Z

    if-eqz v0, :cond_8

    :goto_5
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const-string v0, "all_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "all_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "all_voip"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0d0053

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f0d006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    const v0, 0x7f0d0063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    const v0, 0x7f0d006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v1, 0x7f0d0246

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->resetDurationTable()V

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setClearTime()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->onHomeSelected()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d0246 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
