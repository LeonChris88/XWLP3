.class Lcom/android/mms/ui/TranslateActivity$5;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-le v2, p2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mFromRecentKeys:[Ljava/lang/String;

    aget-object v0, v2, p2

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1800(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v3}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v5, v4}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    :cond_0
    const/4 v2, -0x1

    if-le p2, v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2, v0, v5}, Lcom/android/mms/ui/TranslateActivity;->access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v2

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2, v5}, Lcom/android/mms/ui/TranslateActivity;->access$1700(Lcom/android/mms/ui/TranslateActivity;Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$100(Lcom/android/mms/ui/TranslateActivity;)V

    const/4 p2, -0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mFromLanguageStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v4}, Lcom/android/mms/ui/TranslateActivity;->access$1600(Lcom/android/mms/ui/TranslateActivity;)I

    move-result v4

    sub-int v4, p2, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/util/TranslateLanguages;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v3, v3, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v3, v0}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v2, v2, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v2, v0}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$5;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    goto :goto_0
.end method
