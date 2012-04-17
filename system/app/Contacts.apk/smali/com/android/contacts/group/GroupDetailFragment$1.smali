.class Lcom/android/contacts/group/GroupDetailFragment$1;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$1;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    return-void
.end method
