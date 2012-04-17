.class public Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.super Landroid/app/Activity;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;,
        Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sMimeTypePriorityList:[Ljava/lang/String;

.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
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
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mContactId:J

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private final mDoneButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditableAccountType:Lcom/android/contacts/model/AccountType;

.field private mEditorContainerView:Landroid/view/ViewGroup;

.field private mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsReadyOnly:Z

.field private mMimetype:Ljava/lang/String;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

.field private mReadOnlyWarningView:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/contacts/model/EntityDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sMimeTypePriorityList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$2;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$3;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadyOnly:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startPhotoQuery(JLandroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setDisplayName()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startExtraInfoQuery()V

    return-void
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sMimeTypePriorityList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setExtraInfoField(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$1700()V
    .locals 0

    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->bindEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startDisambiguationQuery(Ljava/lang/String;)V

    return-void
.end method

.method private bindEditor()V
    .locals 7

    const/16 v6, 0x8

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    if-nez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadyOnly:Z

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v5, 0x7f0a0172

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v4, 0x7f0d009c

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onLoadDataFinished()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/DataKind;

    iget-boolean v4, v2, Lcom/android/contacts/model/DataKind;->editable:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->inflateEditorView(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;)V

    goto :goto_0
.end method

.method private static dismissProgressDialog()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    sput-object v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0
.end method

.method private doSaveAction()V
    .locals 4

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Lcom/android/contacts/model/AccountTypeManager;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private inflateEditorView(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p1, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    instance-of v1, v6, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v6

    check-cast v0, Lcom/android/contacts/editor/Editor;

    invoke-interface {v0, v4}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    new-instance v5, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v5}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private onLoadDataFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private onSaveCompleted(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    goto :goto_0
.end method

.method private resetAsyncQueryHandler()V
    .locals 2

    new-instance v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    return-void
.end method

.method private setDisplayName()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setExtraInfoField(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f0d0096

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;Z)V
    .locals 8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startDisambiguationQuery(Ljava/lang/String;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v0, "limit"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    new-array v4, v11, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v7

    const-string v5, "display_name = ? and photo_id is null and _id <> ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v7

    iget-wide v9, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startExtraInfoQuery()V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$ExtraInfoQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPhotoQuery(JLandroid/net/Uri;Z)V
    .locals 8

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->resetAsyncQueryHandler()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mQueryHandler:Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/contacts/activities/ConfirmAddDetailActivity$PhotoQuery;->COLUMNS:[Ljava/lang/String;

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findEditableRawContact()V
    .locals 7

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v5, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v5

    if-eqz v5, :cond_2

    iput-object v4, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    iput-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->finish()V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "vnd.android.cursor.item/phone_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->setContentView(I)V

    const v2, 0x7f0d0093

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f0d0098

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mReadOnlyWarningView:Landroid/widget/TextView;

    const v2, 0x7f0d0097

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDetailsButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0d009c

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDoneButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0d009b

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0d0095

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDisplayNameView:Landroid/widget/TextView;

    const v2, 0x7f0d0087

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mPhotoView:Landroid/widget/ImageView;

    const v2, 0x7f0d0099

    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditorContainerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mContactUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v5}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->startContactQuery(Landroid/net/Uri;Z)V

    new-instance v2, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;

    invoke-direct {v2, p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;-><init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    new-array v3, v5, [Landroid/content/Intent;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    const-string v2, "email"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "vnd.android.cursor.item/email_v2"

    iput-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mMimetype:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error: No valid mimetype found in intent extras"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method public parseExtras()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEditableAccountType:Lcom/android/contacts/model/AccountType;

    iget-object v2, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-static {p0, v1, v2, v0}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setEntityDeltaList(Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mEntityDeltaList:Lcom/android/contacts/model/EntityDeltaList;

    return-void
.end method
