.class public Lcom/android/contacts/editor/EventFieldEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "EventFieldEditorView.java"


# instance fields
.field private mDateView:Landroid/widget/Button;

.field private mDay:I

.field private mMonth:I

.field private mNoDateString:Ljava/lang/String;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/EventFieldEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/EventFieldEditorView;)C
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getDateTypeInSetting()C

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/EventFieldEditorView;CIII)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/EventFieldEditorView;->reArrangeDate(CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDatePickerDialog()Landroid/app/Dialog;
    .locals 24

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v13, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v19

    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v12

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "data15"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v6, v18

    move v7, v15

    move v8, v14

    :goto_0
    new-instance v5, Lcom/android/contacts/editor/EventFieldEditorView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v9, v1, v13}, Lcom/android/contacts/editor/EventFieldEditorView$2;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    new-instance v20, Lcom/android/contacts/editor/EventFieldEditorView$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/android/contacts/editor/EventFieldEditorView$3;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;ZLcom/android/contacts/model/DataKind;Ljava/lang/String;)V

    new-instance v3, Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    :goto_1
    return-object v3

    :cond_0
    new-instance v23, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v16

    if-nez v16, :cond_1

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    :cond_1
    if-eqz v16, :cond_3

    const/4 v3, 0x1

    if-eq v11, v3, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getDateTypeInSetting()C

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/editor/EventFieldEditorView;->setDateByDateType(Ljava/lang/String;C)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    goto :goto_0

    :cond_3
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v17

    if-nez v17, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz v9, :cond_5

    const/4 v6, 0x0

    :goto_2
    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x5

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    goto/16 :goto_0

    :cond_5
    move/from16 v6, v18

    goto :goto_2
.end method

.method private extractDate(C[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    iget v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    :goto_0
    return-void

    :pswitch_0
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    iget v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    goto :goto_0

    :pswitch_1
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    iget v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    goto :goto_0

    :pswitch_2
    aget-object v0, p2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    iget v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDateTypeInSetting()C
    .locals 5

    const-string v0, "wangear"

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v1, "MM/dd/yyyy"

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/16 v2, 0x41

    :goto_0
    return v2

    :sswitch_0
    const/16 v2, 0x41

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x42

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x43

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultHourForBirthday()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method private reArrangeDate(CIII)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p3, 0x1

    if-ge v3, v5, :cond_0

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    if-ge p4, v5, :cond_1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    packed-switch p1, :pswitch_data_0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rebuildDateView()V
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "data15"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v6, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget v6, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/EventFieldEditorView;->setDeleteButtonVisible(Z)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private setDateByDateType(Ljava/lang/String;C)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v1, v7

    if-eqz v4, :cond_2

    aget-object v4, v1, v6

    if-eqz v4, :cond_1

    aget-object v4, v1, v8

    if-nez v4, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    :cond_2
    :goto_1
    aget-object v4, v1, v7

    if-eqz v4, :cond_4

    aget-object v4, v1, v6

    if-eqz v4, :cond_3

    aget-object v4, v1, v8

    if-nez v4, :cond_4

    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "-"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    goto :goto_1

    :cond_4
    aget-object v4, v1, v7

    if-eqz v4, :cond_5

    const-string v4, "0"

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0"

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0"

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mYear:I

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mMonth:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDay:I

    :goto_3
    return-void

    :cond_6
    invoke-direct {p0, p2, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->extractDate(C[Ljava/lang/String;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->createDatePickerDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0018
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EventEditType;
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getType()Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EventEditType;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mPrimaryTextColor:I

    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mSecondaryTextColor:I

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    const v2, 0x7f0a018e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mNoDateString:Ljava/lang/String;

    const v1, 0x7f0d0167

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/EventFieldEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/editor/EventFieldEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/EventFieldEditorView$1;-><init>(Lcom/android/contacts/editor/EventFieldEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 13

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v7, v2, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v10

    sget-object v2, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->getType()Lcom/android/contacts/model/AccountType$EventEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v5}, Ljava/text/ParsePosition;-><init>(I)V

    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v2, v10, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/editor/EventFieldEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    goto :goto_0
.end method

.method protected requestFocusForFirstEditField()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "kind must have 1 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    iget-object v1, p0, Lcom/android/contacts/editor/EventFieldEditorView;->mDateView:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/editor/EventFieldEditorView;->rebuildDateView()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
