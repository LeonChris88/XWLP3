.class Lcom/android/contacts/group/GroupBrowseListFragment$3;
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

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$3;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$3;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    return-void
.end method
