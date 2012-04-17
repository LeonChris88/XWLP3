.class Lcom/android/mms/ui/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10202e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0, v2}, Lcom/android/mms/ui/NumberPicker;->access$200(Lcom/android/mms/ui/NumberPicker;Z)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$200(Lcom/android/mms/ui/NumberPicker;Z)V

    goto :goto_0
.end method
