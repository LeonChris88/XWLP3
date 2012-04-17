.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceTitle:I

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    const v0, 0x7f0b00ff

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    const v3, 0x7f080153

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080154

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_4

    const v3, 0x7f0b00fd

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_5

    :cond_0
    move v0, v6

    :goto_1
    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_7

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    const v3, 0x7f0b00fa

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_8

    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v4, 0x7f04006b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    :cond_8
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    iput-boolean v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setNoDeviceFoundText(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    return-void
.end method
