.class public Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final bDeleteView:Z

.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private final mShowCallAndSms:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    iput-boolean p6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v7, p1, v8

    if-ltz v7, :cond_3

    rem-long v4, p1, v8

    div-long v2, p1, v8

    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    rem-long/2addr v2, v8

    div-long v0, v2, v8

    :cond_0
    :goto_0
    cmp-long v7, v0, v10

    if-lez v7, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    cmp-long v7, v2, v10

    if-lez v7, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_1

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    cmp-long v7, v4, v10

    if-lez v7, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v12, :cond_2

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    move-wide v4, p1

    goto :goto_0

    :cond_4
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    if-nez p1, :cond_6

    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000b

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    :cond_0
    :goto_1
    return-object v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040009

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040009

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    goto :goto_0

    :cond_3
    move-object/from16 v12, p2

    goto :goto_0

    :cond_4
    const v17, 0x7f0d004e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1

    :cond_5
    const/16 v17, 0x8

    goto :goto_2

    :cond_6
    if-nez p2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    aget-object v10, v17, v18

    const v17, 0x7f0d0048

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    const v17, 0x7f0d0049

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v17, 0x7f0d004a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v17, 0x7f0d004c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v17, 0x7f0d0046

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v17, 0x7f0d004f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v18, v0

    const/16 v20, 0x14

    invoke-static/range {v17 .. v20}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0262

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_4
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v6, v17, v18

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    invoke-virtual {v7, v6}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    iget v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    :cond_8
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    const-string v17, "CallDetailHistoryAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCount : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", position : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", time :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    invoke-static/range {v19 .. v22}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v12, v16

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04000a

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, p2

    goto/16 :goto_3

    :cond_b
    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x5265c00

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0263

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    :sswitch_0
    const v17, 0x7f0201db

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_1
    const v17, 0x7f0201da

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_2
    const v17, 0x7f0201d5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_3
    const v17, 0x7f0201d6

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :sswitch_4
    const v17, 0x7f0201d9

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    :cond_d
    iget-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x1f4 -> :sswitch_1
        0x320 -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
