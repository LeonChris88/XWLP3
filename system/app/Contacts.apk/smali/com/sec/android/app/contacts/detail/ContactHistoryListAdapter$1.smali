.class Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;
.super Ljava/lang/Object;
.source "ContactHistoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setCheckPosition(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateAllCheckState()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-wide/16 v0, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_2
    :goto_1
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-static {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0x12c

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/16 v3, 0xc8

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch
.end method
