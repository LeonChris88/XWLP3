.class Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-boolean v1, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$2200(Lcom/android/mms/ui/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/mms/ui/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
