.class Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/model/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-eqz p2, :cond_0

    move-object v3, p2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountType:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-static {v6}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-object v3

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040016

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;

    invoke-direct {v4, v3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
