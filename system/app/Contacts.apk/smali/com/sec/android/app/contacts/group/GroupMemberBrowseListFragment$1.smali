.class Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;
.super Ljava/lang/Object;
.source "GroupMemberBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;->onAddMemberRequested()V

    :cond_0
    return-void
.end method
