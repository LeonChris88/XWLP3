.class Lcom/android/contacts/activities/ContactDetailActivity$3$1;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactDetailActivity$3;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity$3;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iput-object p2, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$102(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$002(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$200(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$3$1;->this$1:Lcom/android/contacts/activities/ContactDetailActivity$3;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactDetailActivity$3;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/ContactDetailActivity;->access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method
