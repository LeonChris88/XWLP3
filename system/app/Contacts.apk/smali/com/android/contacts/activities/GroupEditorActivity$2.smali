.class Lcom/android/contacts/activities/GroupEditorActivity$2;
.super Ljava/lang/Object;
.source "GroupEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/GroupEditorActivity;->adjustActionBar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/GroupEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/GroupEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/GroupEditorActivity$2;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/GroupEditorActivity$2;->this$0:Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/GroupEditorActivity;->access$000(Lcom/android/contacts/activities/GroupEditorActivity;)Lcom/android/contacts/group/GroupEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    return-void
.end method
