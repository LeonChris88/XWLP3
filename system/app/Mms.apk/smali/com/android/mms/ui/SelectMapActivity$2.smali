.class Lcom/android/mms/ui/SelectMapActivity$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SelectMapActivity;->access$100(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v3, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
