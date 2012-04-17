.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    invoke-virtual {p0, p0}, Lcom/android/settings/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b04c5

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    return-void
.end method
