.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->subDialogBuilder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2002(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2102(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$1902(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$7;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->setSelection(I)V

    return-void
.end method
