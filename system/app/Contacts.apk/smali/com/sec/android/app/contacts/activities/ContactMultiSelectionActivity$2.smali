.class Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;
.super Ljava/lang/Object;
.source "ContactMultiSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mListFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/list/OnActionBarClickListener;->onRevertAction()V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    return-void
.end method
