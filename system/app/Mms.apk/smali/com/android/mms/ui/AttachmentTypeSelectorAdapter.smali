.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p2, p1, v0, v1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1

    invoke-static {p2, p1, p3, p4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;ZI)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static getData(ILandroid/content/Context;ZI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-nez p2, :cond_b

    const-string v1, "com.cooliris.media"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0900c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020050

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_0
    const-string v1, "com.sec.android.app.camera"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0900c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-static {v0, v1, v2, v7}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_1
    const-string v1, "com.cooliris.media"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0900ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_2
    const-string v1, "com.sec.android.app.camera"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0900cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004e

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.sec.android.app.myfiles"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0900cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020053

    invoke-static {v0, v1, v2, v6}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_4
    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0900cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020056

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_5
    const-string v1, "com.google.android.apps.maps"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0901b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020051

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_6
    const-string v1, "com.android.contacts"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f090156

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004f

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_7
    const-string v1, "com.android.calendar"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f090157

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004c

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_8
    const-string v1, "com.sec.android.app.memo"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f090158

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020052

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_9
    const-string v1, "com.android.task"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0901ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02005b

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_a
    :goto_0
    return-object v0

    :cond_b
    if-eq p3, v4, :cond_c

    const/4 v1, 0x6

    if-ne p3, v1, :cond_10

    :cond_c
    const-string v1, "com.cooliris.media"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x7f0900c8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020050

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_d
    const-string v1, "com.sec.android.app.camera"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f0900c9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-static {v0, v1, v2, v7}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_e
    const-string v1, "com.cooliris.media"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x7f0900ca

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_f
    const-string v1, "com.sec.android.app.camera"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0900cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02004e

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0

    :cond_10
    const/4 v1, 0x7

    if-ne p3, v1, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "com.sec.android.app.myfiles"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x7f0900cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020053

    invoke-static {v0, v1, v2, v6}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    :cond_11
    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {p1, v1}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f0900cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020056

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method
