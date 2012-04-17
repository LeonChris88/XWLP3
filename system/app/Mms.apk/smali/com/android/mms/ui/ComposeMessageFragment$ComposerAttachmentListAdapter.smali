.class Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerAttachmentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mResource:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->mResource:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v7, 0x7f080028

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v7, 0x7f080029

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move v4, p1

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vCard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ".vcf"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".vcf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const v6, 0x7f02009e

    :goto_0
    invoke-virtual {v1, v6, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    new-instance v7, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object p2

    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vCalendar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ".vcs"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ".vcs"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const v6, 0x7f02009d

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vNote"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, ".vnt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, ".vnt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const v6, 0x7f0200a1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vtodo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, ".vts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ".vts"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const v6, 0x7f0200a0

    goto :goto_0

    :cond_8
    const v6, 0x7f0200ed

    goto/16 :goto_0
.end method
