.class public Lcom/android/contacts/datepicker/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mTitleDateFormat:Ljava/text/DateFormat;

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iput p4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iput p5, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iput p6, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mWeekDays:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    const/4 v0, -0x1

    const v1, 0x10404ab

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const/high16 v0, 0x104

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v0, 0x7f04004e

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/contacts/datepicker/DatePickerDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f0d0120

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/datepicker/DatePicker;

    iput-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mInitialDay:I

    move/from16 v4, p7

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/datepicker/DatePickerDialog;->setIcon(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V

    return-void
.end method

.method private updateTitle(III)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    if-nez p1, :cond_0

    const-string v0, "MMMM dd"

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mTitleDateFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->clearFocus()V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mCallBack:Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v3}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v4}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/android/contacts/datepicker/DatePicker;III)V

    :cond_0
    return-void
.end method

.method public onDateChanged(Lcom/android/contacts/datepicker/DatePicker;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "year_optional"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/datepicker/DatePicker;->init(IIIZLcom/android/contacts/datepicker/DatePicker$OnDateChangedListener;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/contacts/datepicker/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "year"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "year_optional"

    iget-object v2, p0, Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v2}, Lcom/android/contacts/datepicker/DatePicker;->isYearOptional()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x1020251

    invoke-virtual {p0, v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    return-void
.end method
