.class Lcom/android/mms/ui/ConversationListFragment$11;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    const/4 v7, 0x0

    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Landroid/database/Cursor;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v3

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_1
    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xca

    const v6, 0x7f090066

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    :goto_2
    const/16 v5, 0xc8

    const v6, 0x7f09000b

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$1402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5, p1}, Lcom/android/mms/ui/ConversationListFragment;->access$1502(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CBmessages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$11;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090123

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    :cond_4
    const-string v5, ","

    invoke-virtual {v4, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xcb

    const v6, 0x7f090067

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method
