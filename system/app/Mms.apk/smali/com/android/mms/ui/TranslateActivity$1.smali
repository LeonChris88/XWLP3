.class Lcom/android/mms/ui/TranslateActivity$1;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateActivity;->createAndShowNetworkDialog()V
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

    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$1;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$1;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/TranslateActivity;->finish()V

    return-void
.end method
