.class Lcom/android/contacts/editor/LabeledEditorView$6;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$6;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$6;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->access$900(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView$6;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v1}, Lcom/android/contacts/editor/LabeledEditorView;->access$800(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView$6;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {v2}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
