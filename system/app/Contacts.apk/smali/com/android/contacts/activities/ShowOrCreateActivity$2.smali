.class Lcom/android/contacts/activities/ShowOrCreateActivity$2;
.super Ljava/lang/Object;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ShowOrCreateActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->access$000(Lcom/android/contacts/activities/ShowOrCreateActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->access$000(Lcom/android/contacts/activities/ShowOrCreateActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "hidecreatelabel"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2, v0}, Lcom/android/contacts/activities/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ShowOrCreateActivity$2;->this$0:Lcom/android/contacts/activities/ShowOrCreateActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/ShowOrCreateActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
