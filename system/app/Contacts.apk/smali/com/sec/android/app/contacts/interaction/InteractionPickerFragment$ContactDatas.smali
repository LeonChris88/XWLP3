.class public Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;
.super Ljava/lang/Object;
.source "InteractionPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactDatas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;
    }
.end annotation


# instance fields
.field includingPrimaryContact:Z

.field public mAccountType:Ljava/lang/String;

.field public mAvailableDataCount:I

.field public mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlt:Ljava/lang/String;

.field public mPartition:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field singleData:Z

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAvailableDataCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDisplayName:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    invoke-direct {p0, p2, p5}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    :cond_0
    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private makeDataSet(Landroid/database/Cursor;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    if-ne p2, v2, :cond_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveDataType(Landroid/database/Cursor;)V

    if-ne p2, v2, :cond_0

    goto :goto_1
.end method

.method private saveData(Landroid/database/Cursor;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)V

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->contactId:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->displayName:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->dataType:I

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAvailableDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mAvailableDataCount:I

    return-void
.end method

.method private saveDataType(Landroid/database/Cursor;)V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
    .end sparse-switch
.end method

.method private setPrimaryContact(Landroid/database/Cursor;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->move(I)Z

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->singleData:Z

    const-string v3, "InteractionPickerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "singleData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->singleData:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "InteractionPickerFragment"

    const-string v6, "cursor load "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->includingPrimaryContact:Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->includingPrimaryContact:Z

    goto :goto_2

    :cond_4
    if-lt v0, v5, :cond_2

    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->includingPrimaryContact:Z

    goto :goto_2
.end method
