.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageSimMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mParent:Lcom/android/mms/ui/ManageSimMessages;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object p3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/ManageSimMessages"

    const-string v1, "onQueryComplete()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, p3}, Lcom/android/mms/ui/ManageSimMessages;->access$402(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startManagingCursor(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v1, Lcom/android/mms/ui/SimMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->mParent:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$602(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/SimMessageListAdapter;)Lcom/android/mms/ui/SimMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/SimMessageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v4}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;I)V

    goto :goto_1
.end method
