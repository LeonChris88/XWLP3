.class public Lcom/android/settings/ClockPanel;
.super Landroid/widget/LinearLayout;
.source "ClockPanel.java"


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDate_Month:Landroid/widget/TextView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04004c

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    const v3, 0x7f0800cf

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    const v3, 0x7f0800d0

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mHour02:Landroid/widget/ImageView;

    const v3, 0x7f0800d2

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mMin01:Landroid/widget/ImageView;

    const v3, 0x7f0800d3

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mMin02:Landroid/widget/ImageView;

    const v3, 0x7f0800d4

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mAM:Landroid/widget/TextView;

    const v3, 0x7f0800d5

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ClockPanel;->mDate_Month:Landroid/widget/TextView;

    const v3, 0x7f0800d6

    invoke-virtual {p0, v3}, Lcom/android/settings/ClockPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/ClockPanelInfo;

    iget-object v3, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settings/ClockPanelInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/ClockPanel;->refreshTimeAndDate()V

    return-void
.end method

.method private convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget v4, v0, v7

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/settings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/ClockPanel;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/settings/ClockPanel;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/settings/ClockPanel;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/ClockPanel;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :array_0
    .array-data 0x4
        0x76t 0x7t 0x8t 0x1t
        0x78t 0x7t 0x8t 0x1t
        0x7bt 0x7t 0x8t 0x1t
        0x7dt 0x7t 0x8t 0x1t
        0x7ft 0x7t 0x8t 0x1t
        0x81t 0x7t 0x8t 0x1t
        0x83t 0x7t 0x8t 0x1t
        0x85t 0x7t 0x8t 0x1t
        0x87t 0x7t 0x8t 0x1t
        0x89t 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private refreshTimeAndDate()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/ClockPanel;->convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    const v7, 0x1040075

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    const v6, 0x10400af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ClockPanel;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "hh"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/ClockPanel;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/ClockPanel;->mContext:Landroid/content/Context;

    const v7, 0x1040076

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
