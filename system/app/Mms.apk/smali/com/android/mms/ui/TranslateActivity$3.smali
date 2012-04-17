.class Lcom/android/mms/ui/TranslateActivity$3;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateActivity;->createAndShowErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$3;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iput p2, p0, Lcom/android/mms/ui/TranslateActivity$3;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/android/mms/ui/TranslateActivity$3;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$3;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/mms/ui/TranslateActivity$3;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$3;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$100(Lcom/android/mms/ui/TranslateActivity;)V

    goto :goto_0
.end method
