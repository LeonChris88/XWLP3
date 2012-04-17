.class public Lcom/android/contacts/widget/SearchEditText;
.super Landroid/widget/EditText;
.source "SearchEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

.field private mMaginfyingGlassEnabled:Z

.field private mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

.field private mMagnifyingGlassShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/widget/SearchEditText;->mMaginfyingGlassEnabled:Z

    invoke-virtual {p0, p0}, Lcom/android/contacts/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p0}, Lcom/android/contacts/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/contacts/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private trim(Landroid/text/Editable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    invoke-direct {p0, p1}, Lcom/android/contacts/widget/SearchEditText;->trim(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;->onFilterChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/widget/SearchEditText;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/SearchEditText;->trim(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    invoke-interface {v0}, Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;->onCancelSearch()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/SearchEditText;->mListener:Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;

    invoke-interface {v0}, Lcom/android/contacts/widget/SearchEditText$OnFilterTextListener;->onCancelSearch()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/contacts/widget/SearchEditText;->mMagnifyingGlassShown:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/contacts/widget/SearchEditText;->mMagnifyingGlassShown:Z

    iget-boolean v1, p0, Lcom/android/contacts/widget/SearchEditText;->mMagnifyingGlassShown:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/widget/SearchEditText;->mMaginfyingGlassEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/widget/SearchEditText;->mMagnifyingGlass:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v2, v1, v2}, Lcom/android/contacts/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/contacts/widget/SearchEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v1

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
