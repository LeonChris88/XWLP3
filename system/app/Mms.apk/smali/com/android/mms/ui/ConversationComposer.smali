.class public Lcom/android/mms/ui/ConversationComposer;
.super Landroid/app/Activity;
.source "ConversationComposer.java"


# static fields
.field public static mThreadIdFromComposeMessageFragment:J


# instance fields
.field private mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mConversationList:Lcom/android/mms/ui/ConversationListFragment;

.field private mEmptyScreen:Landroid/view/View;

.field private mForceShowComposer:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mLeftScreen:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mOptionMenuCount:I

.field private mOptionSelectResult:Z

.field private mRightScreen:Landroid/view/View;

.field private mSplitBar:Landroid/widget/ImageButton;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private onComposerClose:Lcom/android/mms/ui/OnEventListener;

.field private onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

.field private onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$2;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$3;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    new-instance v0, Lcom/android/mms/ui/ConversationComposer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationComposer$4;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationComposer;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationComposer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationComposer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ConversationComposer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    return p1
.end method

.method private addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    invoke-virtual {v1, p1, p3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method

.method private calcSplitMode()I
    .locals 4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():unknown"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-ne v3, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private composerRequestsClosing()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "composerRequestsClosing()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    if-nez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->drawMessagePointer(J)V

    goto :goto_0
.end method

.method private static containsOwnBundle(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-class v0, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComposeMessageStatus()I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->enableSplitMode()V

    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getComposeMessageStatus(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->disableSplitMode()V

    goto :goto_0
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "move to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationComposer;->moveTaskToBack(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initSplitManager()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Mms/ConversationComposer"

    const-string v6, "initSplitManager()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f080032

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/mms/ui/ConversationComposer$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationComposer$1;-><init>(Lcom/android/mms/ui/ConversationComposer;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v3, "Mms/ConversationComposer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSplitManager width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/mms/ui/SplitManager;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitBar:Landroid/widget/ImageButton;

    invoke-direct {v3, v6, v7, v8, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/ConversationComposer;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    if-ne v2, v5, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v1, v4}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v3, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_2

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v3, :cond_2

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private static isIntentForApplication(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForApplication(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isItentFromSearch(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentFromSwitcher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isSentFailIntentFromNotibar(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIntentForComposer(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIntentForComposer(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-class v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method private static isIntentForList(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

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

.method private static isIntentFromSwitcher(Landroid/content/Intent;)Z
    .locals 2

    const/high16 v0, 0x10

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isItentFromSearch(Landroid/content/Intent;)Z
    .locals 3

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->getLauncherList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "Mms/ConversationComposer"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const-string v8, "Mms/ConversationComposer"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSentFailIntentFromNotibar(Landroid/content/Intent;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "thread_id"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v5, "isFailedNoti"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v4, :cond_0

    cmp-long v5, v1, v6

    if-lez v5, :cond_1

    const/high16 v5, 0x1000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    const/high16 v5, 0x400

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private refreshSplitManager(Z)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/ConversationComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    if-ne v2, v1, :cond_3

    if-nez p1, :cond_0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private removeComposer()V
    .locals 3

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ConversationComposer;->removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method private removeFragmentFromActivity(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1, v3}, Lcom/android/mms/ui/ConversationListFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iput-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    :cond_1
    return-void
.end method

.method private showEmptyScreen(Z)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public CreateConversationList()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f08002e

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "CreateConversationList() Created"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ShowSipOnComposeMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip()V

    :cond_0
    return-void
.end method

.method public getNextSplitMode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsSplitBarTouch:Z

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment fragment) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "========== onAttachFragment(Fragment is null) =========="

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/mms/ui/ConversationListFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerStateChanged:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->onComposerSipUp:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged(),newConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eq v2, v1, :cond_1

    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v2, :cond_0

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v2, "Mms/ConversationComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationComposer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public onConversationDeleteMode()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onConversationDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_0
    return-void
.end method

.method public onConversationDeleteStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, v9}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "Mms/ConversationComposer"

    const-string v8, "\tonCreate()"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const v5, 0x7f030009

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    const v5, 0x7f08002d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mLeftScreen:Landroid/view/View;

    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mEmptyScreen:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ConversationListOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f08002e

    new-instance v8, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v8, v9}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->containsOwnBundle(Landroid/os/Bundle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mForceShowComposer:Z

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "Mms/ConversationComposer"

    const-string v8, "ComposeMessageOn true"

    invoke-static {v5, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x7f080030

    new-instance v8, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v8, v3}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v9, v8}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v0, 0x1

    :cond_2
    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_3
    if-eqz v0, :cond_8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->setBundle(Landroid/os/Bundle;Z)V

    :cond_4
    if-eqz v2, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :cond_5
    invoke-direct {p0, v7}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z

    return-void

    :cond_6
    move v5, v7

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto :goto_1

    :cond_8
    invoke-direct {p0, v6}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_6

    const-string v4, "Mms/ConversationComposer"

    const-string v5, "onKeyUp():KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_4

    iget-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-nez v4, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v3, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eq v0, v2, :cond_8

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_7
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    if-eqz v3, :cond_a

    if-ne p1, v6, :cond_a

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mUseMoveTaskToBack:Z

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationComposer;->handleMoveTaskToBack()V

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    if-eqz v3, :cond_6

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationComposer;->mIsLandscape:Z

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_9
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    goto :goto_1

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "\tonNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForApplication(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForApplication(), just bring to front"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForList(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "isIntentForList(), show list"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ConversationListFragment;->onNewIntent(Landroid/content/Intent;)V

    :goto_1
    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationComposer;->mIsComposerOnly:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationComposer;->isIntentForComposer(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->getAnimationEnable()Z

    move-result v1

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    :goto_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_3
    :goto_3
    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v2, 0x7f08002e

    new-instance v3, Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ConversationListFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v3, v5}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_1

    :cond_5
    const v2, 0x7f080030

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v2, v5, v3}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeContextMenu()V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "Mms/ConversationComposer"

    const-string v3, "onPrepareOptionsMenu()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionSelectResult:Z

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mRightScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onPrepareComposerOptionsMenu(Landroid/view/Menu;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationListFragment;->onPrepareListOptionsMenu(Landroid/view/Menu;)Z

    :cond_4
    const-string v1, "Mms/ConversationComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu() mOptionMenuCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationComposer;->mOptionMenuCount:I

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer;->mMenu:Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->mDoNotRefreshDraftCache:Z

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SplitManager;->setAnimationEnable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setAnimationEnable(Z)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v1, "Mms/ConversationComposer"

    const-string v2, "\t\tonSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->closeOptionsMenu()V

    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationComposer;->mIsFinish:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "Mms/ConversationComposer"

    const-string v1, "\tonStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setRemoveComposer(Z)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onWindowFocusChanged(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public openThread(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f080030

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v2, p1}, Lcom/android/mms/ui/ComposeMessageFragment;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ConversationComposer;->addFragmentToActivity(ILcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/ui/ComposeMessageFragment;)V

    goto :goto_0
.end method

.method public requestDrawPointerOnConverationList(J)Z
    .locals 1

    sput-wide p1, Lcom/android/mms/ui/ConversationComposer;->mThreadIdFromComposeMessageFragment:J

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestDrawPointerOnConverationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocusOnComposer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0
.end method

.method public requsetFocusOnConversationList(J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ConversationListFragment;->requestFocusOnConversationList(J)Z

    move-result v0

    goto :goto_0
.end method

.method public setConversationSelectAll(Z)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversationSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->setSelectAll(Z)V

    goto :goto_0
.end method

.method public setMessageSelectAll(Z)V
    .locals 3

    const-string v0, "Mms/ConversationComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageSelectAll(),checked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectAll(Z)V

    goto :goto_0
.end method
