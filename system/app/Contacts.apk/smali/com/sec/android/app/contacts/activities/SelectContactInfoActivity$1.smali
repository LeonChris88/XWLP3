.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    :cond_0
    return-void
.end method
