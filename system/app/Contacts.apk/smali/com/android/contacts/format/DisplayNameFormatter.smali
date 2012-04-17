.class public final Lcom/android/contacts/format/DisplayNameFormatter;
.super Ljava/lang/Object;
.source "DisplayNameFormatter.java"


# instance fields
.field private final mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mNameBuffer:Landroid/database/CharArrayBuffer;

.field private final mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

.field private mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

.field private mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/contacts/format/PrefixHighlighter;)V
    .locals 2

    const/16 v1, 0x80

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    return-void
.end method


# virtual methods
.method public getAlternateNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public getDisplayName(IZ[C)Ljava/lang/CharSequence;
    .locals 5

    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlightingFactory:Lcom/android/contacts/widget/TextWithHighlightingFactory;

    invoke-interface {v2}, Lcom/android/contacts/widget/TextWithHighlightingFactory;->createTextWithHighlighting()Lcom/android/contacts/widget/TextWithHighlighting;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    iget-object v3, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v4, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mAlternateNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {v2, v3, v4}, Lcom/android/contacts/widget/TextWithHighlighting;->setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V

    iget-object v1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mTextWithHighlighting:Lcom/android/contacts/widget/TextWithHighlighting;

    :goto_1
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {v2, v1, p3}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-static {v2}, Lcom/android/contacts/format/FormatUtils;->charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getNameBuffer()Landroid/database/CharArrayBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mNameBuffer:Landroid/database/CharArrayBuffer;

    return-object v0
.end method

.method public setDisplayName(Landroid/widget/TextView;IZ[C)V
    .locals 1

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/contacts/format/DisplayNameFormatter;->getDisplayName(IZ[C)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/format/DisplayNameFormatter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-void
.end method
