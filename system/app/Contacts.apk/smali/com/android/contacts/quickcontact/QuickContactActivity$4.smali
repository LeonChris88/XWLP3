.class Lcom/android/contacts/quickcontact/QuickContactActivity$4;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_0

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p3, :cond_2

    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v1, 0x7f0a0046

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_0

    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0, p3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$400(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$4;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p3, :cond_0

    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
