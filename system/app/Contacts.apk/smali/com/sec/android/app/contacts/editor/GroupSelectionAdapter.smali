.class public Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$1;,
        Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;

    iget-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->groupText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->groupText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$1;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040085

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d019d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->groupText:Landroid/widget/TextView;

    const v2, 0x7f0d00df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter$groupCache;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
