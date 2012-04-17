.class Lcom/android/mms/ui/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1, p1}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
