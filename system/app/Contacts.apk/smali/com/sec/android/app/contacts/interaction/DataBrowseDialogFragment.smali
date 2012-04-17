.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

.field private mName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004c

    const v4, 0x1020014

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    iget-object v5, v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    const v0, 0x7f0d0118

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f0d0119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0114

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0d0117

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v10
.end method

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

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismiss()V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V

    return-void
.end method

.method public setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    return-void
.end method
