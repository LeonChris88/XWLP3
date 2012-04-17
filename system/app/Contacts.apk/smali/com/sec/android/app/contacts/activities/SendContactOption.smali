.class public Lcom/sec/android/app/contacts/activities/SendContactOption;
.super Landroid/app/Activity;
.source "SendContactOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SendContactOption;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    const v2, 0x7f0a0233

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->setTitle(I)V

    const v2, 0x7f0400b7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->setContentView(I)V

    const v2, 0x7f0d01f6

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SendContactOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0237

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/sec/android/app/contacts/activities/SendContactOption$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SendContactOption$1;-><init>(Lcom/sec/android/app/contacts/activities/SendContactOption;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SendContactOption;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
