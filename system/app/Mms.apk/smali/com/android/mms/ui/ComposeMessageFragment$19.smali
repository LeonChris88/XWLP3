.class Lcom/android/mms/ui/ComposeMessageFragment$19;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$19;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteMsgAnimation()V
    .locals 0

    return-void
.end method

.method public onEndDeleteMsgAnimation()V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "End Delete Animation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$19;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method
