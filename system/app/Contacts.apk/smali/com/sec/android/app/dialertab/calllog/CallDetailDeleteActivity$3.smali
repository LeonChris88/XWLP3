.class Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;
.super Ljava/lang/Object;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
