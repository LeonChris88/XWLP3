.class Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/contacts/activities/JoinedContactActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$000(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$102(I)I

    invoke-static {}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setLinkedContactsCount(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/JoinedContactActivity;->setExplainText()V

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->access$200(Lcom/sec/android/app/contacts/list/JoinedContactFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler$1;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
