.class final Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "GroupDeleteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    const v0, 0x7f040014

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    const v3, 0x7f0d0090

    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d008f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$400(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
