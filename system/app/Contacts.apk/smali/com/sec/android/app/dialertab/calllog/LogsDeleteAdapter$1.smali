.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;
.super Landroid/os/Handler;
.source "LogsDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
