.class final Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InteractionGroupMemberPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    return-void
.end method

.method public onOneDataInputed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$InteractionGroupMemberPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->returnPickerResult(Ljava/util/HashMap;)V

    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 0

    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onRevertAction()V
    .locals 0

    return-void
.end method
