.class public Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckBoxAndSettingsPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mSetingsButton:Landroid/widget/ImageView;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setLayoutResource(I)V

    const v0, 0x7f04006f

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f08014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mCheckBox:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mCheckBox:Landroid/view/View;

    new-instance v1, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$1;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference$2;-><init>(Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->enableSettingsButton()V

    return-void
.end method

.method public setFragmentIntent(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/CheckBoxAndSettingsPreference;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method
