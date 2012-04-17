.class Lcom/android/contacts/editor/RawContactEditorView$2;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;

.field final synthetic val$fields:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$fields:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->val$fields:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/KindSectionView;

    const-string v1, "#phoneticName"

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v1, v3}, Lcom/android/contacts/editor/RawContactEditorView;->access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$200(Lcom/android/contacts/editor/RawContactEditorView;)V

    :goto_0
    sget-object v1, Lcom/android/contacts/editor/RawContactEditorView;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView$2;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/RawContactEditorView;->access$300(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    goto :goto_0
.end method
