.class Lcom/android/settings/fmm/RecipientsPlusView$1;
.super Ljava/lang/Object;
.source "RecipientsPlusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RecipientsPlusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RecipientsPlusView;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RecipientsPlusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v4}, Lcom/android/settings/fmm/RecipientsPlusView;->access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v4}, Lcom/android/settings/fmm/RecipientsPlusView;->access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-gt v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v4}, Lcom/android/settings/fmm/RecipientsPlusView;->access$100(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04004e

    iget-object v6, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v6}, Lcom/android/settings/fmm/RecipientsPlusView;->access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v4}, Lcom/android/settings/fmm/RecipientsPlusView;->access$000(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/fmm/RecipientsPlusView$1;->this$0:Lcom/android/settings/fmm/RecipientsPlusView;

    invoke-static {v4}, Lcom/android/settings/fmm/RecipientsPlusView;->access$200(Lcom/android/settings/fmm/RecipientsPlusView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0722

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
