.class Lcom/android/mms/ui/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker$5;->mCanceled:Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$400(Lcom/android/mms/ui/NumberPicker;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NumberPicker$5;->mCanceled:Z

    return-void
.end method
