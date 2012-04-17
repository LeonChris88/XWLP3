.class public Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    iput-object p3, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    :goto_0
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(),whichButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return-void
.end method
