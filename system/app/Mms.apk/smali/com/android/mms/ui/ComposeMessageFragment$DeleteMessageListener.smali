.class Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;
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
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1202(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)V

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    const-string v11, "ril.sms.gcf-mode"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "On"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "GCF Mode On -  DB Count Reset"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    sput v11, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "DeleteAnimation Progress Dismissed with OnClick()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    new-array v2, v11, [I

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v12

    aput v12, v2, v11

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900(Lcom/android/mms/ui/ComposeMessageFragment;[I)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v11

    new-array v2, v11, [I

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    :cond_6
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    if-lez v3, :cond_7

    new-array v9, v3, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900(Lcom/android/mms/ui/ComposeMessageFragment;[I)V

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    :cond_7
    if-nez v3, :cond_0

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_0

    :cond_8
    const/16 v11, 0x14

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_9

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v11, v3, -0x1

    aput v6, v2, v11

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1302(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    return-void
.end method
