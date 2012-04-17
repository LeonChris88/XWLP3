.class Lcom/android/contacts/editor/LabeledEditorView$4;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;

.field final synthetic val$customType:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$customType:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->val$customType:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$502(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    iget-object v4, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4, v2}, Lcom/android/contacts/editor/LabeledEditorView;->access$502(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    iget v6, v6, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$700(Lcom/android/contacts/editor/LabeledEditorView;)V

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$900(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/widget/Spinner;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$800(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method
