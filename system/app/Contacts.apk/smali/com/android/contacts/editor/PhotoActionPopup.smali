.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;
    }
.end annotation


# static fields
.field private static mlistPopupWindow:Landroid/widget/ListPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListPopupWindow;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    if-eq p3, v7, :cond_0

    if-ne p3, v9, :cond_1

    :cond_0
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v6, 0x7f0a0171

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq p3, v8, :cond_2

    if-ne p3, v7, :cond_3

    :cond_2
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v6, 0x7f0a0051

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    if-eq p3, v7, :cond_4

    if-ne p3, v8, :cond_5

    :cond_4
    if-nez p3, :cond_9

    const v4, 0x7f0a017c

    :goto_0
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p3, :cond_6

    if-eq p3, v7, :cond_6

    if-ne p3, v8, :cond_7

    :cond_6
    if-nez p3, :cond_a

    const v4, 0x7f0a017e

    :goto_1
    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x7f0400b6

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v5, Landroid/widget/ListPopupWindow;

    invoke-direct {v5, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v2, v1, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_8
    sget-object v5, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v5

    :cond_9
    const v4, 0x7f0a017d

    goto :goto_0

    :cond_a
    const v4, 0x7f0a017f

    goto :goto_1
.end method

.method public static getlistpopupwindow()Landroid/widget/ListPopupWindow;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mlistPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method
