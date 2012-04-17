.class Lcom/android/mms/ui/MessageOptions$AttachOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachOkListener"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mMsgId:J

.field mSave:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    iput-wide p4, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mMsgId:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v10, 0x0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/mms/ui/AttachmentListAdapter;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v9

    if-ge v4, v9, :cond_4

    invoke-virtual {v5, v4, v10, v10}, Lcom/android/mms/ui/AttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f080006

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    iget-boolean v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/mms/ui/MessageOptions;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-boolean v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mSave:Z

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v10}, Lcom/android/mms/ui/MessageOptions;->access$600(Lcom/android/mms/ui/MessageOptions;)J

    move-result-wide v10

    invoke-static {v9, v8, v10, v11}, Lcom/android/mms/ui/MessageOptions;->access$700(Lcom/android/mms/ui/MessageOptions;Ljava/util/ArrayList;J)V

    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-static {v9}, Lcom/android/mms/ui/MessageOptions;->access$500(Lcom/android/mms/ui/MessageOptions;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v10, p0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/mms/ui/MessageOptions;->access$800(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
