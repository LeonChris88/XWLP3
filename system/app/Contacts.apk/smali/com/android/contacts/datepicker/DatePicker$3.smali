.class Lcom/android/contacts/datepicker/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$200(Lcom/android/contacts/datepicker/DatePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iput p3, v0, Lcom/android/contacts/datepicker/DatePicker;->mMonth:I

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$300(Lcom/android/contacts/datepicker/DatePicker;)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$000(Lcom/android/contacts/datepicker/DatePicker;)V

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$3;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-virtual {v0}, Lcom/android/contacts/datepicker/DatePicker;->updateDaySpinner()V

    return-void
.end method
