.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private hasProviderStatus:Z

.field private mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

.field private mMessageView:Landroid/widget/TextView;

.field private mNSecNoContactsMsgResId:I

.field private mNoContactsMsgResId:I

.field private mNoItemsImageView:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

.field private mRetryUpgradeButton:Landroid/widget/Button;

.field private mSecondaryMessageView:Landroid/widget/TextView;

.field private mUninstallAppsButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private noContactType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iput v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->hasProviderStatus:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactsUnavailableActionListener;->onFreeInternalStorageAction()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->retryUpgrade()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d022b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0400d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d0227

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d022b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->update()V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setMessageText(II)V
    .locals 6

    const/16 v1, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iput p2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v0

    if-ne v0, v5, :cond_0

    if-eq p1, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eq p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mSecondaryMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNoContactType(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->noContactType:I

    return-void
.end method

.method public setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mListener:Lcom/android/contacts/list/OnContactsUnavailableActionListener;

    return-void
.end method

.method public setProviderStatusLoader(Lcom/android/contacts/list/ProviderStatusLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->hasProviderStatus:Z

    return-void
.end method

.method public update()V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->hasProviderStatus:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v2}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoContactsMsgResId:I

    iget v3, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNSecNoContactsMsgResId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0a0180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0a0181

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0182

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatusLoader:Lcom/android/contacts/list/ProviderStatusLoader;

    invoke-virtual {v5}, Lcom/android/contacts/list/ProviderStatusLoader;->getProviderStatusData()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->noContactType:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mNoItemsImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mUninstallAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mRetryUpgradeButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
