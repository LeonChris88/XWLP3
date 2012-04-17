.class Lcom/android/contacts/activities/ContactDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ContactDetailActivity;->access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
