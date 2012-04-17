.class Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

.field private mBackgroundColor:I

.field private mColorWaitInput:I

.field private mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

.field private mCopyBuffer:Landroid/text/SpannableStringBuilder;

.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mEditFlag:Z

.field private mKeepNonLineSpan:Z

.field private mMode:I

.field private mSizeWaitInput:I

.field private mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field private mTextIsFinishedFlag:Z

.field private mWaitInputFlag:Z

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 2

    const v1, 0xffffff

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, p1, v1, p0, p3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    return-void
.end method

.method static synthetic access$200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEditMode(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->cutToClipBoard()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectStartPos()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelectEndPos()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->pasteFromClipboard()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->selectAll()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertHorizontalLine()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageFromResId(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->startEdit()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setInternalSelection(II)V

    return-void
.end method

.method private addMarquee(I)V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- addMarquee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private addSwing()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    return-void
.end method

.method private addTelop()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    return-void
.end method

.method private changeAlign(Landroid/text/Layout$Alignment;)V
    .locals 1

    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setLineStyledTextSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private changeColorSelectedText(I)V
    .locals 3

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeColor: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeSizeSelectedText(I)V
    .locals 3

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "---changeSize: Size of the span is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearStyles()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClearStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->clearStyles(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$600(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshZeoWidthChar()V

    return-void
.end method

.method private clearStyles(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "EditStyledText"

    const-string v2, "--- onClearStyles"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    instance-of v2, p1, Landroid/text/Editable;

    if-eqz v2, :cond_4

    check-cast p1, Landroid/text/Editable;

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    instance-of v4, v3, Landroid/text/style/ParagraphStyle;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/text/style/QuoteSpan;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_3

    instance-of v4, v3, Landroid/text/style/UnderlineSpan;

    if-nez v4, :cond_3

    :cond_0
    instance-of v4, v3, Landroid/text/style/ImageSpan;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v4, :cond_2

    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const-string v6, ""

    invoke-interface {p1, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private copyToClipBoard()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    iput-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->dumpSpannableString(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private cutToClipBoard()V
    .locals 4

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->copyToClipBoard()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectionEnd()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method private dumpSpannableString(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/text/Spannable;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-string v2, "EditStyledText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- dumpSpannableString, txt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- dumpSpannableString, class:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private endEdit()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- handleCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    const v0, 0xffffff

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unblockSoftKey()V

    return-void
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .locals 4

    move v0, p2

    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineEnd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .locals 4

    move v0, p2

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "EditStyledText.EditorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- findLineStart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fixSelectionAndDoNextAction()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_1

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- cancel handle complete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    :cond_2
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext(I)Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method private handleSelectAll()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    goto :goto_0
.end method

.method private insertHorizontalLine()V
    .locals 6

    const-string v2, "EditStyledText.EditorManager"

    const-string v3, "--- onInsertHorizontalLine:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    const-string v3, "\n"

    invoke-interface {v2, v0, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move v0, v1

    :cond_0
    new-instance v2, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v3, -0x100

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    const-string v3, "\n"

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v2, v3, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    return-void
.end method

.method private insertImageFromResId(I)V
    .locals 3

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$500(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    return-void
.end method

.method private insertImageFromUri(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    return-void
.end method

.method private insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/style/DynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\ufffc"

    invoke-interface {v0, p2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x21

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_0
.end method

.method private isClipBoardChanged(Ljava/lang/CharSequence;)Z
    .locals 7

    const/4 v3, 0x1

    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- isClipBoardChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, "EditStyledText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- clipBoard:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTextSelected()Z
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWaitingNextAction()Z
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- waitingNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->waitSelection()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resumeSelection()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pasteFromClipboard()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v4, v3, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isClipBoardChanged(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "EditStyledText"

    const-string v2, "--- handlePaste: startPasteImage"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v4, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v0, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v6, :cond_1

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    const/high16 v6, -0x100

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;-><init>(IILandroid/text/Spannable;)V

    add-int/2addr v5, v3

    invoke-direct {p0, v1, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v6, v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-static {v8}, Lcom/android/ex/editstyledtext/EditStyledText;->access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I

    move-result v8

    invoke-direct {v6, v7, v1, v8}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    add-int v1, v3, v5

    invoke-direct {p0, v6, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/DynamicDrawableSpan;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/DynamicDrawableSpan;

    invoke-virtual {v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/DynamicDrawableSpan;

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-nez v5, :cond_0

    instance-of v5, v4, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$RescalableImageSpan;

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v6, ""

    invoke-virtual {v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private resetEdit()V
    .locals 3

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->endEdit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    return-void
.end method

.method private resumeSelection()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- resumeSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method private selectAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return-void
.end method

.method private setEditMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    return-void
.end method

.method private setInternalSelection(II)V
    .locals 0

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iput p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    return-void
.end method

.method private setLineStyledTextSpan(Ljava/lang/Object;)V
    .locals 7

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v1

    if-ne v4, v1, :cond_0

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    const-string v6, "\n"

    invoke-interface {v5, v1, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v4, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method private setSelectEndPos()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setEndPos(I)V

    goto :goto_0
.end method

.method private setSelectStartPos()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setSelectStartPos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return-void
.end method

.method private setSelectState(I)V
    .locals 0

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return-void
.end method

.method private setSelection()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- onSelect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    iput v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0

    :cond_2
    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStyledTextSpan(Ljava/lang/Object;II)V
    .locals 5

    const-string v2, "EditStyledText.EditorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- setStyledTextSpan:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x21

    invoke-interface {v2, p1, v1, v0, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private startEdit()V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey()V

    return-void
.end method

.method private unsetSelect()V
    .locals 3

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- offSelect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$700(Landroid/view/View;Landroid/text/Spannable;)V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return-void
.end method

.method private waitSelection()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- waitSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->access$800(Landroid/view/View;Landroid/text/Spannable;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public blockSoftKey()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- blockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->hideSoftKey()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method public canPaste()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCopyBuffer:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->removeImageChar(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return v0
.end method

.method public getColorWaitInput()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    return v0
.end method

.method public getEditMode()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public getSelectState()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurStart:I

    return v0
.end method

.method public getSizeWaitInput()I
    .locals 1

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    return v0
.end method

.method public hideSoftKey()V
    .locals 4

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- hidesoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public isEditting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/QuoteSpan;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/QuoteSpan;

    array-length v0, v0

    if-gtz v0, :cond_0

    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v1, v3, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/CharacterStyle;

    array-length v0, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    const v2, 0xffffff

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isWaitInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mWaitInputFlag:Z

    return v0
.end method

.method public onAction(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(IZ)V

    return-void
.end method

.method public onAction(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    return-void
.end method

.method public onClearStyles()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onAction(I)V

    return-void
.end method

.method public onCursorMoved()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_1
    return-void
.end method

.method public onFixSelectedItem()V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onFixSelectedItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->fixSelectionAndDoNextAction()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    return-void
.end method

.method public onRefreshStyles()V
    .locals 8

    const/4 v3, 0x0

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onRefreshStyles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getWidth()I

    move-result v5

    const-class v0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    invoke-interface {v4, v3, v2, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    array-length v6, v0

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    invoke-virtual {v7, v5}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;->resetWidth(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-class v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    invoke-interface {v4, v3, v2, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    iget-object v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v7}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->resetColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_2
    return-void
.end method

.method public onRefreshZeoWidthChar()V
    .locals 4

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2060

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartSelect(Z)V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetSelect()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mActions:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    goto :goto_0
.end method

.method public onStartSelectAll(Z)V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- onClickSelectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->handleSelectAll()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText;->access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V

    :cond_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeAlign(Landroid/text/Layout$Alignment;)V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mBackgroundColor:I

    return-void
.end method

.method public setEndPos(I)V
    .locals 3

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setSelectedEndPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setSelection()V

    return-void
.end method

.method public setItemColor(IZ)V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    const v0, 0xffffff

    if-eq p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeColorSelectedText(I)V

    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0
.end method

.method public setItemSize(IZ)V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- setItemSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitingNextAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSizeWaitInput:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->changeSizeSelectedText(I)V

    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    goto :goto_0
.end method

.method public setMarquee(I)V
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addMarquee(I)V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    :cond_1
    return-void
.end method

.method public setSwing()V
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addSwing()V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    :cond_1
    return-void
.end method

.method public setTelop()V
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addTelop()V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->resetEdit()V

    :cond_1
    return-void
.end method

.method public setTextComposingMask(II)V
    .locals 8

    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- setTextComposingMask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    const v6, 0xffffff

    if-eq v5, v6, :cond_3

    iget v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mColorWaitInput:I

    :goto_0
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getBackgroundColor()I

    move-result v0

    const-string v5, "EditStyledText"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- fg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",bg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_2

    const/high16 v5, -0x8000

    const/high16 v6, -0x100

    or-int/2addr v6, v0

    xor-int/lit8 v6, v6, -0x1

    or-int v2, v5, v6

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    if-eq v5, v2, :cond_1

    :cond_0
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v5, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    :cond_1
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    const/16 v7, 0x21

    invoke-interface {v5, v6, v4, v3, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v5, v4}, Lcom/android/ex/editstyledtext/EditStyledText;->getForegroundColor(I)I

    move-result v1

    goto/16 :goto_0
.end method

.method public showSoftKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    return-void
.end method

.method public showSoftKey(II)V
    .locals 4

    const-string v1, "EditStyledText.EditorManager"

    const-string v2, "--- showsoftkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewStart:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v1, Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;->mNewEnd:I

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSkr:Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public unblockSoftKey()V
    .locals 2

    const-string v0, "EditStyledText.EditorManager"

    const-string v1, "--- unblockSoftKey:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return-void
.end method

.method public unsetTextComposingMask()V
    .locals 2

    const-string v0, "EditStyledText"

    const-string v1, "--- unsetTextComposingMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mComposingTextMask:Landroid/text/style/BackgroundColorSpan;

    :cond_0
    return-void
.end method

.method public updateSpanNextToCursor(Landroid/text/Editable;III)V
    .locals 11

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanNext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v3, p2, p4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_0

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    :cond_0
    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_1

    instance-of v0, v6, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v0

    :goto_1
    if-ge v0, v7, :cond_3

    if-le p3, p4, :cond_3

    invoke-interface {p1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-le v7, v1, :cond_2

    const/16 v0, 0x21

    invoke-interface {p1, v6, v1, v8, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    instance-of v0, v6, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_2

    invoke-interface {p1, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v3, :cond_2

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v6, "\n"

    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText;->setSelection(I)V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public updateSpanPreviousFromCursor(Landroid/text/Editable;III)V
    .locals 11

    const-string v0, "EditStyledText.EditorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpanPrevious:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v4, p2, p4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-class v1, Ljava/lang/Object;

    invoke-interface {p1, v0, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v7, v5, v3

    instance-of v0, v7, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_0

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_4

    :cond_0
    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const-string v0, "EditStyledText.EditorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spantype:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;

    if-nez v0, :cond_1

    instance-of v0, v7, Landroid/text/style/AlignmentSpan;

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    const-string v1, "EditStyledText.EditorManager"

    const-string v9, "updateSpanPrevious: extend span"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x21

    invoke-interface {p1, v7, v8, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mKeepNonLineSpan:Z

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_4
    instance-of v0, v7, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$HorizontalLineSpan;

    if-eqz v0, :cond_2

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-le p3, p4, :cond_5

    const-string v8, ""

    invoke-interface {p1, v0, v1, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-interface {p1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_1
.end method
