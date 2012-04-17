.class Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$1402(Lcom/android/mms/ui/NumberPicker;I)I

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1500(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$1600(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1700(Lcom/android/mms/ui/NumberPicker;)V

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$1800(Lcom/android/mms/ui/NumberPicker;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/NumberPicker;->access$1900(Lcom/android/mms/ui/NumberPicker;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$1500(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$1600(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v2}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2100(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPicker;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$AdjustScrollerCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$2000(Lcom/android/mms/ui/NumberPicker;)I

    move-result v0

    goto :goto_1
.end method
