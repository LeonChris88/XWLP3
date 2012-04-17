.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupExpansionView(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f020167

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f020166

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    const v0, 0x7f0d00cf

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const v0, 0x7f0d0169

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    const v0, 0x7f0d01ca

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move-object v3, v2

    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 28

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v0, v5

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    aget-object v11, v5, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v10

    new-array v0, v10, [Landroid/widget/EditText;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v10, :cond_17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountType$EditField;

    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Landroid/text/InputFilter$LengthFilter;

    const/16 v27, 0x3e8

    invoke-direct/range {v26 .. v27}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v24

    if-eqz v24, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v24

    if-eqz v24, :cond_2

    const-string v24, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v25

    const-string v26, "account_type"

    invoke-virtual/range {v25 .. v26}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "#displayName"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v20

    :cond_1
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v4, v0, [Landroid/text/InputFilter;

    const/16 v24, 0x0

    new-instance v25, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v25, v4, v24

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType$EditField;->isMultiLine()Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, -0x2

    :goto_3
    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v24, v0

    if-eqz v24, :cond_b

    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinLines(I)V

    :goto_4
    const-string v8, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v24, "ar"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "he"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "iw"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    :cond_3
    const/16 v24, 0x35

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v24, v0

    aput-object v12, v24, v15

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setId(I)V

    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setHint(I)V

    :cond_4
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    sget-object v24, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, "persist.sys.country"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v24, "ro.csc.sales_code"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v17, 0x1

    const-string v24, "TNZ"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "VNZ"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "VNX"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "NZC"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "PH"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "NO"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string v24, "SE"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    :cond_5
    const/16 v17, 0x0

    :cond_6
    const/16 v24, 0x3

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const-string v24, "iw"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    new-instance v24, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_d

    if-nez p4, :cond_d

    const/16 v24, 0x1

    :goto_6
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const/4 v13, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/16 v24, 0x0

    :goto_7
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v20

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v20

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v24, v0

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_4

    :cond_c
    const/16 v24, 0x30

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_5

    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_6

    :cond_e
    const/16 v24, 0x8

    goto :goto_7

    :cond_f
    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    const/4 v13, 0x1

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    const/16 v24, 0x8

    :goto_9
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_8

    :cond_10
    const/16 v24, 0x0

    goto :goto_9

    :cond_11
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_13

    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    if-eqz v7, :cond_14

    const/16 v23, 0x1

    :goto_b
    if-eqz v23, :cond_15

    const/16 v24, 0x8

    :goto_c
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez v13, :cond_12

    if-eqz v7, :cond_16

    :cond_12
    const/4 v13, 0x1

    :goto_d
    goto/16 :goto_8

    :cond_13
    const/4 v7, 0x0

    goto :goto_a

    :cond_14
    const/16 v23, 0x0

    goto :goto_b

    :cond_15
    const/16 v24, 0x0

    goto :goto_c

    :cond_16
    const/4 v13, 0x0

    goto :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v13, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    if-nez p4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_18

    const/16 v24, 0x1

    :goto_e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_18
    const/16 v24, 0x0

    goto :goto_e
.end method
