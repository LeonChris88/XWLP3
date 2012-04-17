.class public Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;
.super Landroid/widget/NumberPicker;
.source "NumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWrapNumberPicker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/NumberPickerDialog$NonWrapNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected changeCurrent(I)V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/NumberPickerDialog;->access$000()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/NumberPickerDialog;->access$100()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/NumberPickerDialog;->access$100()I

    move-result p1

    goto :goto_0
.end method
