.class Lcom/android/settings/wifi/WifiApDialog$3;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$600(Lcom/android/settings/wifi/WifiApDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->access$702(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/16 v7, 0x3f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$700(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDialog;->access$400(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0873

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDialog;->access$400(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0876

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0874

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->access$002(Lcom/android/settings/wifi/WifiApDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$500(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog$3;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
