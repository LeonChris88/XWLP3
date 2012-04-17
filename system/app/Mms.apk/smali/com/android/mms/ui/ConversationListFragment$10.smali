.class Lcom/android/mms/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick(),position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, p2, Lcom/android/mms/ui/ConversationListItem;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getAvatarView()Landroid/widget/QuickContactBadge;

    move-result-object v3

    sput-object v3, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v3, v6}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1100(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    long-to-int v4, p4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/ConversationListAdapter;->toggleCheckBox(J)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v3, p4, p5}, Lcom/android/mms/ui/ConversationListFragment;->access$1200(Lcom/android/mms/ui/ConversationListFragment;J)V

    goto :goto_0
.end method
