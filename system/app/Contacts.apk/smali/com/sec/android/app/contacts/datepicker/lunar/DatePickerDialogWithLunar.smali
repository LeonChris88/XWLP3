.class public Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;
.super Landroid/app/AlertDialog;
.source "DatePickerDialogWithLunar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;
    }
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mButtonState:I

.field private final mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

.field private final mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private mLastUpdatedYear:I

.field private mSetLunarView:Landroid/widget/Button;

.field private mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static synthetic access$000(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;)Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->toSolarDate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void
.end method

.method private toSolarDate(Z)V
    .locals 8

    const/16 v3, 0x1f

    const/16 v2, 0xb

    const/16 v1, 0x7f4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const-string v5, "so"

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateDate(IIIZZ)V

    goto :goto_0
.end method

.method private updateTitle(III)V
    .locals 12

    move v6, p1

    move v4, p2

    move v5, p3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->hasYear()Z

    move-result v9

    if-eqz v9, :cond_1

    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v11

    invoke-virtual {v9, v10, p2, p3, v11}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v6

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v5

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v9, v6, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar(III)V

    :cond_0
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getWeekday(III)I

    move-result v8

    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v2, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "date_format"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s. %s. %s. "

    if-gtz p1, :cond_2

    const-string v1, "%s. %s. "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v9, "("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mLastUpdatedYear:I

    goto/16 :goto_0

    :cond_2
    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, p2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method


# virtual methods
.method public isLeapMonth()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->clearFocus()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v1

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar(IIIZ)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getYear()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getMonth()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSolarLunarConverter:Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getDay()I

    move-result v4

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mCallBack:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    iget-object v5, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->isLunarCalendar()Z

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->isLeapMonth()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar$OnDateSetListener;->onDateSet(Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;IIIZZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->init(IIILcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    iget-object v2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->clearFocus()V

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    return-void
.end method

.method public updateDate(IIIZZ)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialYear:I

    iput p2, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialMonth:I

    iput p3, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mInitialDay:I

    const/4 v0, 0x0

    if-eqz p5, :cond_4

    const/4 v0, 0x2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p4, p5}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->setLunarCalendar(ZZ)V

    if-nez p5, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mDatePicker:Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerWithLunar;->updateDate(III)V

    :cond_1
    iget v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iput v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mButtonState:I

    if-eqz p5, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0a02e3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->updateTitle(III)V

    return-void

    :cond_4
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0a02e4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/datepicker/lunar/DatePickerDialogWithLunar;->mSetLunarView:Landroid/widget/Button;

    const v2, 0x7f0a02e5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
