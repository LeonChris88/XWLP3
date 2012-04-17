.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiDataPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method public onOneDataInputed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 2
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

    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardByMultiUriIntent(Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardIntent(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
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

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    return-void
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
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

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;J)V

    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method

.method public onRevertAction()V
    .locals 0

    return-void
.end method
