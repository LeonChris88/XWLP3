.class Lcom/android/mms/ui/ComposeMessageFragment$57;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


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

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mDataSetChangedListener.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9400(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2

    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "mDataSetChangedListener.onDataSetChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->isEnter:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9300(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_0
    return-void
.end method
