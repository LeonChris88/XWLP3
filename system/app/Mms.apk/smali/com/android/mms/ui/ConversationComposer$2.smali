.class Lcom/android/mms/ui/ConversationComposer$2;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$400(Lcom/android/mms/ui/ConversationComposer;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$500(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer$2;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationComposer;->access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    :cond_0
    return-void
.end method
