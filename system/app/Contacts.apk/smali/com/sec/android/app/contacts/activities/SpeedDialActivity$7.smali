.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsFirst:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    if-eqz v4, :cond_2

    const/high16 v0, 0x4170

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_2

    const v4, 0x7f02016a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6, v0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$7;->mIsFirst:Z

    :cond_2
    return-void
.end method
