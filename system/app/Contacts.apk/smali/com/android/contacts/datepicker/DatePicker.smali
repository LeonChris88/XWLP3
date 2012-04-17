.class public Lcom/android/contacts/datepicker/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePicker$SavedState;,
        Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private isNumMonth:Z

.field private mCurrentLocale:Ljava/util/Locale;

.field protected mDay:I

.field private mDayNext:Landroid/widget/NumberPicker;

.field protected final mDayPicker:Landroid/widget/NumberPicker;

.field private mHasYear:Z

.field protected mMonth:I

.field private mMonthNext:Landroid/widget/NumberPicker;

.field protected final mMonthPicker:Landroid/widget/NumberPicker;

.field private mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

.field private mTempDate:Ljava/util/Calendar;

.field protected mYear:I

.field private mYearNext:Landroid/widget/NumberPicker;

.field private mYearOptional:Z

.field protected final mYearPicker:Landroid/widget/NumberPicker;

.field private final mYearToggle:Landroid/widget/CheckBox;

.field private months:[Ljava/lang/String;

.field private numberOfMonths:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f04004d

    const/4 v7, 0x1

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v6, 0x7f0d011e

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$1;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$2;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v6, 0x7f0d011d

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v7, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$3;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$4;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$4;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v6, 0x7f0d011f

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/NumberPicker;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetYearDateTimeInputMode()V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$5;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$5;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$6;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$6;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v6, 0x7f0d011b

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    new-instance v7, Lcom/android/contacts/datepicker/DatePicker$7;

    invoke-direct {v7, p0}, Lcom/android/contacts/datepicker/DatePicker$7;-><init>(Lcom/android/contacts/datepicker/DatePicker;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v6, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x1

    const/16 v7, 0x76c

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x7f4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/contacts/datepicker/DatePicker;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/contacts/datepicker/DatePicker;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v7, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget-object v7, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/datepicker/DatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/datepicker/DatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method private adjustMaxDay()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-le v2, v1, :cond_0

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x7d0

    goto :goto_0
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getCurrentYear()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private notifyDateChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 13

    const/16 v12, 0x64

    const/16 v11, 0x4d

    const/4 v10, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    const v9, 0x7f0d011c

    invoke-virtual {p0, v9}, Lcom/android/contacts/datepicker/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    iput-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    iput-object v10, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x27

    if-ne v0, v9, :cond_0

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :cond_0
    :goto_1
    if-nez v8, :cond_2

    if-ne v0, v12, :cond_4

    if-nez v1, :cond_4

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    :cond_1
    :goto_2
    or-int v9, v1, v2

    or-int/2addr v9, v3

    if-eqz v9, :cond_2

    if-nez v4, :cond_2

    move v4, v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    if-eq v0, v11, :cond_5

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_6

    :cond_5
    if-nez v2, :cond_6

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_2

    :cond_6
    const/16 v9, 0x79

    if-ne v0, v9, :cond_1

    if-nez v3, :cond_1

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/android/contacts/datepicker/DatePicker;->setImeOptions(Landroid/widget/NumberPicker;II)V

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    if-nez v1, :cond_9

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    if-nez v3, :cond_a

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    if-ne v4, v12, :cond_b

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    :goto_3
    return-void

    :cond_b
    if-ne v4, v11, :cond_c

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;

    goto :goto_3

    :cond_c
    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;

    iget-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iput-object v9, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthNext:Landroid/widget/NumberPicker;

    goto :goto_3
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/datepicker/DatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/contacts/datepicker/DatePicker;->numberOfMonths:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->months:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 4

    const/4 v3, 0x1

    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_1

    const v0, 0x2000005

    :goto_0
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x2000006

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearToggle:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/datepicker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget-boolean v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->isNumMonth:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/contacts/datepicker/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    goto :goto_0
.end method

.method public hasYear()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    return v0
.end method

.method public init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iput-boolean p4, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz p4, :cond_2

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iput-object p5, p0, Lcom/android/contacts/datepicker/DatePicker;->mOnDateChangedListener:Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isYearOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->hasYear()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState;->isYearOptional()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget v4, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    iget-boolean v5, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    iget-boolean v6, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZLcom/android/contacts/datepicker/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    if-eq v0, p3, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker;->mYearOptional:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->getCurrentYear()I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->updateSpinners()V

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/datepicker/DatePicker;->reorderPickers([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/datepicker/DatePicker;->notifyDateChanged()V

    :cond_2
    return-void
.end method

.method protected updateDaySpinner()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mHasYear:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mYear:I

    :goto_0
    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/android/contacts/datepicker/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void

    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0
.end method
