.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/detail/ViewOverlay;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
.implements Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContextMenuIds;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaLayer:Landroid/view/View;

.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeIsSet:Z

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mHasVideoCall:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAlphaValue:F

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mJoinEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNumPhoneNumbers:I

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticPhotoView:Landroid/widget/ImageView;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mTransitionAnimationRequested:Z

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mlistGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    iput v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private addMoreNetworks()V
    .locals 5

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)V

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$8;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->forMoreNetworks(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNetworks()V
    .locals 8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getInvitableAccountTypes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0a016c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v7, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-lez v3, :cond_3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->fromAccountType(Landroid/content/Context;Lcom/android/contacts/model/AccountType;)Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-lez v4, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_0
.end method

.method private addPhoneticName()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a016b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v3, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addRingtone(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$9;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    iput-object p1, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0221

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/ringtone"

    iput-object v2, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    const v0, 0x7f020184

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->checkWebExAvailable()Z

    move-result v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "data_set"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    iget-object v7, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_id"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "data1"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getGroupMetaData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mlistGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v9

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    const-string v8, "is_super_primary"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :goto_3
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNumPhoneNumbers:I

    const-string v2, "normalized_number"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "persist.sys.country"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const-string v7, "TNZ"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "VNZ"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "VNX"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "NZC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "PH"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "NO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "SE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/4 v2, 0x0

    :cond_8
    if-eqz v2, :cond_9

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v2, :cond_d

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    iget-object v6, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v3, :cond_e

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    iget-object v7, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :goto_6
    if-eqz v8, :cond_a

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    :cond_a
    iput-boolean v8, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v5, :cond_10

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mBlackList:Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isBlacklist:Z

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_11

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v2, :cond_12

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget v2, v4, Lcom/android/contacts/model/DataKind;->iconAltRes:I

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_6

    :cond_13
    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :cond_14
    :goto_7
    iput-boolean v8, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/contacts/util/DataStatus;

    if-eqz v11, :cond_5

    const-string v2, "vnd.android.cursor.item/im"

    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v9}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v9

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :goto_8
    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    iget-object v10, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v14, :cond_14

    const v2, 0x7f0201cf

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getWebExIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    goto :goto_8

    :cond_17
    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v2, :cond_18

    const/16 v2, 0xa

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_18
    const-string v5, "vnd.android.cursor.item/im"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/util/DataStatus;

    if-eqz v2, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V

    goto :goto_9

    :cond_1b
    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getNameRawContactId()J

    move-result-wide v2

    cmp-long v2, v2, v19

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    :goto_b
    if-nez v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1c
    const/4 v2, 0x0

    goto :goto_a

    :cond_1d
    const/4 v2, 0x0

    goto :goto_b

    :cond_1e
    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    const/16 v2, 0x3e8

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1f
    const-string v5, "vnd.android.cursor.item/website"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t parse website: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_20
    const-string v5, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v2, :cond_22

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "sip"

    iget-object v5, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_d

    :cond_22
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    goto :goto_d

    :cond_23
    const-string v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_24
    const-string v5, "vnd.android.cursor.item/relation"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-eqz v2, :cond_25

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "query"

    iget-object v4, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_25
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v3, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    iget-object v5, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    iput v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    iget-object v2, v4, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-eqz v2, :cond_26

    iget-object v2, v4, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v7}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x0

    :goto_e
    iput-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    :cond_26
    iget-object v2, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasVideoCall:Z

    if-eqz v2, :cond_2b

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->makeVideoCallEntry()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v13, :cond_2f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2f

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v13, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->accountIcon:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0a016c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    const v5, 0x7f020197

    iput v5, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    :goto_f
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtoneName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->addRingtone(Ljava/lang/String;)V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_10
    invoke-static {v5, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    move v4, v2

    :goto_11
    if-ge v4, v7, :cond_31

    if-eqz v4, :cond_2e

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_11

    :cond_2f
    const-string v3, "ContactDetailFragment"

    const-string v4, "Account icons are unavailable."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_30
    move-object v2, v3

    goto :goto_10

    :cond_31
    const-string v2, "mimetype"

    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a010b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v2, 0xa

    iput v2, v5, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v3, 0x0

    :cond_32
    invoke-static {v5, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v4, "mimetype"

    iput-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0a010b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0252

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v4, 0xa

    iput v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-static {v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x5

    const v5, 0x7f0201cb

    const-string v0, "vnd.android.cursor.item/email_v2"

    const-string v1, "mimetype"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/android/contacts/detail/ContactDetailFragment;->isProtocolValid(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "data1"

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    if-ne v1, v2, :cond_7

    const-string v0, "chat_capability"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    iput v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "data1"

    goto :goto_1

    :cond_3
    const-string v0, "data5"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_5
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_6
    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_7
    const-string v0, "data6"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "imto"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput v5, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private checkWebExAvailable()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-string v3, "com.cisco.webex.meetings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v3, "share"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SignInFlag"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ContactDetailFragment"

    const-string v2, "WebEx app is not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v5, "clipboard"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "text/plain"

    aput-object v6, v5, v3

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/content/ClipData;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-direct {v7, v0, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v1, v7}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader$Result;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V

    :cond_0
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v4, -0x1

    const-wide/16 v0, -0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    :cond_1
    return-wide v0

    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static isProtocolValid(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "data5"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private makeVideoCallEntry()V
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$5;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/ArrayList;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    invoke-static {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$502(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const v0, 0x7f0201cd

    iput v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->actionIcon:I

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method private setDefaultContactMethod(J)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mJoinEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRingtoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$10;

    invoke-direct {v1, p0, p3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/contacts/widget/TransitionAnimationView;->startAnimation(Landroid/view/View;Z)V

    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTransitionAnimationRequested:Z

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    invoke-static {v0, v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setPhoto(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_c

    :goto_5
    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {v0, p0, v5}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_5
.end method

.method public disableTouchInterceptor()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleKeyDown(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :pswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    if-ne v3, v4, :cond_3

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3, v0}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "FILE_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "ContactDetailFragment"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a016b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v1, 0x7f0a01bd

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f0a01be

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTouchInterceptLayer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d00b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDefaultChosen()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "setRingtone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "contactUri"

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "customRingtone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

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

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onItemChosen(IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing chosen :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "ContactDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nothing chosen in Email dialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onItemSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPhoneRingtoneChosen()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "huge_font"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mFontSizeIsSet:Z

    :cond_0
    return-void
.end method

.method public onRingtoneSelectorCancelled()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInitialAlphaValue:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public showEmptyState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method
