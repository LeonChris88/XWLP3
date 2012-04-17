.class Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;
.super Landroid/database/ContentObserver;
.source "InteractionGroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "singlePhotoUpdateCheckValue"

    aput-object v0, v2, v4

    const-string v0, "content://com.android.contacts/check_photo_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$002(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;Landroid/content/Context;)Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionGroupBrowseListFragment$GroupExpandableListAdapter;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
