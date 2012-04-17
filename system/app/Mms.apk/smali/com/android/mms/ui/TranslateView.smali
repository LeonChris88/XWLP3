.class public Lcom/android/mms/ui/TranslateView;
.super Landroid/widget/LinearLayout;
.source "TranslateView.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TranslateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    return v1
.end method

.method public setChecked(Z)V
    .locals 2

    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TranslateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public toggle()V
    .locals 2

    const v1, 0x7f0800b5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/TranslateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
