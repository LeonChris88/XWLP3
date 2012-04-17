.class public Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$1;,
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIsInitialized:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mIsInitialized:Z

    return v0
.end method

.method public onStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mIsInitialized:Z

    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterChanged()V

    :cond_1
    return-void
.end method

.method public setFilterType(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/contacts/list/ContactListFilterController$1;->$SwitchMap$com$sec$android$app$contacts$interaction$InteractionActionBarAdapter$TabState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/16 v1, -0xc

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
