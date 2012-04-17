.class Lcom/android/contacts/activities/GroupDetailActivity$1;
.super Ljava/lang/Object;
.source "GroupDetailActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/GroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMemberRequested()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GroupInfo"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$500(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "AutoAdd"

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v2}, Lcom/android/contacts/activities/GroupDetailActivity;->access$600(Lcom/android/contacts/activities/GroupDetailActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$700(Lcom/android/contacts/activities/GroupDetailActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v1, v3}, Lcom/android/contacts/activities/GroupDetailActivity;->access$802(Lcom/android/contacts/activities/GroupDetailActivity;I)I

    const-string v1, "EditMode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/GroupDetailActivity;->access$802(Lcom/android/contacts/activities/GroupDetailActivity;I)I

    const-string v1, "EditMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "ignoreDefaultUpBehavior"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onGroupSizeUpdated(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0164

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity$1;->this$0:Lcom/android/contacts/activities/GroupDetailActivity;

    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/contacts/activities/GroupDetailActivity;->access$102(I)I

    return-void
.end method
