.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;
.super Ljava/lang/Object;
.source "GlassLockScreenFMRadioWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMusicMovingBoxCurrentMarginBottom:I

.field private mMusicMovingBoxCurrentMarginTop:I

.field private mMusicMovingBoxOffset:I

.field private mMusicMovingBoxOrinalY:I

.field private mTextBottom:I

.field private mTextLeft:I

.field private mTextRight:I

.field private mTextTop:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v4, 0xc8

    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOrinalY:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOrinalY:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v1

    neg-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxOffset:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    neg-int v2, v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    invoke-static {v1, v2, v7, v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$900(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginTop:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextLeft:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextTop:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextRight:I

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mTextBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;->mMusicMovingBoxCurrentMarginBottom:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
