.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I

    move-result v0

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addFavoriteContactList()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I

    move-result v0

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->runDeleteFavoriteListThread()V

    goto :goto_0
.end method
