.class Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactUriQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-static {v4}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v4, v3}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public runQuery()V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->access$000(Lcom/android/contacts/list/ContactBrowseListFragment;)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v6, "lookup"

    aput-object v6, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactUriQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
