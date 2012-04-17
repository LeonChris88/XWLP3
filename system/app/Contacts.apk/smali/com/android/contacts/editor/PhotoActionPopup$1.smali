.class final Lcom/android/contacts/editor/PhotoActionPopup$1;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->access$000()Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoActionPopup$1;->val$listener:Lcom/android/contacts/editor/PhotoActionPopup$Listener;

    invoke-interface {v1}, Lcom/android/contacts/editor/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
