.class Lcom/android/contacts/detail/ContactDetailFragment$4;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$groups:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->val$groups:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v10}, Lcom/android/contacts/detail/ContactDetailFragment;->access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v9, "account_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "com.google"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    :cond_1
    new-instance v7, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "android.intent.extra.CONTACT_ID"

    invoke-virtual {v7, v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v9, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v10, v10, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->val$groups:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v9, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$4;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v7, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
