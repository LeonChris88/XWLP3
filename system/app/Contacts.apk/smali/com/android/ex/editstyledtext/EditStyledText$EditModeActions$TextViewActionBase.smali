.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewActionBase"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected doEndPosIsSelected()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->fixSelection()Z

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doNotSelected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$TextViewActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
