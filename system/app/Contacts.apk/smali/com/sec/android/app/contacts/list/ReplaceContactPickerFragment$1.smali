.class Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;
.super Ljava/lang/Object;
.source "ReplaceContactPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-static {v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->access$000(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->access$100(Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment$1;->this$0:Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/ReplaceContactPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method
