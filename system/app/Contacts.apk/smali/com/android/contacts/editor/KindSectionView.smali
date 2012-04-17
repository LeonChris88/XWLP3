.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# instance fields
.field private mAddContainer:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mReadOnly:Z

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v2, v2, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/android/contacts/editor/Editor;

    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    invoke-interface {v0, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v7

    :catch_0
    move-exception v6

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate editor with layout resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v3, v3, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto :goto_0
.end method

.method private isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private updateSectionVisible()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v2, v2, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    goto :goto_0
.end method

.method public getEditorCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lcom/android/contacts/model/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/Editor;

    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0

    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0d01a7

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const v0, 0x7f0d016c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequest(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    :cond_1
    return-void
.end method

.method public rebuildFromState()V
    .locals 5

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeLabelSection()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/Editor;

    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setId(I)V

    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v0, :cond_2

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d0166

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateAddFooterVisible()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
