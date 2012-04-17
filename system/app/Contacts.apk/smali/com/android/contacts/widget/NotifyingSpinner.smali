.class public Lcom/android/contacts/widget/NotifyingSpinner;
.super Landroid/widget/Spinner;
.source "NotifyingSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/contacts/widget/NotifyingSpinner;->mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/NotifyingSpinner;->mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;

    invoke-interface {v0, p0, p1}, Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;->onSetSelection(Lcom/android/contacts/widget/NotifyingSpinner;I)V

    :cond_0
    return-void
.end method
