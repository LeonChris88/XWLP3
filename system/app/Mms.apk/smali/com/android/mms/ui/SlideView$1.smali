.class Lcom/android/mms/ui/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$002(Lcom/android/mms/ui/SlideView;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$100(Lcom/android/mms/ui/SlideView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$100(Lcom/android/mms/ui/SlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$102(Lcom/android/mms/ui/SlideView;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$300(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$302(Lcom/android/mms/ui/SlideView;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$400(Lcom/android/mms/ui/SlideView;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$500(Lcom/android/mms/ui/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$1;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, v2}, Lcom/android/mms/ui/SlideView;->access$502(Lcom/android/mms/ui/SlideView;Z)Z

    :cond_2
    return-void
.end method
