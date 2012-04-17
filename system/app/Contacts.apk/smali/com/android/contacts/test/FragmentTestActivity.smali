.class public Lcom/android/contacts/test/FragmentTestActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "FragmentTestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04006a

    invoke-virtual {p0, v0}, Lcom/android/contacts/test/FragmentTestActivity;->setContentView(I)V

    return-void
.end method
