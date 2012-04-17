.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;
.super Ljava/lang/Object;
.source "LogsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$10;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    goto :goto_0
.end method
