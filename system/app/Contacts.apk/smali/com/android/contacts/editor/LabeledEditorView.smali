.class public abstract Lcom/android/contacts/editor/LabeledEditorView;
.super Landroid/widget/LinearLayout;
.source "LabeledEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
    }
.end annotation


# static fields
.field public static final CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;


# instance fields
.field private mDelete:Landroid/widget/ImageView;

.field private mDeleteContainer:Landroid/view/View;

.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mIsAttachedToWindow:Z

.field private mIsDeletable:Z

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mLabel:Landroid/widget/Spinner;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field protected mMinLineItemHeight:I

.field private mReadOnly:Z

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mType:Lcom/android/contacts/model/AccountType$EditType;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private mWasEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    sput-object v0, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/LabeledEditorView$1;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/LabeledEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/editor/LabeledEditorView;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    return-object v0
.end method

.method private createCustomDialog()Landroid/app/Dialog;
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0019

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setId(I)V

    const/16 v3, 0x2001

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v3, Lcom/android/contacts/editor/LabeledEditorView$3;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$3;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a004f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    new-instance v4, Lcom/android/contacts/editor/LabeledEditorView$4;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$4;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/contacts/editor/LabeledEditorView$5;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/LabeledEditorView$5;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/contacts/editor/LabeledEditorView$6;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/LabeledEditorView$6;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v2
.end method

.method private getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View must be hosted in an Activity that implements DialogManager.DialogShowingViewActivity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;

    invoke-interface {v0}, Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mMinLineItemHeight:I

    return-void
.end method

.method private rebuildLabel()V
    .locals 3

    new-instance v0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;-><init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    sget-object v2, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setupDeleteButton()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupLabelButton(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public createDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bundle must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v1, "dialog_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialogId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public deleteEditor()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method protected getEntry()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method protected getKind()Lcom/android/contacts/model/DataKind;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method protected getType()Lcom/android/contacts/model/AccountType$EditType;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    return-object v0
.end method

.method public getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    return-object v0
.end method

.method protected isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsAttachedToWindow:Z

    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEmpty()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mWasEmpty:Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0d016d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0d0168

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    const v0, 0x7f0d0173

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/LabeledEditorView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/LabeledEditorView$2;-><init>(Lcom/android/contacts/editor/LabeledEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLabelRebuilt()V
    .locals 0

    return-void
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    :cond_0
    return-void
.end method

.method protected onTypeSelectionChange(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEditTypeAdapter:Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->hasCustomSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    iget-object v1, v1, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, v0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->showDialog(I)V

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    iget v3, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0
.end method

.method protected rebuildValues()V
    .locals 6

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    return-void
.end method

.method protected abstract requestFocusForFirstEditField()V
.end method

.method public setDeletable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->setupDeleteButton()V

    return-void
.end method

.method public setDeleteButtonVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mIsDeletable:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDelete:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iput-boolean p4, p0, Lcom/android/contacts/editor/LabeledEditorView;->mReadOnly:Z

    iput-object p5, p0, Lcom/android/contacts/editor/LabeledEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v2, -0x1

    invoke-virtual {p5, p3, p1, p2, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/LabeledEditorView;->setId(I)V

    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/LabeledEditorView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/LabeledEditorView;->setupLabelButton(Z)V

    iget-object v2, p0, Lcom/android/contacts/editor/LabeledEditorView;->mLabel:Landroid/widget/Spinner;

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/AccountType$EditType;

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V

    goto :goto_0
.end method

.method showDialog(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "dialog_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getDialogManager()Lcom/android/contacts/util/DialogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/util/DialogManager;->showDialogInView(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
