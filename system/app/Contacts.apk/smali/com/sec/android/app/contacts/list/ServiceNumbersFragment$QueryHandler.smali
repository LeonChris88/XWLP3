.class Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ServiceNumbersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;
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
            "Lcom/sec/android/app/contacts/activities/ServiceNumbers;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected displayProgress(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->displayProgress(Z)V

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "[ServiceNumbersFragment]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: cursor.count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-static {v0, p3}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$002(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ServiceNumbers;->showContactsUnavailableFragment()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$100(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->this$0:Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;->access$000(Lcom/sec/android/app/contacts/list/ServiceNumbersFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$ServiceNumberListAdapter;->changeCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/ServiceNumbersFragment$QueryHandler;->displayProgress(Z)V

    return-void
.end method
