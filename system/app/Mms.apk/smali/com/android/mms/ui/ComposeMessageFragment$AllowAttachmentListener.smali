.class Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAttachmentListener"
.end annotation


# instance fields
.field private mAppend:Z

.field private mDataUri:Landroid/net/Uri;

.field private mMediaType:Ljava/lang/String;

.field private mReqCode:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    return-void
.end method

.method static synthetic access$7300(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v3, 0x0

    const-string v0, "Mms/AllowAttachmentListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(),which="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0900dc

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0901bd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v10

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;

    invoke-direct {v1, p0, v2, v10}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;ILandroid/app/ProgressDialog;)V

    const-string v3, "AllowAttachmentListener"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0900dd

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f0900db

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7700(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v4, 0x7f09015d

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z

    iget v9, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mReqCode:I

    move v7, v3

    move v8, v3

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V

    goto :goto_0
.end method
