.class Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactHistoryViewByListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewByListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    move-object v3, p2

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f040036

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    const v5, 0x7f0d00e4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;

    iget v5, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$Item;->itemNameResId:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0d00df

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int v2, p1, v5

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object v3
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$ViewByListAdapter;->mFragment:Landroid/app/Fragment;

    return-void
.end method
