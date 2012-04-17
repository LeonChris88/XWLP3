.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
.implements Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;,
        Lcom/android/contacts/editor/ContactEditorFragment$Status;,
        Lcom/android/contacts/editor/ContactEditorFragment$SaveMode;
    }
.end annotation


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

.field private mAccountIntent:Landroid/content/Intent;

.field private mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mConfirmed:Z

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCrntPos:I

.field private mCurrentPhotoFile:Ljava/io/File;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mInsertMedia:Z

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsUserProfile:Z

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNewLocalProfile:Z

.field private mOldCustomRingtone:Ljava/lang/String;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoPickSize:I

.field private mRawContactIdRequestingPhoto:J

.field private mRawContactIdRequestingPhotoAfterLoad:J

.field private mRequestFocus:Z

.field private mRingtoneUri:Landroid/net/Uri;

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStatus:I

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iput-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$6;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$7;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$2900()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/model/EntityDeltaList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_set"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d0170

    invoke-virtual {p2, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0d016e

    invoke-virtual {p2, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/EntityDelta;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindEditors()V
    .locals 14

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->removeAllTab()V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v7

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v7, :cond_e

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_1
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "data_set"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v9

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v2

    if-nez v2, :cond_9

    const v2, 0x7f0400ac

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-object v3, v2

    check-cast v3, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    :goto_2
    const-string v2, "android.intent.action.INSERT"

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    if-ne v7, v2, :cond_b

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x1

    if-le v2, v12, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    :goto_3
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v2, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mContent.getChildCount() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v12, 0x1

    if-le v2, v12, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v2, v12, v13}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->onAccountAdded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    :goto_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomRingtone:Ljava/lang/String;

    const/4 v2, 0x1

    if-le v7, v2, :cond_3

    instance-of v2, v3, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRintoneVisibility(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v3, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRintoneVisibility(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupVisibility(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRelationVisibility(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v12

    invoke-virtual {v3, v1, v9, v2, v12}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    const/4 v12, 0x0

    invoke-direct {v2, p0, v3, v9, v12}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;ZLcom/android/contacts/editor/ContactEditorFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "photo_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "photo_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    :cond_5
    instance-of v1, v3, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v1, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/contacts/editor/RawContactEditorView;

    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v3

    iget-boolean v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    if-eqz v9, :cond_6

    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocus()Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    :cond_6
    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v2, v10, v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V

    :cond_7
    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/contacts/editor/RawContactEditorView;->getRingtoneEditor()Lcom/sec/android/app/contacts/editor/RingtoneEditorView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setRingtone(Ljava/lang/String;)V

    :cond_8
    new-instance v2, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_9
    const v2, 0x7f0400ab

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v3, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/RawContactEditorView;

    move-object v3, v2

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_3

    :cond_b
    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v12, "custom_ringtone"

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_f

    if-ne v4, v7, :cond_f

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactEditorActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->setSaveBtnVisibility(I)V

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_11
    return-void

    :cond_12
    const/4 v0, 0x1

    if-ne v7, v0, :cond_10

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;->tabVisibity(Z)V

    goto :goto_5
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    const-string v5, "vnd.sec.contact.phone"

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v5, "data_set"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    new-instance v1, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-boolean v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 6

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz p1, :cond_2

    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    if-nez p3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "vnd.sec.contact.sim"

    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v3, p2, v0, v4}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)Z

    :goto_1
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "vnd.sec.contact.sim"

    iget-object v4, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    :cond_0
    :goto_2
    const-string v3, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->setProfileQueryUri()V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    :goto_3
    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void

    :cond_2
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v3, "data_set"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v3, p2, v0, v4}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v0, p4, p2}, Lcom/android/contacts/model/EntityModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1

    :cond_5
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private bindGroupMetaData()V
    .locals 4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createContact()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private createContact(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 2

    const v0, 0x7f0d0170

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private doRevertAction()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    :cond_0
    return-void
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v6, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    if-le v2, v5, :cond_0

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private hasValidState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactWritable()Z
    .locals 8

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7, v3}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isEditingUserProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private loadPhotoPickSize()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "external activity called in rebind situation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v3, p3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-direct {p0, p3, v1, p1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0
.end method

.method private revert()Z
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method private saveDefaultAccountIfNecessary()V
    .locals 8

    const-string v6, "android.intent.action.INSERT"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v6, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectAccountAndCreateContact()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v3, "vnd.sec.contact.phone"

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const-string v1, "insert_media"

    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v2}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "The contact that requested the photo is no longer present."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateRingtoneData(Landroid/net/Uri;)V
    .locals 4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setRingtone(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    return-void
.end method

.method public changeView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCrntPos:I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected doCropPhoto(Ljava/io/File;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "Cannot crop image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a004d

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDeltaList;->setJoinWithRawContacts([J)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public doRevertActionMenu()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    return v0
.end method

.method public doSaveAction()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    return-void
.end method

.method protected getContactId()J
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v2, "contact_id"

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getPhotoPickIntent()Landroid/content/Intent;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    iget v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoPickSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "set_contact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleRingtonePicked(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->updateRingtoneData(Landroid/net/Uri;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "addToDefaultDirectory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "ringtone_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "ringtone_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRingtoneUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "postal"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v2, "postal"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mInsertMedia:Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    if-nez v2, :cond_7

    const-string v5, "android.intent.action.EDIT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v3, v4, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.INSERT"

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_3

    move-object v0, v4

    :goto_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_4

    move-object v1, v4

    :goto_3
    if-eqz v0, :cond_5

    new-instance v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_1

    :cond_6
    const-string v3, "saveCompleted"

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Action String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_1

    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    :pswitch_2
    if-ne p2, v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    :pswitch_3
    if-eq p2, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountIntent:Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_4
    if-ne p2, v2, :cond_1

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_5
    if-ne p2, v2, :cond_1

    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "vnd.sec.contact.sim"

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v4, "account_type"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v0, :cond_0

    const v3, 0x7f0d016a

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v5, v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAccountAddedListener:Lcom/android/contacts/editor/ContactEditorFragment$OnAccountAddedListener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->loadPhotoPickSize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    new-instance v1, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v1}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mConfirmed:Z

    return-void

    :cond_1
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v1, "photorequester"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    const-string v1, "viewidgenerator"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    :cond_2
    const-string v1, "contactidforjoin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    const-string v1, "contactwritableforjoin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-string v1, "showJoinSuggestions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const-string v1, "newLocalProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    const-string v1, "isUserProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f04002f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    return-object v0
.end method

.method public onDefaultChosen()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    return-void
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

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

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "rawContactIds"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "join"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onPhoneRingtoneChosen()V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onRingtoneSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveCompleted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_3

    if-eq p2, v7, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v2, v6

    move-object v1, p4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>CONTACT_ADDED : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " </GATE-M>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005a

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    :goto_2
    const-string v0, "contacts"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contacts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    const-string v3, "content://contacts/people"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_3
    move-object v3, v0

    :cond_4
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    :pswitch_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-ne p2, v7, :cond_7

    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    :cond_7
    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {p0, v0, p4, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v8, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    :pswitch_2
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No listener registered, can not call onSplitFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "contactwritableforjoin"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "showJoinSuggestions"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "newLocalProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    :cond_0
    return-void
.end method

.method public save(I)Z
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v8, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    new-array v2, v1, [B

    if-eqz v4, :cond_3

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data2"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v5, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getByteArrayText(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    if-eqz v4, :cond_3

    array-length v0, v0

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02b5

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a005a

    invoke-static {v0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_5
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mOldCustomRingtone:Ljava/lang/String;

    if-eq v0, v2, :cond_9

    move v0, v8

    :goto_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    move v0, v8

    :goto_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    move v1, v8

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->saveDefaultAccountIfNecessary()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v2, "saveMode"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCustomRingtone:Ljava/lang/String;

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v1, v8

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_2

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 14

    const/4 v13, 0x1

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v10, "Ignoring background change. This will have to be rebased later"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v13, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    invoke-virtual {v3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v9, "account_type"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "data_set"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v9, :cond_0

    const-string v9, "account_name"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v10, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v10, v5, v8, v1}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "data_set"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "vnd.sec.contact.sim"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, v4, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method
