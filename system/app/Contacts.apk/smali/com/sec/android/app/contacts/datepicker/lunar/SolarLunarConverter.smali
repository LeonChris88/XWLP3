.class public final Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private isLeapMonth_:Z

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xd

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method public static getWeekday(III)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isLeapYear(I)Z
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12

    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    add-int/lit16 v3, p1, -0x759

    mul-int/lit8 v8, v3, 0xe

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_6

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_6

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    add-int/lit8 v6, p2, 0x1

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v6, p2

    goto :goto_3

    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/lit16 v0, v0, -0x150

    const/16 v2, 0x16d

    :goto_5
    if-lt v0, v2, :cond_8

    sub-int/2addr v0, v2

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v2, 0x16e

    goto :goto_5

    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    :cond_8
    :goto_6
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_6

    :cond_9
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    :goto_7
    return-void

    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/lit8 v0, v0, -0x2

    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    :cond_b
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7

    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method public convertSolarToLunar(III)V
    .locals 12

    const/16 v11, 0x76c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v6, 0xa7a5e

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    const/16 v7, 0x759

    if-lt p1, v7, :cond_0

    const/16 v7, 0x834

    if-gt p1, v7, :cond_0

    if-ltz p2, :cond_0

    const/16 v7, 0xb

    if-gt p2, v7, :cond_0

    if-lt p3, v10, :cond_0

    const/16 v7, 0x1f

    if-le p3, v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is out of range."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v7

    add-int/2addr v7, p3

    const v8, 0xa7a5e

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v8

    aget v8, v8, p2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    const/4 v0, 0x1

    :goto_0
    const/16 v7, 0xdd

    if-ge v0, v7, :cond_2

    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    if-gt v7, v8, :cond_5

    :cond_2
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v5, v0, 0xe

    add-int/lit16 v7, v0, 0x759

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v8, v5, 0xd

    aget-byte v2, v7, v8

    const/16 v7, 0x7f

    if-ne v2, v7, :cond_6

    const/16 v4, 0xc

    :goto_1
    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v8, v5, v1

    aget-byte v3, v7, v8

    if-ne v2, v1, :cond_7

    iput-boolean v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    :goto_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v7, v3, :cond_8

    :cond_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    if-ge v7, v11, :cond_4

    iput v11, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    iput v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v4, 0xd

    goto :goto_1

    :cond_7
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_3

    :cond_8
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getTotalDaysTo(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v2, v0, 0x190

    add-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    return v0
.end method
