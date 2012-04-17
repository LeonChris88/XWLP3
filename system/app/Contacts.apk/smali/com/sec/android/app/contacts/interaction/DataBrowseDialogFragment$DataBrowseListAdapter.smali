.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountType:Ljava/lang/String;

.field final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-static {p1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)V
    .locals 12

    const-string v3, ""

    const-string v9, ""

    iget-object v5, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    iget v0, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataType:I

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditType;

    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_0

    iget-object v10, v8, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_4

    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_0
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_2

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v10, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v9, p3, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v9, ""

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
