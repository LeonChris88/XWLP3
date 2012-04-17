.class Lcom/sec/android/app/camera/widget/TwTickerView$1;
.super Landroid/os/Handler;
.source "TwTickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwTickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwTickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$200(Lcom/sec/android/app/camera/widget/TwTickerView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$000(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v3}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$100(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$008(Lcom/sec/android/app/camera/widget/TwTickerView;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$002(Lcom/sec/android/app/camera/widget/TwTickerView;I)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView$1;->this$0:Lcom/sec/android/app/camera/widget/TwTickerView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/widget/TwTickerView;->access$302(Lcom/sec/android/app/camera/widget/TwTickerView;Z)Z

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v4, v1, v2}, Lcom/sec/android/app/camera/widget/TwTickerView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
