.class Lcom/android/mms/ui/TranslateActivity$9;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1800(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-static {v1, v2, v0, v0}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v4}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v4}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_0
.end method
