.class Lcom/android/contacts/editor/ContactEditorFragment$4$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

.field final synthetic val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$4;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->val$popup:Landroid/widget/ListPopupWindow;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->val$adapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    const-string v2, "primary.sim.account_name"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onItemClick : isSimFull!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v2, v3, v4, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$700(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v2, v3, v4, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v2, v3, v4, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$700(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$4;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v3, v3, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment$4$1;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$4;

    iget-object v4, v4, Lcom/android/contacts/editor/ContactEditorFragment$4;->val$currentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-static {v2, v3, v4, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto/16 :goto_0
.end method
