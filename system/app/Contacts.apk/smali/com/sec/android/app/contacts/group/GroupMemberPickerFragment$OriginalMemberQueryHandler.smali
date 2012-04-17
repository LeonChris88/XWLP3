.class Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GroupMemberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OriginalMemberQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/4 v1, -0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->setOriginalMemeberIds(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$402(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-static {v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$402(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOADED:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-void
.end method

.method public runQuery()V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    iget-object v3, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$200(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;I)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    move-object v0, p0

    move-object v3, v2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$OriginalMemberQueryHandler;->this$0:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;

    sget-object v1, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;->LOAING:Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;->access$302(Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment;Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;)Lcom/sec/android/app/contacts/group/GroupMemberPickerFragment$Status;

    return-void
.end method
