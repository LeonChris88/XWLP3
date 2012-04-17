.class Lcom/android/mms/ui/ComposeMessageFragment$1;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne v2, v6, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    :cond_1
    if-ne v2, v8, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    :cond_2
    if-ne v2, v9, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    :cond_3
    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeText()Z

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-nez v5, :cond_6

    const/16 v3, 0xf

    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    const/16 v5, 0xf

    if-ne v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    if-eq v2, v6, :cond_7

    if-ne v2, v8, :cond_8

    :cond_7
    const/16 v3, 0xe

    goto :goto_1

    :cond_8
    if-ne v2, v9, :cond_9

    const/16 v3, 0x10

    goto :goto_1

    :cond_9
    const/16 v3, 0xc

    goto :goto_1

    :sswitch_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v6

    invoke-static {v5, v6, v1, v2}, Lcom/android/mms/ui/MessageUtils;->viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5, v7, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V

    goto/16 :goto_0

    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, v6, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v7, v6}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v5, v6, v7}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_2

    :sswitch_5
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$1;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$900(Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x14 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2b -> :sswitch_6
    .end sparse-switch
.end method
