.class Lcom/android/contacts/group/GroupBrowseListFragment$5;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$5;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$5;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method
