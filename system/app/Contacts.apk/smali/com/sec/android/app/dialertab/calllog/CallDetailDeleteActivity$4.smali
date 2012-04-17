.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->startCheckProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x96

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->areAllItemsEnabled()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$402(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    return-void
.end method
