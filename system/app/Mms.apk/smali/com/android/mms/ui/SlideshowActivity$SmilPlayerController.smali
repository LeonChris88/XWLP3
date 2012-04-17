.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "next()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)V

    :cond_0
    return-void
.end method

.method public prev()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$600(Lcom/android/mms/ui/SlideshowActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/SlideshowActivity;->getStaticPresenter()Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    :cond_1
    return-void
.end method
