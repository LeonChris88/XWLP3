.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->startRequestProcessing()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eq v0, p2, :cond_2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    goto :goto_0
.end method
