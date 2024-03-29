.class public Lcom/sec/android/app/contacts/editor/RingtoneEditorView;
.super Landroid/widget/LinearLayout;
.source "RingtoneEditorView.java"


# instance fields
.field private kindTitle:Landroid/widget/TextView;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mRingtoneList:Landroid/widget/TextView;

.field private mRingtoneValue:Ljava/lang/String;

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateView()V
    .locals 5

    const v4, 0x7f0a0222

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    if-nez v2, :cond_0

    const v2, 0x7f0d01a9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->updateView()V

    return-void
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mKind:Lcom/android/contacts/model/DataKind;

    iput-object p3, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mState:Lcom/android/contacts/model/EntityDelta;

    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    iput-object p5, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->kindTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->kindTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    invoke-virtual {p5, p3, p1, p2, v0}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->setId(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->updateView()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/RingtoneEditorView;->mRingtoneValue:Ljava/lang/String;

    goto :goto_0
.end method
