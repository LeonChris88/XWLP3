.class Lcom/android/mms/ui/SlideView$4;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView$4;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$4;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "kkahn/Mms/SlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/x-vNote"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "text/x-vnote"

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$4;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v3}, Lcom/android/mms/ui/SlideView;->access$2600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v3}, Lcom/android/mms/ui/SlideView;->access$2800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v4}, Lcom/android/mms/ui/SlideView;->access$2700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09018a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
