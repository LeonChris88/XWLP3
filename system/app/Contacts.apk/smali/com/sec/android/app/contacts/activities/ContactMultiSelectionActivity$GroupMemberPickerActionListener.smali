.class final Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;
.super Ljava/lang/Object;
.source "ContactMultiSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnGroupMemberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMemberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$300(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V

    return-void
.end method

.method public onRevertAction()V
    .locals 0

    return-void
.end method

.method public onSelectedAction(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ModifiedIds"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$GroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->finish()V

    return-void
.end method
