.class Lcom/android/mms/ui/ComposeMessageFragment$50;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v3, 0x0

    const v7, 0x7f09017d

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p5, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v2

    aget v4, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v3, v0, v6, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v3, v0, v6, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0
.end method
