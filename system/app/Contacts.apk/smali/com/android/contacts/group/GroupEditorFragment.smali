.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field private static mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAccountView:Landroid/widget/LinearLayout;

.field private mAction:Ljava/lang/String;

.field private mAddMemberView:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameView:Landroid/widget/TextView;

.field private mIsAutoAdd:Z

.field private mIsSystemGroup:Z

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMode:I

.field private mModifiedMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mOriginalGroupName:Ljava/lang/String;

.field private mOriginalMemberIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRingToneView:Landroid/widget/LinearLayout;

.field private mSelectedAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/group/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field private mSystemGroupId:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$5;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private AddAllGoogleAccountsAndCreateGroup()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startSelectAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startEditMember()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    return-void
.end method

.method static synthetic access$1200(Ljava/util/List;)[J
    .locals 1

    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->fillSelectedGroupsAndAccounts(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private dismissProgress()V
    .locals 3

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const-string v0, "GroupEditorFragment"

    const-string v1, "progress null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GroupEditorFragment"

    const-string v1, "progress.get null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GroupEditorFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fillSelectedGroupsAndAccounts(Landroid/database/Cursor;)V
    .locals 9

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iget-object v7, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/contacts/model/AccountWithDataSet;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v1, v8}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v4, "com.google"

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getExceptedAccounts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getTitleSelection()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, ""

    const-string v2, ""

    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title != \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(account_name = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "deleted=0)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneTitle()V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasMembershipChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private hasNameChange()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTitleDuplicated()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getTitleSelection()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v2, v7

    const-string v5, "system_id"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "system_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    const-string v0, "originalMemberIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    const-string v0, "modifinedMemberIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    const-string v0, "selectedAccounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    const-string v0, "selectedGroup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    const-string v0, "customRingtone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    const-string v0, "isSystemGroup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    const-string v0, "systemGroupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    const-string v0, "originalGroupInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-void
.end method

.method private revert()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setGroupTitle()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupEditorForAccount(Z)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v1, 0x0

    const v3, 0x7f04007e

    iget v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v3, v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const-string v7, "currentEditorForAccount"

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v6, "currentEditorForAccount"

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    const/4 v1, 0x1

    :cond_1
    const v6, 0x7f0d0186

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_4

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateAccountsView()V

    :goto_1
    const v6, 0x7f0d018c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    new-array v7, v8, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v8, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setGroupTitle()V

    const v6, 0x7f0d018d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/contacts/group/GroupEditorFragment$2;

    invoke-direct {v7, p0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateRingtoneTitle()V

    const v6, 0x7f0d0192

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/android/contacts/group/GroupEditorFragment$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    sget-object v6, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const-string v7, "currentEditorForAccount"

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Group editor view not found"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showErrorToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private startEditMember()V
    .locals 9

    const/16 v8, 0xf

    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    if-ne v1, v8, :cond_1

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "EditMode"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "GroupInfo"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, "ModifiedIds"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "ExceptedAccounts"

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getExceptedAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "AutoAdd"

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v7, v1}, Lcom/android/contacts/group/GroupEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const-string v1, "EditMode"

    const/16 v2, 0xe

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsAutoAdd:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private startSelectAccount()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.action.PICK_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SelectedAccounts"

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateAccountsView()V
    .locals 8

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountView:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0188

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    const v6, 0x7f0a021f

    invoke-virtual {p0, v6}, Lcom/android/contacts/group/GroupEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    if-lez v2, :cond_1

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    iget-object v6, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMember()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAddMemberView:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0194

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRingtoneTitle()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRingToneView:Landroid/widget/LinearLayout;

    const v1, 0x7f0d018f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v1, :cond_0

    const v1, 0x7f0a0222

    invoke-virtual {p0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "GroupEditorFragment"

    const-string v1, "ringtone\'s URI doesn\'t resolve to a Ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doRevertAction()V
    .locals 1

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;Lcom/sec/android/app/contacts/group/GroupInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iput p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->AddAllGoogleAccountsAndCreateGroup()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Action String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickedUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickedUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "ModifiedIds"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateMember()V

    goto :goto_0

    :pswitch_3
    const-string v0, "SelectedAccounts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->updateAccountsView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->setHasOptionsMenu(Z)V

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0d00cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDefaultChosen()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->save(IZ)Z

    return-void
.end method

.method public onGotoMyfilesChosen()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.myfiles"

    const-string v2, "com.sec.android.app.myfiles.fileselector.SingleSelectorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FOLDERPATH"

    const-string v2, "/sdcard/Sounds"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CONTENT_TYPE"

    const-string v2, "audio/*;"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MAX_FILE_SIZE_IN_KB"

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d0262
        :pswitch_0
    .end packed-switch
.end method

.method public onPhoneRingtoneChosen()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/group/GroupEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public onRingtoneSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onSaveCompleted(ZILandroid/net/Uri;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, -0x1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveCompleted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->dismissProgress()V

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported save mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    if-nez p3, :cond_3

    move-object v0, v1

    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const-string v0, "content://contacts/groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    :goto_2
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0, v8, v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "GroupInfo"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v1, v7

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mode"

    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "originalMemberIds"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "modifinedMemberIds"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectedAccounts"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "selectedGroup"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "customRingtone"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSystemGroup"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSystemGroup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "systemGroupId"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSystemGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalGroupInfo"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public save(IZ)Z
    .locals 10

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    const v2, 0x7f0a022b

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->showErrorToast(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isTitleDuplicated()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    const v2, 0x7f0a022c

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->showErrorToast(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_3
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    const v5, 0x7f0a022e

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mProgress:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v4

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSelectedAccounts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    move v1, v9

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v8, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;-><init>(Landroid/app/Activity;)V

    new-array v2, v6, [Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalMemberIds:Ljava/util/ArrayList;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mModifiedMemberIds:Ljava/util/ArrayList;

    aput-object v1, v2, v9

    invoke-virtual {v8, v2}, Lcom/android/contacts/group/GroupEditorFragment$CreateGroupUpdateIntentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent action type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    return-void
.end method
