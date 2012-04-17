.class Lcom/android/mms/ui/ManageSimMessages$3;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    const v1, 0x7f090028

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V

    const v1, 0x7f0900b3

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    const v2, 0x7f0900b6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1, p1}, Lcom/android/mms/ui/ManageSimMessages;->access$202(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v1, v2}, Lcom/android/mms/ui/ManageSimMessages;->access$202(Lcom/android/mms/ui/ManageSimMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
