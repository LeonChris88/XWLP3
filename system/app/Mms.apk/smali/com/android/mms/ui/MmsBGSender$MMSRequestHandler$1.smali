.class Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;
.super Landroid/os/Handler;
.source "MmsBGSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const v5, 0x7f09022e

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x20

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09022b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09022c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v0, 0x4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09022d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v0, 0x8

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    and-int/lit8 v4, v0, 0x10

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler$1;->this$0:Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;

    invoke-static {v4}, Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;->access$000(Lcom/android/mms/ui/MmsBGSender$MMSRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
