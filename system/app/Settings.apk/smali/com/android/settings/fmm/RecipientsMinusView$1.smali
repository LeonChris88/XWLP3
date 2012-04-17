.class Lcom/android/settings/fmm/RecipientsMinusView$1;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RecipientsMinusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    invoke-static {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->access$000(Lcom/android/settings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView$1;->this$0:Lcom/android/settings/fmm/RecipientsMinusView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->access$102(Lcom/android/settings/fmm/RecipientsMinusView;Z)Z

    return-void
.end method
