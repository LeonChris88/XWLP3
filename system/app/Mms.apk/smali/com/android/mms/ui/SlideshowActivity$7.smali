.class Lcom/android/mms/ui/SlideshowActivity$7;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$7;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$700(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmilPlayerController.handleEvent : SMIL_DOCUMENT_END_EVENT, mIsPreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$800(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->updateToPlayButton()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$7;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    :cond_2
    return-void
.end method
