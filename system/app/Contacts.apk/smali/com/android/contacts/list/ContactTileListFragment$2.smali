.class Lcom/android/contacts/list/ContactTileListFragment$2;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$2;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
