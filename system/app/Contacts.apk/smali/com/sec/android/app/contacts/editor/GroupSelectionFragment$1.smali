.class Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;
.super Ljava/lang/Object;
.source "GroupSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;->this$0:Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v1, v6}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
